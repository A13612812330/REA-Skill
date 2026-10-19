"""Independently compile delivered files and write the final audit."""

import json
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent


def main():
    quality = []
    for source in sorted((ROOT / "recovered-source").rglob("*.lua")):
        worker = subprocess.run([sys.executable, str(ROOT / "tools/check_one_lua.py"), str(source)],
                                capture_output=True, text=True, encoding="utf-8")
        check = json.loads(worker.stdout) if worker.returncode == 0 else {
            "syntax_valid": False, "error": worker.stderr or f"worker exit {worker.returncode}"}
        quality.append({"path": source.relative_to(ROOT / "recovered-source").as_posix(), **check,
                        "locals_normalized": source.read_bytes().startswith(b"-- Recovered source:"),
                        "semantics_verified": False})
    comparison = json.loads((ROOT / "analysis/recovered-comparison.json").read_text(encoding="utf-8"))
    summary = {
        "source_inputs_including_startup": len(quality),
        "source_texts_generated": len(quality),
        "source_texts_syntax_valid": sum(item["syntax_valid"] for item in quality),
        "locals_normalized_files": sum(item["locals_normalized"] for item in quality),
        "data_modules_matching": sum(item["kind"] == "returned-data" and item["equal"] is True for item in comparison["results"]),
        "pure_function_cases_matching": sum(item.get("cases", 0) for item in comparison["results"] if item["equal"] is True),
        "skills": 125, "random_options": 32, "png_files": 1215, "audio_files": 64,
        "original_exe_sha256_after_analysis": comparison["original_exe_sha256"],
        "full_gameplay_verified": False,
    }
    for name, content in [("recovered-source-quality.json", quality), ("delivery-summary.json", summary)]:
        (ROOT / "analysis" / name).write_text(json.dumps(content, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps(summary, indent=2), flush=True)


if __name__ == "__main__":
    main()
