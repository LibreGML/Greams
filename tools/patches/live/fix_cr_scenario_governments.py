# -*- coding: utf-8 -*-
"""
文革相关剧本政体修复：
- cnwar（文革内战半架空）：人民民主(_马)=造反派→马列(_c)；贵族共和(_保)=保守派→军部支配(_J)
- 文革架空：造反派(_毛等)→_c；保守派(_稻等)→_J
- 1966 原版 + 半架空/架空：其余国家按 ~1968 史实校正
主题：马列主义 vs 修正主义/保守派军政
"""
from __future__ import annotations

import argparse
import re
import shutil
from collections import Counter
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).resolve().parent))
from scenario_gov_lib import (
    SCEN_ROOT,
    extract_tc_strings,
    is_civ_tag,
    load_bundle,
    load_gov_extras,
    replace_tc_string,
    scenario_info,
    scenario_main_file,
    split_tag,
)
from fix_scenario_governments import correct_extra, make_new_tag

CR_SCENARIOS = [
    "cnwar",  # 文革内战半架空
    "1721835430051fmfkwqvv",  # 文革架空
    "Great_Proletarian_Cultural_Revolution",  # 1966 原版
]

# 点名造反派（→ c）
REBEL_BASES = {
    "shq",  # 上海人民公社
    "Wuhangzs",  # 武汉工人造反总司令部
    "cntgmidcrsz",  # 中央文革小组
    "LingB",  # 林彪东北军（架空造反侧）
    "chss",  # 中华苏维埃
    "ccpyn",  # 西南革命军区
}
# 点名保守派/军政（→ J）
CONSERV_BASES = {
    "Liudeng",  # 刘邓
    "bspxslhh",  # 保守派学生联合会
    "baiwanxs",  # 百万雄师
    "yejianying",  # 内蒙古军政府 / 叶剑英侧
}


def is_hash_faction(tag: str) -> bool:
    base = tag.rsplit("_", 1)[0] if "_" in tag else tag
    return bool(re.match(r"^1721\d{6,}[a-z]*$", base))


def cr_faction_extra(tag: str, exset: set[str], scenario: str) -> str | None:
    """文革中国内战派系专用映射。返回目标 Extra_Tag 或 None。"""
    base, cur = split_tag(tag, exset)

    # 半架空：马→c，保→J
    if scenario == "cnwar":
        if cur == "马" or base in REBEL_BASES:
            return "c"
        if cur == "保" or base in CONSERV_BASES:
            return "J"
        if cur == "毛" and (base in REBEL_BASES or is_hash_faction(tag)):
            return "c"
        if cur == "h" and base in CONSERV_BASES:  # yejianying_h
            return "J"
        if base == "yejianying":
            return "J"
        if base == "shq":
            return "c"
        if base == "chifs":  # 中华自由革命军
            return "u"
        return None

    # 文革架空：毛/造反→c，稻/保守→J
    if scenario == "1721835430051fmfkwqvv":
        if base in REBEL_BASES or cur == "毛":
            return "c"
        if base in CONSERV_BASES or (cur == "稻" and base in CONSERV_BASES | {"yejianying", "bspxslhh", "baiwanxs", "Liudeng"}):
            return "J"
        if base in CONSERV_BASES:
            return "J"
        if cur == "稻" and base in CONSERV_BASES:
            return "J"
        if base == "shq" or base == "Wuhangzs" or base == "cntgmidcrsz" or base == "LingB":
            return "c"
        if base in ("yejianying", "bspxslhh", "baiwanxs", "Liudeng"):
            return "J"
        if base == "chifs":
            return "u"
        if base == "ccpyn":
            return "c"
        if cur == "布":
            return "c"
        return None

    # 1966 原版：上海公社等
    if scenario == "Great_Proletarian_Cultural_Revolution":
        if base == "shq":
            return "c"
        if base == "chi":
            return "c"
        return None

    return None


def world_1968_extra(tag: str, exset: set[str], bundle: dict) -> str | None:
    """对非中国派系的世界国家按 1968 史实校正。"""
    base, cur = split_tag(tag, exset)
    # 跳过文革派系自定义长 tag / 已知派系
    if is_hash_faction(tag) or base in REBEL_BASES | CONSERV_BASES:
        return None
    if base in ("shq", "chifs", "chss", "cntgmidcrsz", "ganshejvn", "sls", "ccpyn"):
        return None

    # 先走通用历史引擎
    e = correct_extra(tag, 1968, exset, bundle)
    if e is not None:
        return e

    # 1968 补丁
    patches = {
        "cub": "c",
        "yugo": "工",  # 自治
        "alb": "c",
        "nok": "c",
        "vie": "c",
        "lao": "c",
        "mon": "c",
        "ger": "c" if cur == "c" else None,  # 东德保持
        "ger2": "",  # 西德议会民主
        "spa": "f",
        "por": "gt",
        "gre": "军",
        "ita": "" if cur != "f" else None,  # 1968 意已非法西斯；若误标 f 则改
        "usa": "稻",
        "uni": "1",
        "eng": "1",
        "jap": "1",
        "can": "1",
        "aus": "1",
        "nez": "1",
        "swe": "1",
        "nor": "1",
        "den": "1",
        "bel": "1",
        "net": "1",
        "hol": "1",
        "lux": "1",
        "and": "1",
        "moc": "1",
        "tha": "1",
        "tha2": "1",
        "bhu": "1",
        "nep": "1",
        "mor": "1",
        "jor": "1",
        "sau": "ac",
        "oma2": "家",
        "tur": "凯",
        "ira": "ys",  # 巴列维
        "irq": "军",  # 1968 政变年军政府倾向
        "egy": "na",
        "syr": "fu",
        "bra": "军",  # 军政府
        "arg": "军",
        # 智利 1968 仍是民主，至 1973
        "chl": "稻",
        "mex": "fu",
        "ind": "稻",
        "sok": "稻",  # 韩国（朴正熙威权）
        "phi": "dc",
        "ins": "dc",  # 苏哈托
        "sin": "企",
        "mal": "1",
        "mya": "军",
        "cab": "dc",  # 朗诺前仍为王国/动荡 → 若 m 则改 1
        "vies": "稻",  # 南越
        "sls": "稻",  # 中华民国台湾
        "tai": "稻",
        "fra": "进",
        "fin": "",
        "swi": "盖",
        "atr": "",
        "ire": "",
        "ice": "",
        "isr": "",
        "eth": "bgd",
        "afg": "1",
        "soa": "dc",
        "lib": "军",  # 1969 前仍王国，1968≈王国 → 1；卡扎菲 1969。用 1
        "yem": "神",  # 北也门伊玛目已倒，1968 共和内战 → dc
        "pal": "u",
        "hon": "殖",
        "mac": "殖",
        "pap": "殖",
        "bru": "家",
    }
    # 东欧人民民主：用 马 更贴（相对苏修）
    ee = {"pol", "hun", "bul", "rom", "czsl", "cze", "slo"}
    if base in ee:
        return "马"
    if base == "rus" or base == "sov":
        return "c"  # 苏修仍是马列一党制国家形态
    if base == "lib":
        return "1"  # 1968 仍为王国
    if base == "cab":
        return "1"  # 柬埔寨王国 1968
    if base == "sok" and cur == "c":
        # 误把韩国标成马列；若同时有 nok 则改韩为稻。半架空只有 sok_c+sok
        return "稻"
    if base == "ita" and cur == "f":
        return ""
    if base in patches and patches[base] is not None:
        want = patches[base]
        return want if want != cur else None
    return None


def resolve_new_extra(tag: str, scenario: str, exset: set[str], bundle: dict) -> str | None:
    # 1) 文革派系规则优先
    fe = cr_faction_extra(tag, exset, scenario)
    if fe is not None:
        base, cur = split_tag(tag, exset)
        return fe if fe != cur else None
    # 2) 世界史实
    return world_1968_extra(tag, exset, bundle)


def process(d: Path, extras: dict, exset: set, bundle: dict, apply: bool) -> list[tuple[str, str, str]]:
    main = scenario_main_file(d)
    if not main:
        return []
    scenario = d.name
    data = main.read_bytes()
    strings = extract_tc_strings(data)
    changes = []
    seen_pair = set()
    replacements = []

    for off, ln, s in strings:
        if not is_civ_tag(s, exset):
            continue
        if re.fullmatch(r"\d{10,}[a-z]+", s) and not is_hash_faction(s):
            # color pallet only
            if not s.endswith(("_马", "_保", "_毛", "_c", "_J", "_稻", "_布")):
                # hash factions look like 1721..._马 — is_hash_faction handles
                if not is_hash_faction(s.split("_")[0] if "_" in s else s):
                    # still allow 1721... tags
                    if not re.match(r"^1721", s):
                        continue

        new_extra = resolve_new_extra(s, scenario, exset, bundle)
        if new_extra is None:
            continue
        base, cur = split_tag(s, exset)
        # hash faction: keep full base before last _extra
        if is_hash_faction(s) or re.match(r"^1721", s):
            if "_" in s:
                # split known extras
                b2, e2 = split_tag(s, exset)
                base = b2
        new_tag = make_new_tag(base, new_extra)
        if new_tag == s:
            continue
        replacements.append((off, ln, s, new_tag))
        if (s, new_tag) not in seen_pair:
            seen_pair.add((s, new_tag))
            changes.append((s, new_tag, extras.get(new_extra, new_extra)))

    if apply and replacements:
        bak = Path(str(main) + ".bak_cr_govfix")
        if not bak.exists():
            shutil.copy2(main, bak)
        replacements.sort(key=lambda x: x[0], reverse=True)
        blob = data
        for off, ln, old, new in replacements:
            blob = replace_tc_string(blob, off, ln, new)
        main.write_bytes(blob)

    return changes


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--apply", action="store_true")
    args = ap.parse_args()

    extras = load_gov_extras()
    exset = set(extras)
    bundle = load_bundle()

    report = ["# 文革剧本政体修复报告", ""]
    total = 0
    ctr = Counter()

    for name in CR_SCENARIOS:
        d = SCEN_ROOT / name
        if not d.exists():
            report.append(f"## MISSING {name}\n")
            continue
        info = scenario_info(d)
        ch = process(d, extras, exset, bundle, apply=args.apply)
        total += len(ch)
        report.append(f"## {name} | {info.get('name')} | year={info.get('year')} | fixes={len(ch)}")
        for old, new, gov in ch:
            report.append(f"- `{old}` → `{new}` ({gov})")
            ctr[f"{old}→{new}"] += 1
        report.append("")

    report.append("## 高频")
    for k, n in ctr.most_common(40):
        report.append(f"- {n}× `{k}`")
    report.append("")
    report.append(f"总修正: {total} | 模式: {'APPLY' if args.apply else 'DRY-RUN'}")

    # bundle aliases for renamed faction tags
    if args.apply:
        adds = {
            "shq_c": "上海人民公社",
            "Wuhangzs_c": "武汉工人造反总司令部",
            "cntgmidcrsz_c": "中共中央文化革命领导小组",
            "LingB_c": "林彪东北军",
            "Liudeng_J": "刘邓保守派联合军",
            "bspxslhh_J": "保守派学生联合会",
            "baiwanxs_J": "百万雄师",
            "yejianying_J": "内蒙古军政府",
            "chifs_u": "中华自由革命军",
            "ccpyn_c": "西南革命军区",
        }
        bpath = Path(__file__).resolve().parents[3] / "AOE_unpacked/assets/game/languages/civilizations/Bundle.properties"
        text = bpath.read_text(encoding="utf-8")
        keys = set()
        out_lines = []
        for line in text.splitlines():
            if "=" in line and not line.strip().startswith("#"):
                k = line.split("=", 1)[0].strip()
                keys.add(k)
                if k in adds:
                    out_lines.append(f"{k} = {adds[k]}")
                    continue
            out_lines.append(line)
        for k, v in adds.items():
            if k not in keys:
                out_lines.append(f"{k} = {v}")
        bpath.write_text("\n".join(out_lines) + "\n", encoding="utf-8")

    out = Path(__file__).resolve().parents[3] / "docs/CR_SCENARIO_GOV_FIX_REPORT.md"
    out.write_text("\n".join(report) + "\n", encoding="utf-8")
    print("\n".join(report[-60:]))
    print("wrote", out)


if __name__ == "__main__":
    main()
