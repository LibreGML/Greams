# -*- coding: utf-8 -*-
from collections import defaultdict
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'patches' / 'live'))
from scenario_gov_lib import *

extras = load_gov_extras()
exset = set(extras)
bundle = load_bundle()
m = defaultdict(list)
for d in scenario_dirs():
    info = scenario_info(d)
    main = scenario_main_file(d)
    if not main:
        continue
    seen = set()
    for off, ln, s in extract_tc_strings(main.read_bytes()):
        if not is_civ_tag(s, exset) or s in seen:
            continue
        seen.add(s)
        name = bundle.get(s, "")
        if (
            s.startswith("chi")
            or s.startswith("ccp")
            or s.startswith("kmt")
            or "苏维" in name
            or "中华" in name
            or "国民政府" in name
            or s in ("qin", "ming", "man", "prc")
        ):
            base, suf = split_tag(s, exset)
            gov = extras.get(suf, f"?{suf}")
            m[s].append(f"{d.name}@{info['year']}:{gov}")

for t, sc in sorted(m.items()):
    print(f"{t:20} | {bundle.get(t,'?'):30} | {'; '.join(sc[:10])}")
