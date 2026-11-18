# -*- coding: utf-8 -*-
from pathlib import Path
import re, json

root = Path(r"C:\Users\17786\Mycode\AOE\AOE_unpacked\assets\map\TZ\scenarios")
gov = (Path(r"C:\Users\17786\Mycode\AOE\AOE_unpacked\assets\game\Governments.json")).read_text(encoding="utf-8")
names = re.findall(r'Name:\s*"([^"]*)"', gov)
extras = re.findall(r'Extra_Tag:\s*"([^"]*)"', gov)
ex2name = {e: n for e, n in zip(extras, names)}
bundle = {}
for line in Path(r"C:\Users\17786\Mycode\AOE\AOE_unpacked\assets\game\languages\civilizations\Bundle.properties").read_text(encoding="utf-8").splitlines():
    if "=" in line and not line.strip().startswith("#"):
        k, v = line.split("=", 1)
        bundle[k.strip()] = v.strip()


def extract_tags(path: Path):
    b = path.read_bytes()
    tags = []
    i = 0
    while i < len(b) - 3:
        if b[i] == 0x74:
            ln = int.from_bytes(b[i + 1 : i + 3], "big")
            if 1 <= ln <= 40:
                s = b[i + 3 : i + 3 + ln]
                try:
                    t = s.decode("utf-8")
                except Exception:
                    i += 1
                    continue
                if re.fullmatch(r"[A-Za-z0-9_()\u4e00-\u9fff.+-]{1,30}", t) and "jakowski" not in t and not t.startswith("age."):
                    tags.append(t)
                i += 3 + ln
                continue
        i += 1
    out, seen = [], set()
    for t in tags:
        if t in seen or any(x in t for x in ("Scenario", "GameData", "ArrayList", "Integer", "Float", "String")):
            continue
        seen.add(t)
        out.append(t)
    return out


def gov_of(tag: str):
    if "_" in tag:
        base, suf = tag.rsplit("_", 1)
        if suf in ex2name:
            return base, suf, ex2name[suf], bundle.get(tag, bundle.get(base, "?"))
    return tag, "", ex2name.get("", "议会制民主政体"), bundle.get(tag, "?")


scens = [p for p in root.iterdir() if p.is_dir()]
print("scenario count", len(scens))
for name in ["2020", "1936", "1914", "1945"]:
    d = root / name
    main = d / name
    info = d / f"{name}_INFO.json"
    title = "?"
    if info.exists():
        try:
            title = json.loads(info.read_text(encoding="utf-8"))["Data_Scenario_Info"][0]["Name"]
        except Exception:
            pass
    tags = extract_tags(main)
    print(f"\n==== {name} {title} civs~{len(tags)} ====")
    for t in tags[:12]:
        base, suf, govn, disp = gov_of(t)
        print(f"  {t:12} | {govn:18} | {disp}")
