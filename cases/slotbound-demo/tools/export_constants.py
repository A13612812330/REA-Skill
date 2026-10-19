"""Export bytecode constants through upstream LJD, without executing game code."""

import csv
import contextlib
import io
import json
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "tools" / "luajit-decompiler"))

import main as ljd_main
import ljd.bytecode.constants
import ljd.bytecode.prototype
import ljd.rawdump.parser
import ljd.pseudoasm.writer


def main():
    output = ROOT / "data"
    output.mkdir(exist_ok=True)
    rows = []
    summary = []
    sources = sorted((ROOT / "extracted" / "game-files").rglob("*.lua"))
    for source in sources:
        relative = source.relative_to(ROOT / "extracted" / "game-files")
        header, prototype = ljd.rawdump.parser.parse(
            str(source), lambda h: ljd_main.set_luajit_version(2.1 if h.version == 2 else 2.0)
        )
        if prototype is None:
            raise ValueError(f"Cannot parse {relative}")
        assembly = ROOT / "bytecode-disassembly" / relative.with_suffix(".asm")
        assembly.parent.mkdir(parents=True, exist_ok=True)
        with contextlib.redirect_stdout(io.StringIO()), assembly.open("w", encoding="utf-8") as stream:
            ljd.pseudoasm.writer.write(stream, header, prototype)
        functions = []

        def visit(proto, location):
            record = {
                "prototype": location,
                "argument_count": proto.arguments_count,
                "instruction_count": len(proto.instructions),
                "numeric_constants": proto.constants.numeric_constants,
                "strings": [],
                "tables": [],
            }
            for index, item in enumerate(proto.constants.complex_constants):
                if isinstance(item, ljd.bytecode.prototype.Prototype):
                    visit(item, f"{location}/{index}")
                elif isinstance(item, ljd.bytecode.constants.Table):
                    table = {"constant_index": index, "array": item.array, "dictionary": item.dictionary}
                    record["tables"].append(table)
                    for key, value in list(enumerate(item.array)) + item.dictionary:
                        rows.append([relative.as_posix(), location, index, key, value, type(value).__name__])
                elif isinstance(item, str):
                    record["strings"].append({"constant_index": index, "value": item})
            functions.append(record)

        visit(prototype, "root")
        target = output / "bytecode-constants" / relative.with_suffix(".json")
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_text(
            json.dumps({"file": relative.as_posix(), "prototypes": functions}, ensure_ascii=False, indent=2),
            encoding="utf-8",
        )
        summary.append({
            "file": relative.as_posix(),
            "prototypes": len(functions),
            "tables": sum(len(f["tables"]) for f in functions),
            "numeric_constants": sum(len(f["numeric_constants"]) for f in functions),
        })
    with (output / "table-constants.csv").open("w", encoding="utf-8-sig", newline="") as stream:
        writer = csv.writer(stream)
        writer.writerow(["file", "prototype", "table_constant_index", "key", "value", "type"])
        writer.writerows(rows)
    (output / "constants-summary.json").write_text(json.dumps(summary, indent=2), encoding="utf-8")
    print(json.dumps({"files_parsed": len(summary), "table_cells": len(rows), "tables": sum(f["tables"] for f in summary)}))
    header, prototype = ljd.rawdump.parser.parse(
        str(ROOT / "extracted" / "startup.ljbc"),
        lambda h: ljd_main.set_luajit_version(2.1 if h.version == 2 else 2.0),
    )
    with contextlib.redirect_stdout(io.StringIO()), (ROOT / "bytecode-disassembly" / "startup.asm").open("w", encoding="utf-8") as stream:
        ljd.pseudoasm.writer.write(stream, header, prototype)


if __name__ == "__main__":
    main()
