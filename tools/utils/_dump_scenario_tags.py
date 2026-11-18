# -*- coding: utf-8 -*-
from collections import Counter, defaultdict
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'patches' / 'live'))
from scenario_gov_lib import (
    extract_tc_strings,
    is_civ_tag,
    load_gov_extras,
    scenario_dirs,
    scenario_info,
    scenario_main_file,
    split_tag,
)

extras = load_gov_extras()
exset = set(extras)

# dump per-scenario + aggregate wrong-looking patterns
agg = Counter()
by_year = defaultdict(list)

for d in scenario_dirs():
    info = scenario_info(d)
    main = scenario_main_file(d)
    if not main:
        print("NO MAIN", d.name)
        continue
    data = main.read_bytes()
    strings = extract_tc_strings(data)
    civs = []
    seen = set()
    for off, ln, s in strings:
        if not is_civ_tag(s, exset):
            continue
        if s in seen:
            continue
        seen.add(s)
        civs.append(s)
        agg[s] += 1
    y = info["year"]
    print(f"\n## {d.name} | {info['name']} | year={y} | n={len(civs)}")
    # highlight chi* and interesting
    for t in civs:
        base, suf = split_tag(t, exset)
        if base in ("chi", "cn", "ccp", "sov", "rus", "ger", "jap", "ita", "spa", "usa", "fra", "eng", "uni") or "苏维" in t:
            gov = extras.get(suf, f"?/{suf}")
            print(f"  {t:16} -> {gov}")

print("\n==== most common tags ====")
for t, n in agg.most_common(40):
    print(n, t)

print("\n==== tags with 毛 or personalist-ish ====")
for t, n in sorted(agg.items()):
    if "_毛" in t or t.endswith("_毛") or "_长" in t or "_jf" in t:
        print(n, t)
