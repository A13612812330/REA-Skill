"""Record version differences without treating public claims as provenance."""

import hashlib
import json
import subprocess
import sys
from pathlib import Path

from verify_recovered import evaluate

ROOT = Path(__file__).resolve().parent.parent
REFERENCE = ROOT / "external-reference/SlotboundLua/contents"


def main():
    local = ROOT / "recovered-source"
    local_paths = {p.relative_to(local).as_posix() for p in local.rglob("*.lua")} - {"startup.lua"}
    references = sorted(REFERENCE.rglob("*.lua"))
    reference_paths = {p.relative_to(REFERENCE).as_posix() for p in references}
    checks = []
    for path in references:
        worker = subprocess.run([sys.executable, str(ROOT / "tools/check_one_lua.py"), str(path)],
                                capture_output=True, text=True, encoding="utf-8")
        result = json.loads(worker.stdout) if worker.returncode == 0 else {"syntax_valid": False, "error": worker.stderr}
        relative = path.relative_to(REFERENCE)
        checks.append({"path": relative.as_posix(), **result,
                       "same_text_as_local_recovery": (local / relative).exists()
                       and hashlib.sha256(path.read_bytes()).digest() == hashlib.sha256((local / relative).read_bytes()).digest()})
    skill = evaluate(REFERENCE, "src.data.skill")
    constants = evaluate(REFERENCE, "src.data.constants")
    local_constants = json.loads((ROOT / "data/constants.json").read_text(encoding="utf-8"))
    report = {
        "reference_files": len(references),
        "syntax_valid": sum(item["syntax_valid"] for item in checks),
        "local_game_script_count": len(local_paths),
        "local_only_paths": sorted(local_paths - reference_paths),
        "reference_only_paths": sorted(reference_paths - local_paths),
        "reference_skill_definitions": len(skill["definitions"]),
        "local_skill_definitions": 125,
        "constants_equal": constants == local_constants,
        "different_top_level_constant_keys": sorted(key for key in set(constants) | set(local_constants)
                                                   if constants.get(key) != local_constants.get(key)),
        "interpretation": "Different file sets and data; public reference is not a verified match or original developer source.",
        "files": checks,
    }
    (ROOT / "analysis/public-reference-comparison.json").write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps({key: val for key, val in report.items() if key != "files"}, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
