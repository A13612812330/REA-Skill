"""Isolate native compiler state from AST processing."""

import json
import sys
from pathlib import Path

import read_lua_tables as lua

source = Path(sys.argv[1])
content = source.read_bytes()
state = lua.newstate()
result = lua.load(state, content, len(content), b"syntax-check")
report = {"syntax_valid": result == 0, "error": lua.read_string(state, -1) if result else None}
lua.close(state)
print(json.dumps(report), flush=True)
