"""Fetch a hash-pinned upstream release and decompile into a new output tree."""

import hashlib
import json
import subprocess
import urllib.request
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
URL = "https://github.com/marsinator358/luajit-decompiler-v2/releases/download/Mar_24_2024/luajit-decompiler-v2.exe"
SHA256 = "d98fedf8041df653904db28a1daaf65ce355487307ae49c573ae94491140bb6a"


def main():
    tools = ROOT / "tools" / "v2"
    tools.mkdir(exist_ok=True)
    binary = tools / "luajit-decompiler-v2.exe"
    if not binary.exists():
        release_request = urllib.request.Request(
            "https://api.github.com/repos/marsinator358/luajit-decompiler-v2/releases/tags/Mar_24_2024",
            headers={"User-Agent": "Slotbound-local-analysis"},
        )
        with urllib.request.urlopen(release_request, timeout=20) as response:
            release = json.load(response)
        asset_url = next(asset["url"] for asset in release["assets"] if asset["name"] == binary.name)
        errors = []
        data = None
        for candidate in [asset_url, URL, asset_url + "?download=1"]:
            try:
                request = urllib.request.Request(candidate, headers={
                    "User-Agent": "Slotbound-local-analysis",
                    "Accept": "application/octet-stream",
                })
                with urllib.request.urlopen(request, timeout=25) as response:
                    candidate_data = response.read()
                if hashlib.sha256(candidate_data).hexdigest() != SHA256:
                    raise ValueError("Response did not match upstream executable")
                data = candidate_data
                break
            except Exception as error:
                errors.append(str(error))
        if data is None:
            raise RuntimeError("Release download failed: " + "; ".join(errors))
        if hashlib.sha256(data).hexdigest() != SHA256:
            raise ValueError("Upstream release SHA256 mismatch")
        binary.write_bytes(data)
    if hashlib.sha256(binary.read_bytes()).hexdigest() != SHA256:
        raise ValueError("Local tool SHA256 mismatch")
    output = ROOT / "decompiled-v2"
    output.mkdir(exist_ok=True)
    # ASCII relative arguments avoid this upstream tool's ANSI path limitations.
    command = [str(binary), "../../extracted/game-files", "-e", "lua", "-s", "-o", "../../decompiled-v2"]
    run = subprocess.run(
        command, cwd=tools, capture_output=True, timeout=180,
        creationflags=subprocess.CREATE_NO_WINDOW,
    )
    manifest = {
        "tool": "marsinator358/luajit-decompiler-v2",
        "release": "Mar_24_2024",
        "download_url": URL,
        "sha256": SHA256,
        "returncode": run.returncode,
        "source_files_generated": len(list(output.rglob("*.lua"))),
        "stdout": run.stdout.decode("utf-8", "replace"),
        "stderr": run.stderr.decode("utf-8", "replace"),
    }
    (ROOT / "analysis" / "v2-run.json").write_text(json.dumps(manifest, indent=2), encoding="utf-8")
    print(json.dumps(manifest, indent=2))


if __name__ == "__main__":
    main()
