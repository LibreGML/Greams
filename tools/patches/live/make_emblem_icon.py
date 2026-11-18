#!/usr/bin/env python3
"""Make launcher icon from flag central emblem — full pattern visible."""
from __future__ import annotations

from pathlib import Path

import numpy as np
from PIL import Image, ImageDraw, ImageEnhance, ImageFilter

SRC = Path(
    r"C:\Users\17786\.cursor\projects\c-Users-17786-Mycode-AOE\assets"
    r"\fe337fced41456b84068771bf5381f9e-941e32cb-6d2c-433c-8924-db15149eaf0d.jpg"
)
ROOT = Path(r"C:\Users\17786\Mycode\AOE\AOE_unpacked\res")
WORK = Path(r"C:\Users\17786\Mycode\AOE\build\icon_work")

# Emblem diameter vs canvas — leave margin so circle/squircle never clips stars
EMBLEM_RATIO = 0.72


def extract_emblem(path: Path) -> tuple[Image.Image, tuple[int, int, int, int]]:
    src = Image.open(path).convert("RGBA")
    arr = np.array(src)
    r, g, b = arr[:, :, 0], arr[:, :, 1], arr[:, :, 2]
    white = (r > 170) & (g > 170) & (b > 170)
    ys, xs = np.where(white)
    pad = int(0.08 * max(src.size))
    x0 = max(0, int(xs.min()) - pad)
    y0 = max(0, int(ys.min()) - pad)
    x1 = min(src.width, int(xs.max()) + pad + 1)
    y1 = min(src.height, int(ys.max()) + pad + 1)
    crop = src.crop((x0, y0, x1, y1))
    # make square
    side = max(crop.size)
    bg = tuple(int(x) for x in arr[10, 10, :3]) + (255,)
    sq = Image.new("RGBA", (side, side), bg)
    sq.paste(crop, ((side - crop.width) // 2, (side - crop.height) // 2))
    return sq, bg


def compose_master(emblem: Image.Image, bg: tuple[int, int, int, int], size: int = 1024) -> Image.Image:
    canvas = Image.new("RGBA", (size, size), bg)
    emblem_size = int(size * EMBLEM_RATIO)
    emblem = emblem.resize((emblem_size, emblem_size), Image.Resampling.LANCZOS)
    emblem = ImageEnhance.Sharpness(emblem).enhance(1.25)
    emblem = ImageEnhance.Contrast(emblem).enhance(1.08)
    off = (size - emblem_size) // 2
    canvas.paste(emblem, (off, off))
    return canvas


def make_circle(img: Image.Image, size: int, soft: float = 1.2) -> Image.Image:
    base = img.resize((size, size), Image.Resampling.LANCZOS)
    mask = Image.new("L", (size, size), 0)
    draw = ImageDraw.Draw(mask)
    pad = max(1, size // 256)
    draw.ellipse((pad, pad, size - 1 - pad, size - 1 - pad), fill=255)
    if size >= 72:
        mask = mask.filter(ImageFilter.GaussianBlur(radius=soft if size >= 128 else 0.8))
    out = Image.new("RGBA", (size, size), (0, 0, 0, 0))
    out.paste(base, (0, 0), mask)
    return out


def make_adaptive_fg(img: Image.Image, size: int) -> Image.Image:
    # Keep full emblem inside adaptive safe zone (~66%): scale content to 66%
    canvas = Image.new("RGBA", (size, size), (0, 0, 0, 0))
    content_size = int(size * 0.66)
    # But our master already has emblem at 72% of full square; for FG layer
    # use the whole master scaled to fill safe-ish area without clipping.
    # Use 72% of adaptive layer so stars survive OEM masks.
    content_size = int(size * 0.78)
    content = img.resize((content_size, content_size), Image.Resampling.LANCZOS)
    off = (size - content_size) // 2
    canvas.paste(content, (off, off))
    return canvas


def write_adaptive_xml(path: Path) -> None:
    path.write_text(
        '<?xml version="1.0" encoding="utf-8"?>\n'
        '<adaptive-icon xmlns:android="http://schemas.android.com/apk/res/android">\n'
        '    <background android:drawable="@drawable/ic_launcher_background"/>\n'
        '    <foreground android:drawable="@drawable/ic_launcher_foreground"/>\n'
        "</adaptive-icon>\n",
        encoding="utf-8",
    )


def main() -> None:
    WORK.mkdir(parents=True, exist_ok=True)
    emblem, bg = extract_emblem(SRC)
    emblem.save(WORK / "emblem_crop.png")
    master = compose_master(emblem, bg, 1024)
    master.save(WORK / "emblem_icon_master.png")

    # For adaptive FG: put emblem alone on transparent, sized to stay fully visible
    # Recompose: navy BG solid + FG = emblem only centered at 72% of layer
    fg_master = Image.new("RGBA", (1024, 1024), (0, 0, 0, 0))
    e_size = int(1024 * 0.72)
    e = emblem.resize((e_size, e_size), Image.Resampling.LANCZOS)
    e = ImageEnhance.Sharpness(e).enhance(1.25)
    off = (1024 - e_size) // 2
    # paste emblem with its own opaque navy square — better paste only white emblem?
    # Keep full emblem tile including navy inside circle of stars for clarity
    fg_master.paste(e, (off, off))
    fg_master.save(WORK / "emblem_fg.png")

    legacy = {
        "drawable-mdpi-v4": 48,
        "drawable-hdpi-v4": 72,
        "drawable-xhdpi-v4": 96,
        "drawable-xxhdpi-v4": 144,
        "drawable-xxxhdpi-v4": 192,
    }
    for folder, sz in legacy.items():
        d = ROOT / folder
        d.mkdir(parents=True, exist_ok=True)
        make_circle(master, sz).save(d / "ic_launcher.png", optimize=True)
        print("legacy", folder, sz)

    (ROOT / "drawable").mkdir(exist_ok=True)
    Image.new("RGBA", (432, 432), bg).save(ROOT / "drawable" / "ic_launcher_background.png", optimize=True)
    make_adaptive_fg(master, 432).save(ROOT / "drawable" / "ic_launcher_foreground.png", optimize=True)

    for folder, sz in [
        ("drawable-mdpi-v4", 108),
        ("drawable-hdpi-v4", 162),
        ("drawable-xhdpi-v4", 216),
        ("drawable-xxhdpi-v4", 324),
        ("drawable-xxxhdpi-v4", 432),
    ]:
        Image.new("RGBA", (sz, sz), bg).save(ROOT / folder / "ic_launcher_background.png", optimize=True)
        make_adaptive_fg(master, sz).save(ROOT / folder / "ic_launcher_foreground.png", optimize=True)

    anydpi = ROOT / "mipmap-anydpi-v26"
    anydpi.mkdir(parents=True, exist_ok=True)
    write_adaptive_xml(anydpi / "ic_launcher.xml")
    write_adaptive_xml(anydpi / "ic_launcher_round.xml")

    for folder, sz in {
        "mipmap-mdpi": 48,
        "mipmap-hdpi": 72,
        "mipmap-xhdpi": 96,
        "mipmap-xxhdpi": 144,
        "mipmap-xxxhdpi": 192,
    }.items():
        d = ROOT / folder
        d.mkdir(parents=True, exist_ok=True)
        circ = make_circle(master, sz)
        circ.save(d / "ic_launcher.png", optimize=True)
        circ.save(d / "ic_launcher_round.png", optimize=True)

    make_circle(master, 512).save(WORK / "preview_emblem_circle.png")
    sq = master.resize((512, 512), Image.Resampling.LANCZOS)
    m = Image.new("L", (512, 512), 0)
    ImageDraw.Draw(m).rounded_rectangle((0, 0, 511, 511), radius=112, fill=255)
    m = m.filter(ImageFilter.GaussianBlur(1))
    prev = Image.new("RGBA", (512, 512), (0, 0, 0, 0))
    prev.paste(sq, (0, 0), m)
    prev.save(WORK / "preview_emblem_squircle.png")
    print("done")


if __name__ == "__main__":
    main()
