#!/usr/bin/env python3
"""Build ultra-sharp emblem launcher icons from crisp master art."""
from __future__ import annotations

from pathlib import Path

from PIL import Image, ImageDraw, ImageEnhance, ImageFilter, ImageOps

SRC = Path(r"C:\Users\17786\.cursor\projects\c-Users-17786-Mycode-AOE\assets\emblem_sharp_icon.jpg")
ROOT = Path(r"C:\Users\17786\Mycode\AOE\AOE_unpacked\res")
WORK = Path(r"C:\Users\17786\Mycode\AOE\build\icon_work")
BG = (0, 0, 86, 255)


def load_master(size: int = 1024) -> Image.Image:
    im = Image.open(SRC).convert("RGBA")
    w, h = im.size
    side = min(w, h)
    im = im.crop(((w - side) // 2, (h - side) // 2, (w + side) // 2, (h + side) // 2))
    # High-quality downsample/upsample to master
    im = im.resize((size, size), Image.Resampling.LANCZOS)
    # Unsharp-style clarity without halos
    im = ImageEnhance.Sharpness(im).enhance(1.65)
    im = ImageEnhance.Contrast(im).enhance(1.12)
    return im


def make_circle(img: Image.Image, size: int) -> Image.Image:
    # Nearest for tiny sizes keeps edges crisp; LANCZOS for larger
    resample = Image.Resampling.LANCZOS if size >= 96 else Image.Resampling.LANCZOS
    base = img.resize((size, size), resample)
    # Very light AA only — avoid previous soft blur that made icons muddy
    mask = Image.new("L", (size, size), 0)
    draw = ImageDraw.Draw(mask)
    draw.ellipse((0, 0, size - 1, size - 1), fill=255)
    if size >= 96:
        mask = mask.filter(ImageFilter.GaussianBlur(radius=0.6))
    out = Image.new("RGBA", (size, size), (0, 0, 0, 0))
    out.paste(base, (0, 0), mask)
    return out


def make_adaptive_fg(img: Image.Image, size: int) -> Image.Image:
    # Full emblem visible: use 74% so OEM circle/squircle never clips stars
    canvas = Image.new("RGBA", (size, size), (0, 0, 0, 0))
    content = int(size * 0.74)
    layer = img.resize((content, content), Image.Resampling.LANCZOS)
    layer = ImageEnhance.Sharpness(layer).enhance(1.25)
    off = (size - content) // 2
    canvas.paste(layer, (off, off))
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


def save_png(im: Image.Image, path: Path) -> None:
    # Optimize without palette quantization that kills sharpness
    im.save(path, format="PNG", optimize=True, compress_level=6)


def main() -> None:
    WORK.mkdir(parents=True, exist_ok=True)
    master = load_master(1024)
    save_png(master, WORK / "emblem_sharp_master.png")

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
        save_png(make_circle(master, sz), d / "ic_launcher.png")
        print("legacy", folder, sz)

    (ROOT / "drawable").mkdir(exist_ok=True)
    save_png(Image.new("RGBA", (432, 432), BG), ROOT / "drawable" / "ic_launcher_background.png")
    save_png(make_adaptive_fg(master, 432), ROOT / "drawable" / "ic_launcher_foreground.png")

    for folder, sz in [
        ("drawable-mdpi-v4", 108),
        ("drawable-hdpi-v4", 162),
        ("drawable-xhdpi-v4", 216),
        ("drawable-xxhdpi-v4", 324),
        ("drawable-xxxhdpi-v4", 432),
    ]:
        save_png(Image.new("RGBA", (sz, sz), BG), ROOT / folder / "ic_launcher_background.png")
        save_png(make_adaptive_fg(master, sz), ROOT / folder / "ic_launcher_foreground.png")

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
        save_png(circ, d / "ic_launcher.png")
        save_png(circ, d / "ic_launcher_round.png")

    save_png(make_circle(master, 512), WORK / "preview_emblem_sharp_circle.png")
    print("done")


if __name__ == "__main__":
    main()
