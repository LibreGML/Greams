from pathlib import Path
from PIL import Image, ImageEnhance, ImageDraw

src = Path(r"C:\Users\17786\.cursor\projects\c-Users-17786-Mycode-AOE\assets\aoe_icon_fused.jpg")
res = Path(r"C:\Users\17786\Mycode\AOE\AOE_unpacked\res")
out = Path(r"C:\Users\17786\Mycode\AOE\build\icon_work")
out.mkdir(parents=True, exist_ok=True)

im = Image.open(src).convert("RGBA").resize((1024, 1024), Image.Resampling.LANCZOS)
im = ImageEnhance.Sharpness(im).enhance(1.18)
im = ImageEnhance.Contrast(im).enhance(1.05)
im.save(out / "icon_fused_master.png")

sizes = {
    "drawable-mdpi-v4": 48,
    "drawable-hdpi-v4": 72,
    "drawable-xhdpi-v4": 96,
    "drawable-xxhdpi-v4": 144,
    "drawable-xxxhdpi-v4": 192,
}
for folder, sz in sizes.items():
    d = res / folder
    d.mkdir(parents=True, exist_ok=True)
    im.resize((sz, sz), Image.Resampling.LANCZOS).save(d / "ic_launcher.png", optimize=True)
    print(folder, sz)

for kind in ("circle", "squircle"):
    m = Image.new("L", (512, 512), 0)
    dr = ImageDraw.Draw(m)
    if kind == "circle":
        dr.ellipse((0, 0, 511, 511), fill=255)
    else:
        dr.rounded_rectangle((0, 0, 511, 511), radius=112, fill=255)
    canvas = Image.new("RGBA", (512, 512), (28, 28, 32, 255))
    canvas.paste(im.resize((512, 512), Image.Resampling.LANCZOS), (0, 0), m)
    canvas.save(out / f"preview_fused_{kind}.png")

print("ok")
