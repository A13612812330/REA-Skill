"""Compare selected recovered modules with original bytecode in restricted VMs."""

import hashlib
import json
from pathlib import Path

import read_lua_tables as lua

ROOT = Path(__file__).resolve().parent.parent
ORIGINAL = ROOT / "extracted" / "game-files"
RECOVERED = ROOT / "recovered-source"


def evaluate(folder, module, expression=None):
    state = lua.newstate()
    try:
        for library in [lua.open_base, lua.open_table, lua.open_string, lua.open_math]:
            library(state)
            lua.settop(state, 0)
        for name in [b"dofile", b"loadfile", b"load", b"loadstring", b"print", b"collectgarbage"]:
            lua.pushnil(state)
            lua.setfield(state, -10002, name)

        def execute(content, name):
            if lua.load(state, content, len(content), name.encode()) or lua.pcall(state, 0, 1, 0):
                raise ValueError(lua.read_string(state, -1))

        execute(b"return {}", "modules")
        lua.setfield(state, -10002, b"__modules")
        for dependency in ["src.data.constants", "src.game.quest"]:
            execute(folder.joinpath(*dependency.split(".")).with_suffix(".lua").read_bytes(), dependency)
            lua.setfield(state, -10002, b"__dependency")
            execute(f"__modules['{dependency}'] = __dependency; return true".encode(), "dependency")
            lua.settop(state, 0)
        execute(
            b"function require(name) if name == 'src.data.language' then return {} end "
            b"assert(__modules[name], 'Disallowed dependency: '..name); return __modules[name] end; return true",
            "restricted-require",
        )
        lua.settop(state, 0)
        execute(folder.joinpath(*module.split(".")).with_suffix(".lua").read_bytes(), module)
        if expression is not None:
            lua.setfield(state, -10002, b"subject")
            execute(expression.encode(), "comparison-cases")
        return lua.value(state, -1)
    finally:
        lua.close(state)


def main():
    results = []
    for source in sorted((ORIGINAL / "src" / "data").glob("*.lua")):
        module = "src.data." + source.stem
        try:
            original = evaluate(ORIGINAL, module)
            recovered = evaluate(RECOVERED, module)
            results.append({"module": module, "kind": "returned-data", "equal": original == recovered,
                            "note": "Functions and cyclic references are markers; language dependency uses empty table."})
        except Exception as error:
            results.append({"module": module, "kind": "returned-data", "equal": None, "error": str(error)})
    power_cases = """
local results = {}
for _, hp in ipairs({0, 1, 70, 140}) do
 for _, atk in ipairs({0, 9, 25}) do
  for _, aspd in ipairs({0, 1.5, 4}) do
   for _, name in ipairs({'powerSimple', 'computePartials', 'dps', 'norms', 'power'}) do
    local args = name == 'dps' and {atk, aspd} or {hp, atk, aspd}
    local values = {pcall(subject[name], unpack(args))}
    assert(values[1], tostring(values[2]))
    results[#results+1] = {name=name, hp=hp, atk=atk, aspd=aspd, values=values}
   end
  end
 end
end
return results
"""
    slot_cases = """
local results = {}
for mask=0,31 do
 local lines={}
 for line=1,5 do
  if math.floor(mask / 2^(line-1)) % 2 == 1 then lines[#lines+1]=line end
 end
 results[#results+1] = subject.isJackpotResult({checked=true, winningLines=lines})
end
results[#results+1] = subject.isJackpotResult(nil)
results[#results+1] = subject.isJackpotResult({checked=false, _jackpot=true})
results[#results+1] = subject.isJackpotResult({checked=true, _jackpot=true})
return results
"""
    for module, cases in [("src.game.power", power_cases), ("src.game.slot", slot_cases)]:
        try:
            original = evaluate(ORIGINAL, module, cases)
            recovered = evaluate(RECOVERED, module, cases)
            results.append({"module": module, "kind": "selected-function-cases", "equal": original == recovered,
                            "cases": len(original), "original": original, "recovered": recovered})
        except Exception as error:
            results.append({"module": module, "kind": "selected-function-cases", "equal": None, "error": str(error)})
    executable = Path(r"E:\SteamLibrary\steamapps\common\Slotbound Demo\Slotbound.exe")
    report = {"results": results, "original_exe_sha256": hashlib.sha256(executable.read_bytes()).hexdigest(),
              "scope": "Selected table values and pure functions only; no game startup, save access or full gameplay validation."}
    (ROOT / "analysis" / "recovered-comparison.json").write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
    for item in results:
        print(item["module"], item["equal"], item.get("cases", ""), item.get("error", ""))


if __name__ == "__main__":
    main()
