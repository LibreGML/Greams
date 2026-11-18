#!/usr/bin/env python3
from __future__ import annotations

from pathlib import Path

import numpy as np
from PIL import Image, ImageDraw, ImageEnhance, ImageFilter

SRC = Path(
    r"C:\Users\17786\.cursor\projects\c-Users-17786-Mycode-AOE\assets\emblem_vector_crisp.jpg"
)
ROOT = Path(r"C:\Users\17786\Mycode\AOE\AOE_unpacked\res")
WORK = Path(r"C:\Users\17786\Mycode\AOE\build\icon_work")
BG = np.array([0, 0, 86], dtype=np.float32)
BG_TUPLE = (0, 0, 86, 255)
ADAPTIVE_XML = """<?xml version="1.0" encoding="utf-8"?>
<adaptive-icon xmlns:android="http://schemas.android.com/apk/res/android">
    <background android:drawable="@drawable/ic_launcher_background"/>
    <foreground android:drawable="@drawable/ic_launcher_foreground"/>
</adaptive-icon>
"""


def crispify(path: Path, size: int = 1024) -> Image.Image:
    im = Image.open(path).convert("RGB")
    w, h = im.size
    side = min(w, h)
    im = im.crop(((w - side) // 2, (h - side) // 2, (w + side) // 2, (h + side) // 2))
    im = im.resize((size * 2, size * 2), Image.Resampling.LANCZOS)
    arr = np.asarray(im).astype(np.float32)
    lum = 0.299 * arr[:, :, 0] + 0.587 * arr[:, :, 1] + 0.114 * arr[:, :, 2]
    t = np.clip((lum - 90.0) / 80.0, 0.0, 1.0) ** 0.7
    out = np.zeros_like(arr)
    for i in range(3):
        out[:, :, i] = BG[i] * (1.0 - t) + 255.0 * t
    hi = Image.fromarray(out.astype(np.uint8), "RGB")
    hi = hi.filter(ImageFilter.UnsharpMask(radius=1.2, percent=170, threshold=2))
    hi = hi.resize((size, size), Image.Resampling.LANCZOS)
    hi = ImageEnhance.Sharpness(hi).enhance(1.4)
    hi = ImageEnhance.Contrast(hi).enhance(1.18)
    return hi.convert("RGBA")


def harden_small(img: Image.Image) -> Image.Image:
    a = np.asarray(img.convert("RGB")).astype(np.float32)
    lum = 0.299 * a[:, :, 0] + 0.587 * a[:, :, 1] + 0.114 * a[:, :, 2]
    t = np.clip((lum - 100.0) / 90.0, 0.0, 1.0) ** 0.6
    o = np.zeros_like(a)
    for i in range(3):
        o[:, :, i] = BG[i] * (1.0 - t) + 255.0 * t
    return Image.fromarray(o.astype(np.uint8), "RGB").convert("RGBA")


def make_circle(img: Image.Image, size: int) -> Image.Image:
    base = img.resize((size, size), Image.Resampling.LANCZOS)
    if size <= 96:
        base = harden_small(base)
    mask = Image.new("L", (size, size), 0)
    ImageDraw.Draw(mask).ellipse((0, 0, size - 1, size - 1), fill=255)
    if size >= 128:
        mask = mask.filter(ImageFilter.GaussianBlur(radius=0.4))
    out = Image.new("RGBA", (size, size), (0, 0, 0, 0))
    out.paste(base, (0, 0), mask)
    return out


def make_fg(img: Image.Image, size: int) -> Image.Image:
    canvas = Image.new("RGBA", (size, size), (0, 0, 0, 0))
    c = int(size * 0.74)
    layer = img.resize((c, c), Image.Resampling.LANCZOS)
    layer = ImageEnhance.Sharpness(layer).enhance(1.25)
    off = (size - c) // 2
    canvas.paste(layer, (off, off))
    return canvas


def save(im: Image.Image, path: Path) -> None:
    im.save(path, format="PNG", compress_level=1)


def main() -> None:
    WORK.mkdir(parents=True, exist_ok=True)
    master = crispify(SRC, 1024)
    save(master, WORK / "emblem_ultrasharp_master.png")

    for folder, sz in {
        "drawable-mdpi-v4": 48,
        "drawable-hdpi-v4": 72,
        "drawable-xhdpi-v4": 96,
        "drawable-xxhdpi-v4": 144,
        "drawable-xxxhdpi-v4": 192,
    }.items():
        d = ROOT / folder
        d.mkdir(parents=True, exist_ok=True)
        save(make_circle(master, sz), d / "ic_launcher.png")
        print("legacy", folder, sz)

    (ROOT / "drawable").mkdir(exist_ok=True)
    save(Image.new("RGBA", (432, 432), BG_TUPLE), ROOT / "drawable" / "ic_launcher_background.png")
    save(make_fg(master, 432), ROOT / "drawable" / "ic_launcher_foreground.png")

    for folder, sz in [
        ("drawable-mdpi-v4", 108),
        ("drawable-hdpi-v4", 162),
        ("drawable-xhdpi-v4", 216),
        ("drawable-xxhdpi-v4", 324),
        ("drawable-xxxhdpi-v4", 432),
    ]:
        save(Image.new("RGBA", (sz, sz), BG_TUPLE), ROOT / folder / "ic_launcher_background.png")
        save(make_fg(master, sz), ROOT / folder / "ic_launcher_foreground.png")

    anydpi = ROOT / "mipmap-anydpi-v26"
    anydpi.mkdir(parents=True, exist_ok=True)
    (anydpi / "ic_launcher.xml").write_text(ADAPTIVE_XML, encoding="utf-8")
    (anydpi / "ic_launcher_round.xml").write_text(ADAPTIVE_XML, encoding="utf-8")

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
        save(circ, d / "ic_launcher.png")
        save(circ, d / "ic_launcher_round.png")

    save(make_circle(master, 512), WORK / "preview_ultrasharp.png")
    print("done")


if __name__ == "__main__":
    main()
