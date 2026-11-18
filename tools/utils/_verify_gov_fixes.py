# -*- coding: utf-8 -*-
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'patches' / 'live'))
from scenario_gov_lib import *

extras = load_gov_extras()
exset = set(extras)
bundle = load_bundle()

checks = [
    ("1919", ["chss", "chss_c", "chss_毛"]),
    ("1936", ["ccpah", "ccpah_c", "ccpah_毛", "ger_f", "rus_c", "jap_J", "jap_f", "uni_1", "uni_m"]),
    ("1940", ["ccpah_毛", "ccpah_c", "ger_f"]),
    ("1914", ["rus_bgd", "rus_m", "ger_ys", "ger_m", "chi_jf", "chi_1", "uni_1", "uni_m"]),
    ("1946", ["chi_c", "chi_训", "spa_f", "usa_稻", "usa_r"]),
    ("2020", ["usa_稻", "chi_c", "jap_1", "ger_盖"]),
]
for folder, want in checks:
    d = SCEN_ROOT / folder
    main = scenario_main_file(d)
    info = scenario_info(d)
    tags = []
    seen = set()
    for off, ln, s in extract_tc_strings(main.read_bytes()):
        if is_civ_tag(s, exset) and s not in seen:
            seen.add(s)
            tags.append(s)
    print(f"\n==== {folder} y={info['year']} ====")
    for w in want:
        print(f"  {'OK' if w in tags else '--'} {w}")
    # show china-related
    for t in tags:
        if t.startswith(("chi", "chss", "ccp", "man", "ger", "jap", "rus", "usa", "uni")):
            base, suf = split_tag(t, exset)
            print(f"  {t:14} {extras.get(suf,'?'+suf):16} {bundle.get(t,'?')}")
