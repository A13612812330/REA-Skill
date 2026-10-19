"""Build readable catalogs from original data tables and localization entries."""

import csv
import hashlib
import json
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
DATA = ROOT / "data"
FILES = ROOT / "extracted" / "game-files"


def read(name):
    return json.loads((DATA / name).read_text(encoding="utf-8"))


def write_csv(name, fields, rows):
    with (DATA / name).open("w", encoding="utf-8-sig", newline="") as stream:
        writer = csv.DictWriter(stream, fieldnames=fields)
        writer.writeheader()
        writer.writerows(rows)


def compact(value):
    return json.dumps(value, ensure_ascii=False, separators=(",", ":"))


def main():
    chinese = json.loads((FILES / "src/language/chinese.json").read_text(encoding="utf-8-sig"))
    skills = []
    for identifier, item in read("skill.json")["definitions"].items():
        runtime = item.get("runtime", {})
        skills.append({
            "id": identifier,
            "name_zh": chinese.get(f"skill.name.{identifier}", ""),
            "name_en": item.get("nameEn", ""),
            "description_zh": chinese.get(f"skill.desc.{identifier}", ""),
            "owner": item.get("owner", ""),
            "owner_key": item.get("ownerKey", ""),
            "activation_type": item.get("activationType", ""),
            "cooldown": item.get("cooldown", ""),
            "duration": item.get("duration", ""),
            "min_rank": runtime.get("minRank", ""),
            "icon": item.get("icon", ""),
            "effects_json": compact(item.get("effects", {})),
            "runtime_json": compact(runtime),
        })
    write_csv("skills.csv", list(skills[0]), skills)
    options = []
    for item in read("randomoption.json")["catalog"]:
        identifier = item["id"]
        options.append({
            "id": identifier,
            "name_zh": chinese.get(f"random_option.name.{identifier}", item.get("name", "")),
            "effect_zh": chinese.get(f"random_option.effect.{identifier}", item.get("effect", "")),
            "rarity": item.get("rarity", ""),
            "icon": item.get("icon", ""),
            "variants_json": compact(item.get("variants", [])),
            "definition_json": compact(item),
        })
    write_csv("random-options.csv", list(options[0]), options)
    awakening = read("awakening.json")
    catalogs = [(str(awakening["version"]), awakening)]
    catalogs += [(version, catalog) for version, catalog in awakening["catalogs"].items() if "candidates" in catalog]
    stages = []
    for version, catalog in catalogs:
        for identifier, item in catalog["candidates"].items():
            for stage, content in enumerate(item.get("stages", []), 1):
                prefix = f"awakening.{version}.{identifier}"
                stages.append({
                    "catalog_version": version,
                    "id": identifier,
                    "name_zh": chinese.get(prefix + ".name", ""),
                    "name_en": item.get("english", ""),
                    "stage": stage,
                    "text_zh": chinese.get(f"{prefix}.{stage}.text", content.get("text", "")),
                    "limit_zh": chinese.get(f"{prefix}.{stage}.limit", content.get("limit", "")),
                    "weight": item.get("weight", ""),
                    "own_cooldown_seconds": item.get("own_cooldown_seconds", ""),
                })
    write_csv("awakening-stages.csv", list(stages[0]), stages)
    sprites = []
    for index, item in enumerate(read("asset2.json")["unitSprites"], 1):
        sprites.append({
            "index": index,
            "names_json": compact(item.get("names", [])),
            "paths_json": compact(item.get("paths", [])),
            "frame_width": item.get("frameW", ""),
            "frame_height": item.get("frameH", ""),
            "animations_json": compact(item.get("animations", {})),
            "body_bounds_json": compact(item.get("bodyBounds", {})),
        })
    write_csv("unit-sprites.csv", list(sprites[0]), sprites)
    quality = []
    syntax = {item["path"]: item for item in json.loads((ROOT / "analysis/lua-syntax.json").read_text(encoding="utf-8"))}
    for result in json.loads((ROOT / "analysis/decompilation.json").read_text())["files"]:
        relative = result["path"]
        source = f"decompiled-partial/{relative}" if result["status"] == "partial" else f"decompiled/{relative}"
        check = syntax.get(source)
        if check is None:
            source = f"decompiled/{relative}"
            check = syntax.get(source)
        quality.append({
            "path": relative,
            "decompiler_result": result["status"],
            "text_exists": check is not None,
            "syntax_valid": check["syntax_valid"] if check else False,
            "error": check["error"] if check else "No source text recovered",
            "semantics_verified": False,
        })
    (ROOT / "analysis/source-quality.json").write_text(json.dumps(quality, ensure_ascii=False, indent=2), encoding="utf-8")
    summary = {
        "skills": len(skills),
        "random_options": len(options),
        "awakening_stage_rows_including_legacy_catalogs": len(stages),
        "unit_sprite_definitions": len(sprites),
        "source_inputs_including_startup": len(quality),
        "source_texts_generated": sum(item["text_exists"] for item in quality),
        "source_texts_syntax_valid": sum(item["syntax_valid"] for item in quality),
        "original_exe_sha256_after_analysis": hashlib.sha256(
            Path(r"E:\SteamLibrary\steamapps\common\Slotbound Demo\Slotbound.exe").read_bytes()
        ).hexdigest(),
    }
    (ROOT / "analysis/delivery-summary.json").write_text(json.dumps(summary, indent=2), encoding="utf-8")
    print(json.dumps(summary, indent=2))


if __name__ == "__main__":
    main()
