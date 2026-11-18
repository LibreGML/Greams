# -*- coding: utf-8 -*-
from pathlib import Path
import re

ROOT = Path(r"C:\Users\17786\Mycode\AOE")
gov = (ROOT / "AOE_unpacked/assets/game/Governments.json").read_text(encoding="utf-8")
names = re.findall(r'Name:\s*"([^"]*)"', gov)
extras = re.findall(r'Extra_Tag:\s*"([^"]*)"', gov)
for i, (n, e) in enumerate(zip(names, extras)):
    print(f"{i:02d} [{e}] {n}")

bundle = (ROOT / "AOE_unpacked/assets/game/languages/civilizations/Bundle.properties").read_text(encoding="utf-8")
keys = {}
for line in bundle.splitlines():
    if "=" in line and not line.strip().startswith("#"):
        k, v = line.split("=", 1)
        keys[k.strip()] = v.strip()

tags = [
    "rus", "chi", "ger", "fra", "eng", "gbr", "usa", "jap", "pol", "ita", "spa", "por",
    "net", "swe", "nor", "den", "fin", "aus", "hun", "cze", "rom", "gre", "ser", "bul",
    "ukr", "tur", "ira", "irq", "syr", "egy", "isr", "sau", "ind", "pak", "vie", "tha",
    "kor", "sok", "nok", "can", "mex", "bra", "arg", "chl", "yugo", "prus", "byza",
    "qin", "ming", "holy", "vat", "sco", "ire", "bel", "lux", "swi", "auhu", "eth",
    "soa", "saf", "per", "col", "hol", "ned", "bri", "uk", "romw", "spqr",
]
for t in tags:
    base = keys.get(t, "MISSING")
    vars_ = sorted(k for k in keys if k == t or k.startswith(t + "_"))
    print(f"{t}: BASE={base} n={len(vars_)} -> {vars_[:25]}")
