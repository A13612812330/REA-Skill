"""Inspect the local executable without loading or changing it."""

import argparse
import hashlib
import json
import math
import re
import struct
import sys
from collections import Counter
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent / "vendor"))

import capstone
import pefile


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("exe", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    data = args.exe.read_bytes()
    pe = pefile.PE(data=data)
    base = pe.OPTIONAL_HEADER.ImageBase
    sections = [
        {
            "name": section.Name.rstrip(b"\0").decode("ascii"),
            "offset": section.PointerToRawData,
            "size": section.SizeOfRawData,
            "rva": section.VirtualAddress,
        }
        for section in pe.sections
    ]
    overlay_offset = max(s["offset"] + s["size"] for s in sections)
    overlay = data[overlay_offset:]
    strings = {}
    for pattern, encoding in [
        (rb"[\x20-\x7e]{5,}", "ascii"),
        (rb"(?:[\x20-\x7e]\x00){4,}", "utf-16le"),
    ]:
        for match in re.finditer(pattern, data[:overlay_offset]):
            if match.start() < pe.OPTIONAL_HEADER.SizeOfHeaders:
                continue
            address = base + pe.get_rva_from_offset(match.start())
            strings[address] = match.group().decode(encoding)
    imports = {}
    for library in pe.DIRECTORY_ENTRY_IMPORT:
        for symbol in library.imports:
            imports[symbol.address] = (
                library.dll.decode() + "!" + (symbol.name or b"?").decode()
            )
    functions = [
        (base + entry.struct.BeginAddress, base + entry.struct.EndAddress)
        for entry in pe.DIRECTORY_ENTRY_EXCEPTION
    ]
    decoder = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_64)
    decoder.detail = True
    assembly = []
    xrefs = []
    for section in pe.sections:
        if not section.Characteristics & 0x20000000:
            continue
        for ins in decoder.disasm(section.get_data(), base + section.VirtualAddress):
            annotations = []
            for operand in ins.operands:
                target = None
                if operand.type == capstone.x86.X86_OP_MEM:
                    if operand.mem.base == capstone.x86.X86_REG_RIP:
                        target = ins.address + ins.size + operand.mem.disp
                elif operand.type == capstone.x86.X86_OP_IMM:
                    target = operand.imm
                if target in strings or target in imports:
                    label = strings.get(target, imports.get(target))
                    annotations.append(label)
                    xrefs.append(
                        {
                            "address": hex(ins.address),
                            "target": hex(target),
                            "label": label,
                            "function": next(
                                (hex(a) for a, z in functions if a <= ins.address < z),
                                None,
                            ),
                        }
                    )
            suffix = " ; " + " | ".join(annotations) if annotations else ""
            assembly.append(
                f"{ins.address:016x}  {ins.mnemonic:10} {ins.op_str}{suffix}"
            )
    report = {
        "source": str(args.exe),
        "sha256": hashlib.sha256(data).hexdigest(),
        "file_size": len(data),
        "machine": hex(pe.FILE_HEADER.Machine),
        "image_base": hex(base),
        "entry_point": hex(base + pe.OPTIONAL_HEADER.AddressOfEntryPoint),
        "sections": sections,
        "overlay_offset": overlay_offset,
        "overlay_size": len(overlay),
        "overlay_entropy": -sum(
            (n / len(overlay)) * math.log2(n / len(overlay))
            for n in Counter(overlay).values()
        ),
        "overlay_prefix_hex": overlay[:64].hex(),
        "footer": {
            "magic": data[-24:-16].decode("ascii", "replace"),
            "offset": struct.unpack_from("<Q", data, len(data) - 16)[0],
            "length": struct.unpack_from("<Q", data, len(data) - 8)[0],
        },
        "strings": {hex(k): v for k, v in strings.items() if k < base + 0x14000},
        "xrefs": xrefs,
    }
    args.output.mkdir(parents=True, exist_ok=True)
    (args.output / "package.json").write_text(
        json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8"
    )
    (args.output / "launcher.asm").write_text("\n".join(assembly), encoding="utf-8")
    print(
        json.dumps(
            {
                "sha256": report["sha256"],
                "overlay_entropy": report["overlay_entropy"],
                "footer": report["footer"],
                "instructions": len(assembly),
                "output": str(args.output),
            },
            ensure_ascii=False,
        )
    )


if __name__ == "__main__":
    main()
