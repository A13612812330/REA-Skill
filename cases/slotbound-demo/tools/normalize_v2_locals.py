"""Reduce generated local counts using per-invocation tables, via a Lua AST."""

import json
import re
import shutil
import sys
import subprocess
from collections import Counter, defaultdict
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "tools" / "vendor"))
from tree_sitter import Language, Parser
import tree_sitter_lua


PARSER = Parser(Language(tree_sitter_lua.language()))
FUNCTIONS = {"function_declaration", "function_definition"}


def walk(node):
    yield node
    for child in node.named_children:
        yield from walk(child)


def normalize(data):
    data = data.removeprefix(b"\xef\xbb\xbf")
    tree = PARSER.parse(data)
    if tree.root_node.has_error:
        raise ValueError("Upstream output contains Lua grammar errors")
    scopes = {tree.root_node.id: tree.root_node}
    declarations = defaultdict(list)
    counts = Counter()
    for node in walk(tree.root_node):
        is_variable = node.type == "variable_declaration"
        is_function = node.type == "function_declaration" and any(c.type == "local" for c in node.children)
        if not (is_variable or is_function):
            continue
        parent = node.parent
        # A new table at each lexical block entry preserves loop closure lifetimes.
        if parent.type in {"chunk", "block"}:
            owner = parent
        else:
            continue
        if is_function:
            names = [node.child_by_field_name("name")]
        else:
            child = next(c for c in node.named_children if c.type in {"assignment_statement", "variable_list"})
            variables = child if child.type == "variable_list" else next(c for c in child.named_children if c.type == "variable_list")
            names = list(variables.named_children)
        if not all(n.type == "identifier" and re.fullmatch(rb"var_\d+_\d+", data[n.start_byte:n.end_byte]) for n in names):
            continue
        scopes[owner.id] = owner
        declarations[owner.id].append((node, names))
        counts[owner.id] += len(names)
    selected = [key for key, count in counts.items() if count >= 60]
    names_to_scope = {}
    edits = []
    records = []
    for serial, key in enumerate(selected):
        scope_name = f"__recovered_scope_{serial}".encode()
        owner = scopes[key]
        body = owner
        edits.append((body.start_byte, body.start_byte, b"local " + scope_name + b" = {}\n"))
        for declaration, names in declarations[key]:
            local_token = next(c for c in declaration.children if c.type == "local")
            edits.append((local_token.start_byte, local_token.end_byte, b""))
            for name in names:
                text = data[name.start_byte:name.end_byte]
                if text in names_to_scope:
                    raise ValueError("Generated name has multiple local bindings")
                names_to_scope[text] = scope_name
            if declaration.type == "variable_declaration" and not any(c.type == "assignment_statement" for c in declaration.named_children):
                edits.append((declaration.end_byte, declaration.end_byte, b" = " + b", ".join([b"nil"] * len(names))))
        records.append({"scope": scope_name.decode(), "line": owner.start_point.row + 1, "lifted_local_count": counts[key]})
    for node in walk(tree.root_node):
        if node.type != "identifier":
            continue
        name = data[node.start_byte:node.end_byte]
        if name not in names_to_scope:
            continue
        if node.parent.type in {"dot_index_expression", "method_index_expression"} and node == node.parent.named_children[-1]:
            continue
        if node.parent.type == "field" and node.parent.child_by_field_name("name") == node:
            continue
        edits.append((node.start_byte, node.end_byte, names_to_scope[name] + b"." + name))
    parts = []
    cursor = 0
    for start, end, replacement in sorted(edits, key=lambda edit: (edit[0], edit[1])):
        if start < cursor:
            raise ValueError("Overlapping AST edits")
        parts.extend([data[cursor:start], replacement])
        cursor = end
    parts.append(data[cursor:])
    result = b"".join(parts)
    if records:
        result = b"-- Recovered source: generated locals lifted into per-invocation tables.\n" + result
    return result, records


def main():
    output = ROOT / "recovered-source"
    reports = []
    for source in sorted((ROOT / "decompiled-v2").rglob("*.lua")):
        relative = source.relative_to(ROOT / "decompiled-v2")
        original = source.read_bytes()
        # Avoid Windows LuaJIT exception unwinding across ctypes on known errors.
        needs_normalization = relative.as_posix() in {
            "src/data/assets.lua", "src/game/battlefield.lua", "src/game/combat.lua",
            "src/game/enemy_skills.lua", "src/game/projectiles.lua",
            "src/game/unit_abilities.lua", "src/ui/effects.lua", "src/ui/imprint.lua",
        }
        data, scopes = normalize(original) if needs_normalization else (original, [])
        target = output / relative
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes(data)
        check = subprocess.run(
            [sys.executable, str(ROOT / "tools" / "check_one_lua.py"), str(target)],
            capture_output=True, text=True, encoding="utf-8",
        )
        result = json.loads(check.stdout) if check.returncode == 0 else {
            "syntax_valid": False, "error": "Compiler worker failed: " + check.stderr,
        }
        reports.append({
                "path": relative.as_posix(),
                **result,
                "normalized_scopes": scopes,
                "semantics_verified": False,
            })
        print(f"{len(reports)}/55 {relative}: {'syntax ok' if result['syntax_valid'] else 'syntax failed'}", flush=True)
    # Keep final serialization independent of the native AST parser's lifetime.
    subprocess.run([sys.executable, str(ROOT / "tools" / "audit_recovered.py")], check=True)


if __name__ == "__main__":
    main()
