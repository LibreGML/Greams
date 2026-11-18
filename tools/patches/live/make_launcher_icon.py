#!/usr/bin/env python3
"""Build circular + adaptive Android launcher icons from source art."""
from __future__ import annotations

from pathlib import Path

from PIL import Image, ImageDraw, ImageEnhance, ImageFilter

SRC = Path(
    r"C:\Users\17786\.cursor\projects\c-Users-17786-Mycode-AOE\assets"
    r"\71661911741b3eb8cc39cf1430e71620-81813a2f-d0dc-4ace-bc54-a92824d3e591.jpg"
)
ROOT = Path(r"C:\Users\17786\Mycode\AOE\AOE_unpacked\res")
WORK = Path(r"C:\Users\17786\Mycode\AOE\build\icon_work")


def square_master(path: Path, size: int = 1024) -> Image.Image:
    src = Image.open(path).convert("RGBA")
    w, h = src.size
    side = min(w, h)
    src = src.crop(((w - side) // 2, (h - side) // 2, (w + side) // 2, (h + side) // 2))
    src = src.resize((size, size), Image.Resampling.LANCZOS)
    src = ImageEnhance.Sharpness(src).enhance(1.18)
    src = ImageEnhance.Contrast(src).enhance(1.05)
    return src


def make_circle(img: Image.Image, size: int, soft: float = 1.2) -> Image.Image:
    base = img.resize((size, size), Image.Resampling.LANCZOS)
    canvas = Image.new("RGBA", (size, size), (0, 0, 0, 0))
    inner = int(size * 0.96)
    content = base.resize((inner, inner), Image.Resampling.LANCZOS)
    off = (size - inner) // 2
    canvas.paste(content, (off, off))

    mask = Image.new("L", (size, size), 0)
    draw = ImageDraw.Draw(mask)
    pad = max(1, size // 256)
    draw.ellipse((pad, pad, size - 1 - pad, size - 1 - pad), fill=255)
    if size >= 72:
        radius = soft if size >= 128 else 0.8
        mask = mask.filter(ImageFilter.GaussianBlur(radius=radius))

    out = Image.new("RGBA", (size, size), (0, 0, 0, 0))
    out.paste(canvas, (0, 0), mask)
    return out


def make_adaptive_fg(img: Image.Image, size: int) -> Image.Image:
    canvas = Image.new("RGBA", (size, size), (0, 0, 0, 0))
    content_size = int(size * 0.92)
    content = img.resize((content_size, content_size), Image.Resampling.LANCZOS)
    off = (size - content_size) // 2
    canvas.paste(content, (off, off))
    return canvas


def make_adaptive_bg(size: int, color: tuple[int, int, int, int]) -> Image.Image:
    return Image.new("RGBA", (size, size), color)


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
    src = square_master(SRC)
    src.save(WORK / "icon_src_1024.png")

    px = src.getpixel((20, 20))
    bg_rgb = (max(8, px[0]), max(12, px[1]), max(40, px[2]), 255)
    print("bg", bg_rgb)

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
        icon = make_circle(src, sz)
        icon.save(d / "ic_launcher.png", optimize=True)
        print("legacy", folder, sz)

    (ROOT / "drawable").mkdir(exist_ok=True)
    make_adaptive_fg(src, 432).save(ROOT / "drawable" / "ic_launcher_foreground.png", optimize=True)
    make_adaptive_bg(432, bg_rgb).save(ROOT / "drawable" / "ic_launcher_background.png", optimize=True)

    for folder, sz in [
        ("drawable-mdpi-v4", 108),
        ("drawable-hdpi-v4", 162),
        ("drawable-xhdpi-v4", 216),
        ("drawable-xxhdpi-v4", 324),
        ("drawable-xxxhdpi-v4", 432),
    ]:
        make_adaptive_fg(src, sz).save(ROOT / folder / "ic_launcher_foreground.png", optimize=True)
        make_adaptive_bg(sz, bg_rgb).save(ROOT / folder / "ic_launcher_background.png", optimize=True)

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
        circ = make_circle(src, sz)
        circ.save(d / "ic_launcher.png", optimize=True)
        circ.save(d / "ic_launcher_round.png", optimize=True)

    make_circle(src, 512, soft=1.5).save(WORK / "preview_final_circle.png")
    sq = src.resize((512, 512), Image.Resampling.LANCZOS)
    mask = Image.new("L", (512, 512), 0)
    ImageDraw.Draw(mask).rounded_rectangle((0, 0, 511, 511), radius=112, fill=255)
    mask = mask.filter(ImageFilter.GaussianBlur(1))
    prev = Image.new("RGBA", (512, 512), (0, 0, 0, 0))
    prev.paste(sq, (0, 0), mask)
    prev.save(WORK / "preview_final_squircle.png")
    print("done")


if __name__ == "__main__":
    main()
