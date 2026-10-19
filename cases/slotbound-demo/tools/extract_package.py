"""Read this build's authenticated envelope and retain verification results."""

import argparse
import hashlib
import json
import struct
import zipfile
from pathlib import Path

import pefile
from cryptography.hazmat.primitives.ciphers.aead import AESGCM


def digest(data):
    return hashlib.sha256(data).digest()


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("exe", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    data = args.exe.read_bytes()
    expected = "2db4b93b52cd6daec9014f6e8ee42f78d32f683a496af35a8b03d8b97f4fccb7"
    if hashlib.sha256(data).hexdigest() != expected:
        raise ValueError("Unsupported build: inspect its loader before extraction")
    magic, offset, length = struct.unpack_from("<8sQQ", data, len(data) - 24)
    if magic != b"SBNAT002" or offset + 52 + length + 24 != len(data):
        raise ValueError("Invalid package layout")
    envelope = data[offset : offset + 52 + length]
    if envelope[:24] != data[-24:]:
        raise ValueError("Package header/footer mismatch")
    pe = pefile.PE(data=data)

    def rva_bytes(rva, size):
        position = pe.get_offset_from_rva(rva)
        return data[position : position + size]

    # The loader combines two embedded shares with the unmodified PE digest.
    seed = bytes(a ^ b for a, b in zip(rva_bytes(0x19008, 32), rva_bytes(0x19028, 32)))
    key = digest(seed + digest(data[:offset]))
    plaintext = AESGCM(key).decrypt(
        envelope[24:36], envelope[52:] + envelope[36:52], envelope[:24]
    )
    if digest(plaintext) != rva_bytes(0x19048, 32):
        raise ValueError("Plaintext SHA256 mismatch")
    if plaintext[:8] != b"SBMEM002":
        raise ValueError("Unknown inner envelope")
    startup_size, reserved, content_size = struct.unpack_from("<IIQ", plaintext, 8)
    if reserved or 24 + startup_size + content_size != len(plaintext):
        raise ValueError("Invalid inner envelope size")
    startup = plaintext[24 : 24 + startup_size]
    content = plaintext[24 + startup_size :]
    if not startup.startswith(b"\x1bLJ"):
        raise ValueError("Startup is not LuaJIT bytecode")
    args.output.mkdir(parents=True, exist_ok=True)
    (args.output / "startup.ljbc").write_bytes(startup)
    (args.output / "content.bin").write_bytes(content)
    manifest = {
        "source_sha256": hashlib.sha256(data).hexdigest(),
        "aes_gcm_authenticated": True,
        "plaintext_sha256_verified": True,
        "plaintext_size": len(plaintext),
        "startup_size": len(startup),
        "content_size": len(content),
        "startup_version": startup[3],
        "content_prefix_hex": content[:64].hex(),
        "content_is_zip": zipfile.is_zipfile(args.output / "content.bin"),
    }
    (args.output / "extraction.json").write_text(
        json.dumps(manifest, indent=2), encoding="utf-8"
    )
    print(json.dumps(manifest, indent=2))


if __name__ == "__main__":
    main()
