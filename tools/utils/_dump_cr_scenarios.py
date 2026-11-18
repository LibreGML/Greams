# -*- coding: utf-8 -*-
import re
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'patches' / 'live'))
from scenario_gov_lib import *

CR = [
    "Great_Proletarian_Cultural_Revolution",
    "1721835430051fmfkwqvv",
    "cnwar",
]
extras = load_gov_extras()
exset = set(extras)
bundle = load_bundle()

for name in CR:
    d = SCEN_ROOT / name
    if not d.exists():
        print("MISSING", name)
        continue
    info = scenario_info(d)
    main = scenario_main_file(d)
    print(f"\n======== {name} | {info.get('name')} | year={info.get('year')} ========")
    tags = []
    seen = set()
    for off, ln, s in extract_tc_strings(main.read_bytes()):
        if not is_civ_tag(s, exset) or s in seen:
            continue
        if re.fullmatch(r"\d{10,}[a-z]+", s):
            continue
        seen.add(s)
        tags.append(s)
    print(f"civs={len(tags)}")
    for t in tags:
        base, suf = split_tag(t, exset)
        gov = extras.get(suf, f"?/{suf}" if suf else extras.get("", "议会制民主政体"))
        disp = bundle.get(t) or bundle.get(base) or "?"
        print(f"  {t:20} | {gov:18} | {disp}")
