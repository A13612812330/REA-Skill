"""Extract verified ZIP entries into a separate tree and record an inventory."""

import argparse
import hashlib
import json
import stat
import zipfile
from collections import Counter
from pathlib import Path, PurePosixPath


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("archive", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    root = args.output.resolve()
    manifest = []
    with zipfile.ZipFile(args.archive) as archive:
        entries = archive.infolist()
        if sum(entry.file_size for entry in entries) > 512 * 1024 * 1024:
            raise ValueError("Unexpected archive size")
        targets = set()
        for entry in entries:
            name = PurePosixPath(entry.filename)
            if (
                name.is_absolute()
                or ".." in name.parts
                or "\\" in entry.filename
                or ":" in entry.filename
                or stat.S_ISLNK(entry.external_attr >> 16)
            ):
                raise ValueError(f"Unsafe entry: {entry.filename}")
            target = root.joinpath(*name.parts).resolve()
            if not target.is_relative_to(root) or target in targets or target.exists():
                raise ValueError(f"Duplicate or existing target: {target}")
            targets.add(target)
        for entry in entries:
            target = root.joinpath(*PurePosixPath(entry.filename).parts)
            if entry.is_dir():
                target.mkdir(parents=True, exist_ok=True)
                continue
            data = archive.read(entry)
            target.parent.mkdir(parents=True, exist_ok=True)
            with target.open("xb") as stream:
                stream.write(data)
            manifest.append(
                {
                    "path": entry.filename,
                    "size": len(data),
                    "sha256": hashlib.sha256(data).hexdigest(),
                    "kind": "luajit-bytecode" if data.startswith(b"\x1bLJ") else target.suffix,
                }
            )
    inventory = {
        "file_count": len(manifest),
        "total_size": sum(entry["size"] for entry in manifest),
        "extensions": dict(Counter(Path(entry["path"]).suffix.lower() for entry in manifest)),
        "files": manifest,
    }
    (root.parent / "inventory.json").write_text(
        json.dumps(inventory, ensure_ascii=False, indent=2), encoding="utf-8"
    )
    print(json.dumps({k: v for k, v in inventory.items() if k != "files"}, indent=2))


if __name__ == "__main__":
    main()
