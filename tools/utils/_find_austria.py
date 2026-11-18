# -*- coding: utf-8 -*-
from pathlib import Path

bundle = Path(r"C:\Users\17786\Mycode\AOE\AOE_unpacked\assets\game\languages\civilizations\Bundle.properties").read_text(encoding="utf-8")
keys = {}
for line in bundle.splitlines():
    if "=" in line and not line.strip().startswith("#"):
        k, v = line.split("=", 1)
        keys[k.strip()] = v.strip()

for needle in ("奥", "奥地利", "Austria", "austria"):
    hits = [(k, v) for k, v in keys.items() if needle in v or needle.lower() in k.lower()]
    print("===", needle, len(hits))
    for k, v in hits[:40]:
        print(f"  {k} = {v}")

# also Britain / England / UK related
for needle in ("英", "联合王国", "不列颠"):
    hits = [(k, v) for k, v in keys.items() if needle in v and "_" not in k]
    print("=== base", needle)
    for k, v in hits[:30]:
        print(f"  {k} = {v}")
