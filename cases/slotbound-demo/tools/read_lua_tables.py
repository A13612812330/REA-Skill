"""Compile recovered sources and read selected data tables in a bare Lua VM."""

import ctypes
import json
import os
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
RUNTIME = Path(r"E:\SteamLibrary\steamapps\common\Slotbound Demo")
DLL_DIRECTORY = os.add_dll_directory(str(RUNTIME))
LUA = ctypes.CDLL(str(RUNTIME / "lua51.dll"))
STATE = ctypes.c_void_p


def bind(name, result, *arguments):
    function = getattr(LUA, name)
    function.restype = result
    function.argtypes = list(arguments)
    return function


newstate = bind("luaL_newstate", STATE)
close = bind("lua_close", None, STATE)
load = bind("luaL_loadbuffer", ctypes.c_int, STATE, ctypes.c_char_p, ctypes.c_size_t, ctypes.c_char_p)
pcall = bind("lua_pcall", ctypes.c_int, STATE, ctypes.c_int, ctypes.c_int, ctypes.c_int)
gettop = bind("lua_gettop", ctypes.c_int, STATE)
settop = bind("lua_settop", None, STATE, ctypes.c_int)
kind = bind("lua_type", ctypes.c_int, STATE, ctypes.c_int)
number = bind("lua_tonumber", ctypes.c_double, STATE, ctypes.c_int)
boolean = bind("lua_toboolean", ctypes.c_int, STATE, ctypes.c_int)
string = bind("lua_tolstring", ctypes.c_void_p, STATE, ctypes.c_int, ctypes.POINTER(ctypes.c_size_t))
pushnil = bind("lua_pushnil", None, STATE)
nextitem = bind("lua_next", ctypes.c_int, STATE, ctypes.c_int)
pointer = bind("lua_topointer", ctypes.c_void_p, STATE, ctypes.c_int)
open_math = bind("luaopen_math", ctypes.c_int, STATE)
open_base = bind("luaopen_base", ctypes.c_int, STATE)
open_table = bind("luaopen_table", ctypes.c_int, STATE)
open_string = bind("luaopen_string", ctypes.c_int, STATE)
setfield = bind("lua_setfield", None, STATE, ctypes.c_int, ctypes.c_char_p)


def read_string(state, index):
    length = ctypes.c_size_t()
    address = string(state, index, ctypes.byref(length))
    return ctypes.string_at(address, length.value).decode("utf-8", "backslashreplace") if address else None


def value(state, index, seen=None, depth=0):
    seen = seen or set()
    tag = kind(state, index)
    if tag == 0:
        return None
    if tag == 1:
        return bool(boolean(state, index))
    if tag == 3:
        result = number(state, index)
        return int(result) if result.is_integer() else result
    if tag == 4:
        return read_string(state, index)
    if tag != 5:
        return {"_lua_type": {6: "function", 7: "userdata", 8: "thread"}.get(tag, str(tag))}
    address = pointer(state, index)
    if address in seen or depth > 32:
        return {"_lua_type": "table-reference"}
    seen = seen | {address}
    absolute = index if index > 0 else gettop(state) + index + 1
    pairs = []
    pushnil(state)
    while nextitem(state, absolute):
        key = value(state, -2, seen, depth + 1)
        item = value(state, -1, seen, depth + 1)
        pairs.append((key, item))
        settop(state, -2)
    if pairs and all(type(key) is int for key, _ in pairs):
        keys = {key for key, _ in pairs}
        if keys == set(range(1, len(pairs) + 1)):
            return [dict(pairs)[key] for key in range(1, len(pairs) + 1)]
    return {str(key): item for key, item in pairs}


def compile_sources():
    results = []
    for folder in ["decompiled", "decompiled-partial"]:
        for source in sorted((ROOT / folder).rglob("*.lua")):
            state = newstate()
            try:
                data = source.read_bytes()
                result = load(state, data, len(data), str(source.relative_to(ROOT)).encode())
                results.append({
                    "path": source.relative_to(ROOT).as_posix(),
                    "syntax_valid": result == 0,
                    "error": read_string(state, -1) if result else None,
                })
            finally:
                close(state)
    (ROOT / "analysis" / "lua-syntax.json").write_text(json.dumps(results, ensure_ascii=False, indent=2), encoding="utf-8")
    print("SYNTAX", len(results), "valid", sum(item["syntax_valid"] for item in results))


def export_data():
    reports = []
    for source in sorted((ROOT / "extracted" / "game-files" / "src" / "data").glob("*.lua")):
        filename = source.stem
        state = newstate()
        try:
            for library in [open_base, open_table, open_string, open_math]:
                library(state)
                settop(state, 0)
            for name in [b"dofile", b"loadfile", b"load", b"loadstring", b"print", b"collectgarbage"]:
                pushnil(state)
                setfield(state, -10002, name)
            if filename == "skill":
                shim = (
                    b"function require(name) "
                    b"if name == 'src.data.language' then return {} end "
                    b"error('Dependency not allowed: '..name) end"
                )
                if load(state, shim, len(shim), b"restricted-language-shim") or pcall(state, 0, 0, 0):
                    raise ValueError("Cannot install restricted language dependency shim")
            data = source.read_bytes()
            if load(state, data, len(data), filename.encode()):
                raise ValueError(read_string(state, -1))
            # No io, os, package, require, FFI or game APIs; file loaders are removed.
            if pcall(state, 0, 1, 0):
                reports.append({"file": filename, "status": "not-evaluated", "error": read_string(state, -1)})
                continue
            table = value(state, -1)
            target = ROOT / "data" / (filename + ".json")
            target.write_text(json.dumps(table, ensure_ascii=False, indent=2), encoding="utf-8")
            reports.append({
                "file": filename,
                "status": "exported",
                "top_level_keys": list(table),
                "dependency_note": "language module replaced by an empty table; no game functions invoked" if filename == "skill" else None,
            })
        finally:
            close(state)
    (ROOT / "data" / "evaluated-tables.json").write_text(json.dumps(reports, ensure_ascii=False, indent=2), encoding="utf-8")
    print("DATA", json.dumps(reports, ensure_ascii=False))


if __name__ == "__main__":
    export_data()
    compile_sources()
