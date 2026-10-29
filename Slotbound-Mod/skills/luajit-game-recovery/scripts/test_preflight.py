"""Exercise preflight decisions using disposable repositories and no runtime."""

import json
import tempfile
import unittest
from pathlib import Path

import preflight


class PreflightTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)
        (self.root / "tools").mkdir()
        for name in preflight.REQUIRED_TOOLS:
            (self.root / "tools" / name).touch()
        (self.root / "analysis").mkdir()
        (self.root / "recovered-source").mkdir()
        (self.root / "recovered-source" / "main.lua").write_text("return 1\n", encoding="utf-8")
        self.write_report("delivery-summary", {
            "source_inputs_including_startup": 1,
            "source_texts_generated": 1,
            "source_texts_syntax_valid": 1,
        })
        self.write_report("recovered-source-quality", [{"path": "main.lua", "syntax_valid": True}])
        self.write_report("recovered-comparison", {"results": []})

    def write_report(self, name, content):
        (self.root / "analysis" / (name + ".json")).write_text(
            json.dumps(content), encoding="utf-8"
        )

    def test_complete_fixture_is_read_only(self):
        before = {path: path.read_bytes() for path in self.root.rglob("*") if path.is_file()}
        report = preflight.inspect(self.root)
        self.assertEqual(report["errors"], [])
        self.assertEqual(report["source_files_present"], 1)
        self.assertNotIn("supported_build", report)
        after = {path: path.read_bytes() for path in self.root.rglob("*") if path.is_file()}
        self.assertEqual(before, after)

    def test_missing_project(self):
        self.assertTrue(preflight.inspect(self.root / "absent")["errors"])

    def test_missing_full_repository(self):
        empty = self.root / "empty"
        empty.mkdir()
        report = preflight.inspect(empty)
        self.assertEqual(len(report["missing_tools"]), len(preflight.REQUIRED_TOOLS))
        self.assertTrue(report["errors"])

    def test_quality_path_mismatch(self):
        self.write_report("recovered-source-quality", [{"path": "other.lua", "syntax_valid": True}])
        self.assertTrue(preflight.inspect(self.root)["errors"])

    def test_invalid_report_schema(self):
        self.write_report("recovered-source-quality", ["not a record"])
        self.assertTrue(preflight.inspect(self.root)["errors"])

    def test_corrupt_report(self):
        (self.root / "analysis" / "delivery-summary.json").write_text("{", encoding="utf-8")
        self.assertTrue(preflight.inspect(self.root)["errors"])

    def test_null_reports(self):
        for name in ("delivery-summary", "recovered-source-quality", "recovered-comparison"):
            with self.subTest(name=name):
                path = self.root / "analysis" / (name + ".json")
                original = path.read_bytes()
                self.write_report(name, None)
                self.assertTrue(preflight.inspect(self.root)["errors"])
                path.write_bytes(original)

    def test_duplicate_quality_paths(self):
        record = {"path": "main.lua", "syntax_valid": True}
        self.write_report("recovered-source-quality", [record, record])
        self.assertTrue(preflight.inspect(self.root)["errors"])

    def test_summary_count_mismatch(self):
        self.write_report("delivery-summary", {"source_texts_generated": 99})
        self.assertTrue(preflight.inspect(self.root)["errors"])

    def test_failed_syntax(self):
        self.write_report("recovered-source-quality", [{"path": "main.lua", "syntax_valid": False}])
        self.assertTrue(preflight.inspect(self.root)["errors"])

    def test_unsupported_exe(self):
        exe = self.root / "unknown.exe"
        exe.write_bytes(b"not a supported game build")
        report = preflight.inspect(self.root, exe)
        self.assertFalse(report["supported_build"])
        self.assertTrue(report["errors"])


if __name__ == "__main__":
    unittest.main()
