"""Check staged upload scope and byte-preservation without printing secrets."""

import hashlib
import json
import re
import subprocess
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
EXCLUDED = (
    "tools/vendor/", "tools/v2/", "tools/luajit-decompiler/",
    "tools/luajit-decompiler-v2-source/", "decompiled/", "decompiled-partial/",
    "decompiled-alternative/", "decompiled-v2/", "analysis/decompiler-logs/",
)
PATTERNS = {
    "github-token": re.compile(rb"(?:gh[pousr]_[A-Za-z0-9]{30,}|github_pat_[A-Za-z0-9_]{40,})"),
    "private-key": re.compile(rb"-----BEGIN (?:RSA |EC |OPENSSH )?PRIVATE KEY-----"),
    "aws-access-key": re.compile(rb"(?:AKIA|ASIA)[A-Z0-9]{16}"),
}


def main():
    index = subprocess.check_output(["git", "ls-files", "--stage", "-z"], cwd=ROOT)
    files, violations = [], []
    preserved = 0
    for entry in index.split(b"\0"):
        if not entry:
            continue
        metadata, raw_path = entry.split(b"\t", 1)
        _, object_id, stage = metadata.decode("ascii").split()
        path = raw_path.decode("utf-8")
        target = ROOT / path
        content = target.read_bytes()
        files.append({"path": path, "bytes": len(content)})
        if stage != "0":
            violations.append({"path": path, "reason": "unresolved-index-stage"})
        if path.startswith(EXCLUDED) or path == "extracted/content.bin":
            violations.append({"path": path, "reason": "excluded-artifact"})
        if target.suffix.lower() in {".exe", ".dll", ".pem", ".key", ".pfx", ".p12"} or target.name.startswith(".env"):
            violations.append({"path": path, "reason": "sensitive-or-runtime-filename"})
        if len(content) >= 100 * 1024 * 1024:
            violations.append({"path": path, "reason": "github-file-size-limit"})
        if path.startswith(("extracted/", "recovered-source/", "external-reference/SlotboundLua/")):
            digest = hashlib.sha1(b"blob " + str(len(content)).encode() + b"\0" + content).hexdigest()
            if digest != object_id:
                violations.append({"path": path, "reason": "raw-bytes-changed-in-index"})
            else:
                preserved += 1
        if b"\0" not in content:
            for label, pattern in PATTERNS.items():
                if pattern.search(content):
                    violations.append({"path": path, "reason": label})
    report = {
        "staged_file_count": len(files),
        "working_file_bytes": sum(item["bytes"] for item in files),
        "raw_files_verified_against_index": preserved,
        "largest_files": sorted(files, key=lambda item: item["bytes"], reverse=True)[:5],
        "violations": violations,
        "credential_scan_scope": "Common token/private-key signatures only; no secret values are recorded.",
    }
    (ROOT / "analysis/upload-audit.json").write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(report, ensure_ascii=False, indent=2))
    if violations:
        raise SystemExit(1)


if __name__ == "__main__":
    main()
