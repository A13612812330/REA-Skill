"""Read-only Slotbound repository and build checks; never load game code."""

import argparse
import hashlib
import json
import sys
from pathlib import Path


EXPECTED_EXE_SHA256 = "2db4b93b52cd6daec9014f6e8ee42f78d32f683a496af35a8b03d8b97f4fccb7"
REQUIRED_TOOLS = (
    "inspect_package.py", "extract_package.py", "unpack_content.py", "run_v2.py",
    "normalize_v2_locals.py", "check_one_lua.py", "verify_recovered.py",
    "audit_recovered.py", "export_constants.py", "read_lua_tables.py",
    "preview_assets.py", "build_catalogs.py",
)


def sha256(path):
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def inspect(project, exe=None):
    project = project.resolve()
    errors = []
    report = {
        "project": str(project),
        "mode": "read-only; stored reports only, not fresh compilation or gameplay",
        "errors": errors,
        "warnings": [],
    }
    if not project.is_dir():
        errors.append("Project directory does not exist")
        return report

    report["missing_tools"] = [
        name for name in REQUIRED_TOOLS if not (project / "tools" / name).is_file()
    ]
    if report["missing_tools"]:
        errors.append("Full repository tools are missing")

    reports = {}
    for name in ("delivery-summary", "recovered-source-quality", "recovered-comparison"):
        path = project / "analysis" / (name + ".json")
        try:
            reports[name] = json.loads(path.read_text(encoding="utf-8-sig"))
        except (OSError, ValueError) as error:
            errors.append(f"Cannot read {name}: {type(error).__name__}")

    sources = {
        path.relative_to(project / "recovered-source").as_posix()
        for path in (project / "recovered-source").rglob("*.lua") if path.is_file()
    }
    report["source_files_present"] = len(sources)
    quality = reports.get("recovered-source-quality")
    if isinstance(quality, list) and all(
        isinstance(item, dict) and isinstance(item.get("path"), str) for item in quality
    ):
        paths = [item["path"] for item in quality]
        report["stored_syntax_valid"] = sum(item.get("syntax_valid") is True for item in quality)
        report["stored_quality_entries"] = len(quality)
        if len(set(paths)) != len(paths) or set(paths) != sources or not sources:
            errors.append("Quality report paths do not match delivered source files")
        if report["stored_syntax_valid"] != len(quality):
            errors.append("Stored syntax report contains failures or missing results")
    elif "recovered-source-quality" in reports:
        errors.append("Quality report has an invalid schema")

    summary = reports.get("delivery-summary")
    if isinstance(summary, dict):
        report["stored_delivery_summary"] = summary
        for key in ("source_inputs_including_startup", "source_texts_generated",
                    "source_texts_syntax_valid"):
            if summary.get(key) != len(sources):
                errors.append(f"Summary count disagrees with source files: {key}")
    elif "delivery-summary" in reports:
        errors.append("Delivery summary has an invalid schema")

    comparison = reports.get("recovered-comparison")
    if isinstance(comparison, dict) and isinstance(comparison.get("results"), list):
        results = comparison["results"]
        if not all(isinstance(item, dict) for item in results):
            errors.append("Comparison results have an invalid schema")
        else:
            report["stored_comparison_failed_or_skipped"] = [
                item.get("module", "<unknown>") for item in results
                if item.get("equal") is not True
            ]
            report["warnings"].append(
                "Stored comparisons are partial; markers do not verify function semantics"
            )
    elif "recovered-comparison" in reports:
        errors.append("Comparison report has an invalid schema")

    if exe is None:
        report["warnings"].append("No EXE supplied: original build has not been checked")
    else:
        exe = exe.resolve()
        report["exe"] = str(exe)
        report["expected_exe_sha256"] = EXPECTED_EXE_SHA256
        try:
            actual = sha256(exe)
            report["exe_sha256"] = actual
            report["supported_build"] = actual == EXPECTED_EXE_SHA256
            if not report["supported_build"]:
                errors.append("Unsupported build: do not run the fixed extraction adapter")
        except OSError as error:
            errors.append(f"Cannot read EXE: {type(error).__name__}")
        report["runtime_dll_present"] = (exe.parent / "lua51.dll").is_file()
        if not report["runtime_dll_present"]:
            report["warnings"].append("lua51.dll is absent; native checks cannot be replayed")

    report["warnings"].append(
        "Dependency imports, source content integrity and full gameplay were not tested"
    )
    return report


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--project", required=True, type=Path)
    parser.add_argument("--exe", type=Path, help="Optional authorized Slotbound.exe")
    args = parser.parse_args()
    if hasattr(sys.stdout, "reconfigure"):
        sys.stdout.reconfigure(encoding="utf-8")
    try:
        report = inspect(args.project, args.exe)
    except OSError as error:
        report = {"errors": [f"Filesystem check failed: {type(error).__name__}"]}
    print(json.dumps(report, ensure_ascii=False, indent=2))
    return 1 if report["errors"] else 0


if __name__ == "__main__":
    raise SystemExit(main())
