# -*- coding: utf-8 -*-
"""Export civilization display names keyed by Extra_Tag / government."""
from __future__ import annotations

import csv
import re
from collections import OrderedDict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
BUNDLE = ROOT / "AOE_unpacked/assets/game/languages/civilizations/Bundle.properties"
GOV = ROOT / "AOE_unpacked/assets/game/Governments.json"
OUT_MD = ROOT / "docs/CIV_NAMES_BY_GOVERNMENT.md"
OUT_CSV = ROOT / "docs/civ_names_by_government.csv"


def parse_gov_tags(text: str) -> OrderedDict[str, str]:
    names = re.findall(r'Name:\s*"([^"]*)"', text)
    extras = re.findall(r'Extra_Tag:\s*"([^"]*)"', text)
    out: OrderedDict[str, str] = OrderedDict()
    for name, extra in zip(names, extras):
        out[extra] = name
    return out


def parse_bundle(text: str) -> OrderedDict[str, OrderedDict[str, str]]:
    by_civ: OrderedDict[str, OrderedDict[str, str]] = OrderedDict()
    for line in text.splitlines():
        line = line.strip()
        if not line or line.startswith("#") or "=" not in line:
            continue
        key, val = line.split("=", 1)
        key, val = key.strip(), val.strip()
        if "_" in key:
            # split only last underscore segment as Extra_Tag candidate
            base, suf = key.rsplit("_", 1)
        else:
            base, suf = key, ""
        by_civ.setdefault(base, OrderedDict())[suf] = val
    return by_civ


def main() -> None:
    tag_to_gov = parse_gov_tags(GOV.read_text(encoding="utf-8"))
    by_civ = parse_bundle(BUNDLE.read_text(encoding="utf-8"))

    rows: list[tuple[str, str, str, str]] = []
    md: list[str] = [
        "# 文明在不同政体下的显示名",
        "",
        "来源：`game/languages/civilizations/Bundle.properties`",
        "",
        "规则：换政体时合成 Tag = `真实Tag + '_' + Extra_Tag`，用该键查显示名；没有专用条目则用基础 Tag 名。",
        "",
        "## Extra_Tag ↔ 现行政体",
        "",
        "| Extra_Tag | 政体 |",
        "|---|---|",
    ]
    for extra, name in tag_to_gov.items():
        t = "(空)" if extra == "" else extra
        md.append(f"| `{t}` | {name} |")
    md += ["", "## 有专用政体名称的文明", ""]

    variant_count = 0
    for civ, variants in by_civ.items():
        if not any(s != "" for s in variants):
            continue
        variant_count += 1
        base_name = variants.get("", civ)
        md.append(f"### {civ} — {base_name}")
        md.append("")
        md.append("| Extra_Tag | 政体 | 显示名 |")
        md.append("|---|---|---|")
        for suf, disp in variants.items():
            gov_name = tag_to_gov.get(suf, "(旧/未映射 Extra_Tag)")
            tag_disp = "(空)" if suf == "" else suf
            md.append(f"| `{tag_disp}` | {gov_name} | {disp} |")
            rows.append((civ, suf, gov_name, disp))
        md.append("")

    OUT_MD.write_text("\n".join(md) + "\n", encoding="utf-8")
    with OUT_CSV.open("w", encoding="utf-8-sig", newline="") as f:
        w = csv.writer(f)
        w.writerow(["civ_tag", "extra_tag", "government", "display_name"])
        w.writerows(rows)

    print(f"variant civs={variant_count} rows={len(rows)}")
    print(f"wrote {OUT_MD}")
    print(f"wrote {OUT_CSV}")
    for sample in ("rus", "chi", "ger", "fra", "usa", "jap", "pol", "ita"):
        if sample not in by_civ:
            continue
        print(f"==== {sample} ====")
        for suf, disp in by_civ[sample].items():
            g = tag_to_gov.get(suf, "?")
            print(f"  [{suf or 'base'}] {g} -> {disp}")


if __name__ == "__main__":
    main()
