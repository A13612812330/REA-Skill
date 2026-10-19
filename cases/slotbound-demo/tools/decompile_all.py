"""Run upstream LJD per file, retaining failures and partial output separately."""

import json
import os
import subprocess
import sys
from collections import Counter
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
LJD = ROOT / "tools" / "luajit-decompiler" / "main.py"
INPUT = ROOT / "extracted" / "game-files"


def main():
    inputs = [(p, p.relative_to(INPUT)) for p in sorted(INPUT.rglob("*.lua"))]
    inputs.append((ROOT / "extracted" / "startup.ljbc", Path("startup.lua")))
    results = []
    logs = ROOT / "analysis" / "decompiler-logs"
    logs.mkdir(parents=True, exist_ok=True)
    env = dict(os.environ, PYTHONUTF8="1", PYTHONIOENCODING="utf-8")
    for index, (source, relative) in enumerate(inputs, 1):
        output = ROOT / "decompiled" / relative
        output.parent.mkdir(parents=True, exist_ok=True)
        attempts = []
        status = "failed"
        for partial in [False, True]:
            target = ROOT / "decompiled-partial" / relative if partial else output
            target.parent.mkdir(parents=True, exist_ok=True)
            command = [sys.executable, str(LJD), "-f", str(source), "-o", str(target)]
            if partial:
                command.append("--catch_asserts")
            try:
                run = subprocess.run(
                    command, capture_output=True, encoding="utf-8",
                    errors="replace", env=env, timeout=45,
                )
                log = run.stdout + run.stderr
                code = run.returncode
            except subprocess.TimeoutExpired:
                code, log = -1, "TIMEOUT after 45 seconds"
            log_path = logs / (str(relative).replace("\\", "__") + (".partial.log" if partial else ".log"))
            log_path.write_text(log, encoding="utf-8")
            attempts.append({"partial_mode": partial, "returncode": code, "log": str(log_path.relative_to(ROOT))})
            if code == 0 and target.exists() and target.stat().st_size:
                text = target.read_text(encoding="utf-8")
                bad = any(marker in text for marker in ["Decompilation Error", "DECOMPILATION ERROR", "-- BLOCK", "error in function"])
                status = "partial" if partial or bad else "decompiled"
                break
        results.append({"path": str(relative).replace("\\", "/"), "status": status, "attempts": attempts})
        print(f"{index}/{len(inputs)} {status}: {relative}", flush=True)
        (ROOT / "analysis" / "decompilation.json").write_text(
            json.dumps({"counts": dict(Counter(r["status"] for r in results)), "files": results}, indent=2),
            encoding="utf-8",
        )
    print(json.dumps(dict(Counter(r["status"] for r in results))))


if __name__ == "__main__":
    main()
