# -*- coding: utf-8 -*-
"""List base civ tags that look like real countries (no Extra_Tag suffix)."""
from pathlib import Path
import re

ROOT = Path(r"C:\Users\17786\Mycode\AOE")
bundle = (ROOT / "AOE_unpacked/assets/game/languages/civilizations/Bundle.properties").read_text(encoding="utf-8")
gov = (ROOT / "AOE_unpacked/assets/game/Governments.json").read_text(encoding="utf-8")
extras = set(re.findall(r'Extra_Tag:\s*"([^"]*)"', gov))
extras.discard("")

keys = {}
for line in bundle.splitlines():
    if "=" not in line or line.strip().startswith("#"):
        continue
    k, v = line.split("=", 1)
    keys[k.strip()] = v.strip()

# base keys = keys without _ExtraTag suffix matching current gov tags,
# OR keys with no underscore at all
bases = {}
for k, v in keys.items():
    if "_" in k:
        base, suf = k.rsplit("_", 1)
        if suf in extras:
            continue  # variant
    # candidate base
    if "_" not in k:
        bases[k] = v

# also include keys that are known country tags even with underscore if whole key is base like rus_w
print(f"plain base keys: {len(bases)}")

# print Europe/Asia-ish by scanning Chinese names
regions = {
    "EU": [],
    "AS": [],
    "AM": [],
    "OC": [],
    "AF": [],
    "OTHER": [],
}
eu_kw = ("欧洲","法兰西","德意","英格","联合王","爱尔兰","苏格兰","威","荷兰","比利时","卢森","瑞士","奥地","匈牙","波兰","捷","斯洛","罗马尼","保加","塞尔","克罗","波黑","阿尔巴","马其顿","希腊","芬兰","瑞典","挪威","丹麦","冰岛","爱沙","拉脱","立陶","白俄","乌克","摩尔","葡萄","西班","意大","梵蒂","马耳","塞浦","安道","摩纳","列支","圣马","科索沃","黑山","斯洛文","波黑","赫塞","加利西","卡塔","巴斯","普鲁","拜占","神圣罗","教廷","拉脱维","立陶宛")
# better: use curated tag lists from AoC2 standard tags

standard = {
"EU": "eng fra ger ita spa por net bel lux swi atr auhu hun pol cze rom bul gre ser cro slv bos alb mac mne kos ice swe nor den fin est lat lit belr ukr mol ire sco wal prus byza holy vat mal malta cyp and mon lic smr yugo sla slo husk flan wall neta nets batv crsl slok".split(),
"AS": "chi jap sok nok mon tur ira irq syr egy sau isr ind pak ban vie tha afg kaz uzb taj kyr trk aze arm geo leb jor yem oma qat kuw bah uae mya cam lao mal ins phi tai tib nep bhu sri sin brn mong qin ming kor man meng uygh".split(),
"AM": "usa can mex bra arg chl col per ven ecu bol uru par gua hon nic cos pan hai dom cub jam tri bahs gua els".split(),
"OC": "aus nzl fij png sol van sam ton nau".split(),
"AF": "soa eth egy mor alg tun lib sud nga ken gha sen zam zim ang moz mad bot nam".split(),
}

# fix duplicates / wrong
already = {c["tag"] if False else None}

managed_path = ROOT / "tools/rebuild_civ_gov_names.py"
text = managed_path.read_text(encoding="utf-8")
managed = set(re.findall(r'"tag":\s*"([^"]+)"', text))
print(f"already managed: {len(managed)}")

for region, tags in standard.items():
    print(f"\n==== {region} ====")
    for t in tags:
        base = keys.get(t)
        status = "MANAGED" if t in managed else ("HAS" if base else "MISSING")
        # count existing variants
        nvar = sum(1 for k in keys if k == t or (k.startswith(t + "_") and k.rsplit("_", 1)[-1] in extras))
        if base or t in managed:
            print(f"  {t:8} {status:8} nvar={nvar:2}  {base or ''}")

# dump ALL plain bases with short Chinese names that look national (length)
print("\n==== sample unmanged bases with 国/共和国/王国/联邦 ====")
n = 0
for t, v in sorted(bases.items(), key=lambda x: x[0]):
    if t in managed:
        continue
    if any(x in v for x in ("共和国", "王国", "联邦", "帝国", "合众", "公国", "酋长", "汗国", "苏丹", "邦")) or (2 <= len(v) <= 12 and not v.startswith("rf")):
        if len(t) <= 5 and t.isalpha():
            print(f"  {t} = {v}")
            n += 1
            if n > 200:
                break
