"""Retrieve only public Lua reference files, with commit and blob provenance."""

import hashlib
import json
import urllib.parse
import urllib.request
from pathlib import Path, PurePosixPath


ROOT = Path(__file__).resolve().parent.parent
REPO = "liusu239113/SlotboundLua"
DEST = ROOT / "external-reference" / "SlotboundLua"


def get(url, binary=False):
    errors = []
    for _ in range(3):
        try:
            request = urllib.request.Request(url, headers={"User-Agent": "Slotbound-local-analysis"})
            with urllib.request.urlopen(request, timeout=20) as response:
                data = response.read()
            return data if binary else json.loads(data)
        except Exception as error:
            errors.append(str(error))
    raise RuntimeError("; ".join(errors))


def tree(identifier):
    return get(f"https://api.github.com/repos/{REPO}/git/trees/{identifier}")["tree"]


def main():
    metadata = get(f"https://api.github.com/repos/{REPO}")
    commit = get(f"https://api.github.com/repos/{REPO}/commits/{metadata['default_branch']}")["sha"]
    root_tree = tree(commit)
    contents_sha = next(item["sha"] for item in root_tree if item["path"] == "contents")
    entries = [dict(item, path=item["path"]) for item in root_tree if item["path"] == "README.md"]

    def scan(identifier, prefix):
        for item in tree(identifier):
            relative = prefix + "/" + item["path"]
            if item["type"] == "tree":
                if relative in ["contents/src", "contents/src/data", "contents/src/game", "contents/src/ui", "contents/src/audio"]:
                    scan(item["sha"], relative)
            elif item["path"].endswith(".lua") or relative == "contents/information.md":
                entries.append(dict(item, path=relative))

    scan(contents_sha, "contents")
    manifest = []
    for index, entry in enumerate(entries, 1):
        relative = PurePosixPath(entry["path"])
        if relative.is_absolute() or ".." in relative.parts:
            raise ValueError("Unsafe upstream path")
        url = f"https://raw.githubusercontent.com/{REPO}/{commit}/" + urllib.parse.quote(relative.as_posix())
        target = DEST.joinpath(*relative.parts)
        content = target.read_bytes() if target.exists() else b""
        cached_sha = hashlib.sha1(b"blob " + str(len(content)).encode() + b"\0" + content).hexdigest()
        if cached_sha != entry["sha"]:
            try:
                content = get(url, binary=True)
            except RuntimeError:
                import base64
                blob = get(f"https://api.github.com/repos/{REPO}/git/blobs/{entry['sha']}")
                content = base64.b64decode(blob["content"])
        blob_sha = hashlib.sha1(b"blob " + str(len(content)).encode() + b"\0" + content).hexdigest()
        if blob_sha != entry["sha"]:
            raise ValueError(f"Blob mismatch: {relative}")
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes(content)
        manifest.append({"path": relative.as_posix(), "git_blob_sha1": blob_sha, "sha256": hashlib.sha256(content).hexdigest(), "bytes": len(content), "url": url})
        print(f"{index}/{len(entries)} {relative}", flush=True)
    provenance = {
        "repository": REPO,
        "commit": commit,
        "repository_created_at": metadata["created_at"],
        "license_metadata": metadata.get("license"),
        "official_status": "not-established",
        "local_build_match": "not-established; reference files must not replace local output",
        "files": manifest,
    }
    (DEST.parent / "provenance.json").write_text(json.dumps(provenance, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps({"commit": commit, "files": len(manifest), "lua_files": sum(f["path"].endswith(".lua") for f in manifest)}, indent=2))


if __name__ == "__main__":
    main()
