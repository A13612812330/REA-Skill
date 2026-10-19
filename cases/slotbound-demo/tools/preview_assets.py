"""Validate extracted PNG/JSON files and build a labeled contact sheet."""

import csv
import json
from pathlib import Path

from PIL import Image, ImageDraw, ImageFont


ROOT = Path(__file__).resolve().parent.parent
FILES = ROOT / "extracted" / "game-files"


def main():
    preview = ROOT / "preview"
    preview.mkdir(exist_ok=True)
    rows, invalid = [], []
    for path in sorted(FILES.rglob("*.png")):
        try:
            with Image.open(path) as image:
                width, height = image.size
                image.verify()
            rows.append([path.relative_to(FILES).as_posix(), width, height, path.stat().st_size])
        except Exception as error:
            invalid.append({"path": str(path), "error": str(error)})
    with (preview / "image-index.csv").open("w", encoding="utf-8-sig", newline="") as stream:
        writer = csv.writer(stream)
        writer.writerow(["path", "width", "height", "bytes"])
        writer.writerows(rows)
    categories = [
        ("UNITS", "src/sprites/units/"),
        ("ENEMIES", "src/sprites/enemy/"),
        ("SKILLS", "src/sprites/icons/skills/"),
        ("ITEMS", "src/sprites/icons/relics icon/item icons/"),
        ("CORES", "src/sprites/icons/relics icon/core icons/"),
        ("SLOTS", "src/sprites/icons/sloticons/"),
        ("SCENERY", "src/sprites/background/"),
    ]
    columns, cell_width, cell_height = 10, 144, 134
    sheet = Image.new("RGB", (columns * cell_width, len(categories) * (cell_height + 30) + 64), "#22252a")
    draw = ImageDraw.Draw(sheet)
    font = ImageFont.load_default(size=13)
    small = ImageFont.load_default(size=11)
    draw.text((16, 14), "SLOTBOUND DEMO / EXTRACTED ASSET PREVIEW", fill="white", font=font)
    selected_paths = []
    for row, (label, prefix) in enumerate(categories):
        y = 52 + row * (cell_height + 30)
        draw.text((12, y), label, fill="#75d4b1", font=font)
        matches = [r for r in rows if r[0].startswith(prefix)]
        # Sample across the full category instead of taking ten adjacent frames.
        chosen = [matches[min(len(matches)-1, i * len(matches) // columns)] for i in range(min(columns, len(matches)))]
        for col, (relative, width, height, _) in enumerate(chosen):
            x, top = col * cell_width, y + 24
            draw.rectangle((x + 5, top, x + cell_width - 5, top + 96), fill="#353a43")
            with Image.open(FILES / relative) as image:
                image = image.convert("RGBA")
                image.thumbnail((cell_width - 14, 90), Image.Resampling.NEAREST)
                sheet.paste(image, (x + (cell_width - image.width)//2, top + (96-image.height)//2), image)
            name = Path(relative).stem
            for line, offset in [(name[:21], 100), (name[21:42], 113)]:
                draw.text((x + 7, top + offset), line, fill="#e1e6eb", font=small)
            selected_paths.append(relative)
    sheet.save(preview / "assets-contact-sheet.jpg", quality=92)
    json_stats = {}
    for path in FILES.rglob("*.json"):
        content = json.loads(path.read_text(encoding="utf-8-sig"))
        json_stats[path.relative_to(FILES).as_posix()] = len(content)
    result = {"png_verified": len(rows), "png_errors": invalid, "language_json_entries": json_stats, "preview_paths": selected_paths}
    (preview / "validation.json").write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps({k: v for k, v in result.items() if k != "preview_paths"}, ensure_ascii=False))


if __name__ == "__main__":
    main()
