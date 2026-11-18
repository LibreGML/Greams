# -*- coding: utf-8 -*-
"""
按剧本年份校正各国 Extra_Tag（政体），排除文革相关剧本。
政体编码：真实Tag + '_' + Extra_Tag（空=议会制民主）。
"""
from __future__ import annotations

import argparse
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
    scenario_dirs,
    scenario_info,
    scenario_main_file,
    split_tag,
)

# 额外排除：文革架空 / cnwar
SKIP_EXTRA = {
    "Great_Proletarian_Cultural_Revolution",
    "1721835430051fmfkwqvv",  # 文革架空
    "cnwar",
}

# ---------- 集合 ----------
# 现代议会君主立宪（19世纪末起不当作封建君主）
PARL_MONARCHIES = {
    "eng", "uni", "uni2", "swe", "nor", "den", "bel", "net", "hol", "lux", "lic",
    "moc", "and", "nez", "aus", "can", "spa", "por", "tha", "jap", "neth",
}
# 总统制共和为主
PRESIDENTIAL = {
    "usa", "mex", "bra", "arg", "chl", "col", "per", "ven", "ecu", "bol", "uru",
    "par", "gua", "hou", "nic", "cor", "pan", "hai", "dom", "phi", "kor", "sok",
    "idn", "ins", "nga", "ken", "gha", "zam", "zim", "ang", "moz", "bot", "nam",
}
# 半总统
SEMI_PRES = {"fra", "rus", "por", "fin", "ukr", "pol", "rom", "atr", "ire"}
# 联邦共和（Extra r 合理）
FEDERAL = {"usa", "mex", "bra", "ger", "swi", "aut", "atr", "ind", "mal", "aus", "can", "arg", "ven", "soa", "rus", "yugo", "auhu"}
# 苏联式加盟/卫星用 c 或 马
SSR_STYLE = {
    "rus", "sov", "ukr", "ber", "est", "lat", "lit", "mol", "kaz", "uzb", "taj",
    "kyr", "trk", "aze", "arm", "geo", "abk", "tra", "crim",
}
PEOPLE_DEMOCRACY = {
    "pol", "hun", "cze", "slo", "rom", "bul", "alb", "nok", "mon", "lao", "cab",
}
ML_PARTY = {"chi", "vie", "cub", "nok", "lao"}  # 执政后
# 法西斯轴心期
FASCIST_ERA = {"ger", "ita"}  # spa Franco separately

# 实体 Tag：本身就是政权，强制政体
ENTITY_FORCE = {
    "chss": "c",       # 中华苏维埃共和国
    "ccpah": "c",      # 中央苏区
    "rfzsrsoviet": "c",
    "cnmdrqll": "c",
    "comr": "c",
    "sovrus": "c",
    "sovukr": "c",
    "sovber": "c",
    "sovpol": "c",
    "bjsov": "c",
    "mosc": "c",
    "man": "dc",       # 满洲国 傀儡威权
    "meng": "dc",
    "qin": "秦",
    "ming": "秦",
    "byza": "秦",
    "holy": "zh",
    "spqr": "保",      # 若共和；帝国场景另按年
    "vat": "神",
    "kn": "神",
}


def year_of(info: dict) -> int | None:
    return info.get("year")


def force_entity(tag: str, extras: set[str]) -> str | None:
    base, suf = split_tag(tag, extras)
    if tag in ENTITY_FORCE:
        return ENTITY_FORCE[tag]
    # Only rewrite bare / legacy-suffix forms. Never collapse distinct
    # civs like qin + qin_1 into the same full tag (breaks turn flow).
    if base in ENTITY_FORCE and suf in ("", "m", "w", "2", "9", "布"):
        return ENTITY_FORCE[base]
    # ccp* / kmt* heuristics
    if base.startswith("ccp"):
        return "c"
    if base.startswith("kmt"):
        return "训"
    return None


def correct_extra(tag: str, year: int | None, extras: set[str], bundle: dict[str, str]) -> str | None:
    """
    返回应使用的 Extra_Tag；None 表示不改。
    """
    if year is None:
        return None

    base, cur = split_tag(tag, extras)
    name = bundle.get(tag) or bundle.get(base) or ""

    # 1) 实体强制
    fe = force_entity(tag, extras)
    if fe is not None:
        return fe if fe != cur else None

    # 名称暗示
    if "苏维埃" in name and cur != "c":
        return "c"
    if "人民公社" in name and cur not in ("C", "c"):
        return "C"

    # 2) 按国家+年代
    e = _by_country(base, year, cur, name)
    if e is not None:
        return e if e != cur else None

    # 3) 通用纠错
    e2 = _generic(base, year, cur, name)
    if e2 is not None:
        return e2 if e2 != cur else None

    # 4) 未知/失效后缀 → 合理默认
    if cur and cur not in extras:
        return _legacy_unknown(base, year, cur)
    return None


def _by_country(base: str, y: int, cur: str, name: str) -> str | None:
    # ----- 中国 -----
    if base == "tai":
        if y < 1945:
            return "殖"
        if y < 1990:
            return "训"
        return "稻"

    if base in ("chi", "ddf", "sls"):
        if y < 1912:
            return "秦"
        # 已是中共/苏区标签则保持马列一党制
        if cur == "c":
            return "c"
        if y >= 1949:
            # 现代架空君主/法西斯等保留
            if cur in ("m", "秦", "bgd", "f", "1", "ys", "(", "保", "cc"):
                return cur
            return "c"
        if 1912 <= y <= 1927:
            return "jf"
        if 1928 <= y <= 1948:
            return "训"
        return None

    if base == "man":
        return "dc"
    if base in ("qin",):
        # Do not collapse distinct tags (qin vs qin_1) into one full tag.
        if cur in ("", "m", "w", "2", "9", "布"):
            return "秦"
        return None
    if base == "tib":
        if y < 1951:
            return "ac"
        return "c"

    # ----- 俄国/苏联 -----
    if base in ("rus", "sov"):
        if y < 1917:
            return "bgd"  # 沙俄绝对君主
        if y == 1917:
            return "临"
        if 1918 <= y <= 1921:
            return "c"  # 苏俄
        if 1922 <= y <= 1991:
            return "c"
        return "进"  # 俄联邦半总统

    if base in SSR_STYLE and base != "rus":
        if 1922 <= y <= 1991:
            return "c"
        if y >= 1992:
            return "稻" if base not in ("ukr",) else "进"
        if y < 1918:
            return "bgd"

    # ----- 德国 -----
    if base in ("ger", "prus"):
        if base == "prus":
            if y < 1871:
                return "三" if y >= 1740 else "m"
            if y < 1919:
                return "ys"
            return "c" if 1949 <= y <= 1990 and cur == "c" else ("" if y >= 1919 else "ys")
        if y < 1871:
            return "zh" if y < 1806 else "m"
        if 1871 <= y <= 1918:
            return "ys"  # 德意志帝国二元/立宪
        if 1919 <= y <= 1932:
            return ""  # 魏玛
        if 1933 <= y <= 1945:
            return "f"
        if 1949 <= y <= 1990:
            # 默认西德；若 tag 暗示东德保持 c
            if cur == "c":
                return "c"
            return "盖"  # 联邦共和/共识
        if y > 1990:
            return "盖"
        if 1945 < y < 1949:
            return "殖"  # 占领期近似
        return None

    # ----- 日本 -----
    if base == "jap":
        if y < 1868:
            return "m"
        if 1868 <= y <= 1930:
            return "ys"  # 明治宪法
        if 1931 <= y <= 1945:
            return "J"  # 军部支配
        return "1"  # 战后议会君主

    # ----- 意大利 -----
    if base == "ita":
        if y < 1861:
            return "m"
        if 1861 <= y <= 1921:
            return "1"
        if 1922 <= y <= 1943:
            return "f"
        if 1944 <= y <= 1945:
            return "临"
        return ""  # 共和国

    # ----- 西班牙 -----
    if base == "spa":
        if y < 1931:
            return "1" if y >= 1875 else "m"
        if 1931 <= y <= 1938:
            return ""  # 第二共和国（内战期复杂）
        if 1939 <= y <= 1975:
            return "f"
        return "1"

    # ----- 法国 -----
    if base in ("fra", "fra2"):
        if y < 1789:
            return "bgd"
        if 1789 <= y <= 1799:
            return "G"
        if 1800 <= y <= 1814 or 1852 <= y <= 1870:
            return "秦"  # 帝国
        if 1815 <= y <= 1847:
            return "1"
        if 1871 <= y <= 1939:
            return ""  # 第三共和国议会制
        if 1940 <= y <= 1944:
            return "f"  # 维希/通敌
        if 1945 <= y <= 1957:
            return ""
        return "进"  # 第五共和国

    # ----- 英国 -----
    if base in ("eng", "uni", "uni2", "gbr"):
        if y < 1689:
            return "bgd" if y >= 1500 else "m"
        return "1"

    # ----- 美国 -----
    if base == "usa":
        if y < 1776:
            return "殖"
        return "稻"

    # ----- 奥匈/奥地利 -----
    if base == "auhu":
        # 只要剧本里还放着奥匈，就按帝国二元君主处理（含架空续存）
        return "ys"
    if base == "atr":
        if y < 1918:
            return "ys"
        if 1934 <= y <= 1938:
            return "gt"  # 教权法团
        if 1938 < y <= 1945:
            return "f"
        return ""

    # ----- 土耳其/奥斯曼 -----
    if base == "tur":
        if y < 1923:
            return "家" if y >= 1800 else "专"
        return "凯"

    # ----- 伊朗 -----
    if base == "ira":
        if y >= 1979:
            return "神"
        if y >= 1925:
            return "ys"
        return "bgd"

    # ----- 沙特 -----
    if base == "sau":
        return "ac"

    # ----- 埃及 -----
    if base == "egy":
        if y < 1953:
            return "1"
        if 1953 <= y <= 1970:
            return "na"
        return "dc"

    # ----- 伊拉克/叙利亚 -----
    if base in ("irq", "syr"):
        if y < 1958 and base == "irq":
            return "1"
        if 1968 <= y <= 2003 and base == "irq":
            return "fu"
        if base == "syr" and 1963 <= y <= 2024:
            return "fu"
        return "dc"

    # ----- 印度 -----
    if base == "ind":
        if y < 1947:
            return "殖"
        return "稻"

    # ----- 越南 -----
    if base == "vie":
        if cur == "c":
            return "c"  # 已是革命政权则保留
        if y < 1945:
            return "殖"
        return "c"

    # ----- 朝鲜/韩国 -----
    if base == "nok":
        return "c" if y >= 1948 else "m"
    if base == "sok":
        if y < 1948:
            return "m"
        if 1961 <= y <= 1987:
            return "dc"
        return "稻"

    # ----- 南斯拉夫 -----
    if base == "yugo":
        if y < 1945:
            return "1"
        return "工"

    # ----- 波兰 -----
    if base == "pol":
        if y < 1918:
            return "m"
        if 1918 <= y <= 1938:
            return "dc"  # 毕苏斯基后威权
        if 1939 <= y <= 1944:
            return "临"
        if 1945 <= y <= 1989:
            return "马"
        return ""

    # ----- 捷克 -----
    if base in ("cze", "slo"):
        if 1948 <= y <= 1989:
            return "马"
        if y < 1918:
            return "m"
        return ""

    # ----- 匈牙利 -----
    if base == "hun":
        if 1949 <= y <= 1989:
            return "马"
        if 1920 <= y <= 1944:
            return "dc"
        if y < 1918:
            return "1"
        return ""

    # ----- 罗马尼亚/保加利亚 -----
    if base in ("rom", "bul"):
        if 1947 <= y <= 1989:
            return "马"
        if y < 1945:
            return "1"
        return ""

    # ----- 希腊 -----
    if base == "gre":
        if 1967 <= y <= 1974:
            return "军"
        if y < 1974 and y >= 1832:
            return "1"
        return ""

    # ----- 葡萄牙 -----
    if base == "por":
        if 1933 <= y <= 1974:
            return "gt"  # 新国家
        if y < 1910:
            return "1"
        return ""

    # ----- 瑞士 -----
    if base == "swi":
        return "盖"

    # ----- 加拿大/澳新 -----
    if base in ("can", "aus"):
        if y < 1931:
            return "自"
        return "1" if base != "aus" else "1"
    if base == "nez":
        return "1"

    # ----- 古巴 -----
    if base == "cub":
        return "c" if y >= 1959 else "稻"

    # ----- 墨西哥 -----
    if base == "mex":
        if 1929 <= y <= 2000:
            return "fu"  # 霸权党
        return "稻"

    # ----- 巴西 -----
    if base == "bra":
        if 1964 <= y <= 1985:
            return "军"
        if y < 1889:
            return "1"
        return "稻"

    # ----- 阿根廷/智利军政府 -----
    if base == "arg":
        if 1976 <= y <= 1983:
            return "军"
        return "稻"
    if base == "chl":
        if 1973 <= y <= 1990:
            return "军"
        return "稻"

    # ----- 泰国 -----
    if base == "tha":
        return "1" if y >= 1932 else "bgd"

    # ----- 埃塞 -----
    if base == "eth":
        if y < 1974:
            return "bgd"
        if 1974 <= y <= 1991:
            return "军"
        return "稻"

    # ----- 南非 -----
    if base == "soa":
        if y < 1961:
            return "自"
        if y < 1994:
            return "dc"
        return ""

    # ----- 以色列 -----
    if base == "isr":
        return "" if y >= 1948 else None

    # ----- 阿富汗 -----
    if base == "afg":
        if y >= 2021:
            return "神"
        if 1978 <= y <= 1991:
            return "c"
        if y < 1973:
            return "1"
        return "军"

    return None


def _generic(base: str, y: int, cur: str, name: str) -> str | None:
    # 封建君主制误用于近现代立宪君主
    if cur == "m" and base in PARL_MONARCHIES and y >= 1815:
        return "1"
    # 德国/俄/奥等帝国晚期也不该是“封建”
    if cur == "m" and base in ("ger", "rus", "auhu", "atr", "tur", "jap", "chi", "ita") and y >= 1800:
        # 交给 _by_country；若未覆盖则：
        if base == "jap" and y >= 1868:
            return "ys" if y < 1931 else "J"
        if base in ("ger", "atr", "auhu") and y >= 1850:
            return "ys"
        if base == "rus" and y < 1917:
            return "bgd"
        if base == "ita" and 1861 <= y < 1922:
            return "1"
        if base == "tur" and y < 1923:
            return "家"
    # 法国/美/中等不应随便联邦共和
    if cur == "r" and base in ("fra", "ita", "spa", "por", "tur", "egy", "pol", "rom", "gre", "jap", "sok", "vie", "tha"):
        if base == "fra":
            return "进" if y >= 1958 else ""
        if base in PRESIDENTIAL or base in ("sok",):
            return "稻"
        if base in PARL_MONARCHIES:
            return "1"
        return ""
    # 美国用 r→稻（总统制更精确）
    if cur == "r" and base == "usa":
        return "稻"
    # 近现代西欧 _m 已在上面
    # 法西斯后缀在非法西斯年代
    if cur == "f":
        if base == "ger" and not (1933 <= y <= 1945):
            return _by_country(base, y, cur, name) or ""
        if base == "ita" and not (1922 <= y <= 1945):
            return _by_country(base, y, cur, name) or ""
        if base == "jap" and y > 1945:
            return "1"
        if base == "spa" and y > 1975:
            return "1"
        if base == "fra" and not (1940 <= y <= 1944):
            return _by_country(base, y, cur, name) or ""
    # 军部支配：日本以外少用
    if cur == "J" and base == "jap" and y > 1945:
        return "1"
    if cur == "J" and base != "jap" and y >= 1900:
        return "军"
    # 个人独裁：中共苏区等误标
    if cur == "毛":
        if "苏维" in name or base.startswith("ccp") or base in ("chss", "chi") and 1927 <= y <= 1949:
            return "c"
        if base == "chi" and y >= 1949:
            return "c"
    return None


def _legacy_unknown(base: str, y: int, cur: str) -> str:
    # 旧版无效后缀
    mapping_guess = {
        "g": "f",
        "w": "jf",
        "2": "1",
        "9": "gt",
        "a": "",
        "n": "c",
        "j": "c",
        "布": "c",
    }
    if cur in mapping_guess:
        g = mapping_guess[cur]
        # still run country logic preference
        pref = _by_country(base, y, g, "")
        return pref if pref is not None else g
    pref = _by_country(base, y, "", "")
    return pref if pref is not None else ""


def make_new_tag(base: str, extra: str) -> str:
    return base if extra == "" else f"{base}_{extra}"


def process_scenario(d: Path, extras: dict, exset: set, bundle: dict, apply: bool) -> list[tuple[str, str, str]]:
    info = scenario_info(d)
    y = year_of(info)
    main = scenario_main_file(d)
    if not main or y is None:
        return []

    data = bytearray(main.read_bytes())
    strings = extract_tc_strings(bytes(data))
    changes: list[tuple[str, str, str]] = []  # old, new, govname

    # map offset -> replacement; apply from end to start
    replacements: list[tuple[int, int, str, str]] = []
    seen_vals = set()
    # Full-tag occupancy in this scenario (prevents duplicate civ tags).
    occupied: set[str] = set()
    civ_entries: list[tuple[int, int, str]] = []
    for _off, _ln, s in strings:
        if is_civ_tag(s, exset) and not s.startswith("Ljava") and "jakowski" not in s:
            occupied.add(s)
            civ_entries.append((_off, _ln, s))

    # Prefer rewriting bare tags first so entity forces win over suffixed clones.
    civ_entries.sort(key=lambda t: ("_" in t[2], len(t[2]), t[0]))

    for off, ln, s in civ_entries:
        # only first occurrence tracking for report uniqueness, but patch ALL occurrences
        new_extra = correct_extra(s, y, exset, bundle)
        if new_extra is None:
            continue
        base, _ = split_tag(s, exset)
        # If s itself is entity key without using base split wrongly
        if s in ENTITY_FORCE:
            base = s
        new_tag = make_new_tag(base, new_extra)
        if new_tag == s:
            continue
        # Skip if another distinct civ already owns the target tag.
        if new_tag in occupied and new_tag != s:
            continue
        occupied.discard(s)
        occupied.add(new_tag)
        replacements.append((off, ln, s, new_tag))
        key = (s, new_tag)
        if key not in seen_vals:
            seen_vals.add(key)
            govn = extras.get(new_extra, new_extra)
            changes.append((s, new_tag, govn))

    if apply and replacements:
        bak = main.with_suffix(main.suffix + ".bak_govfix")
        if not bak.exists():
            shutil.copy2(main, bak)
        # apply from end so offsets remain valid
        replacements.sort(key=lambda x: x[0], reverse=True)
        blob = bytes(data)
        for off, ln, old, new in replacements:
            blob = replace_tc_string(blob, off, ln, new)
        main.write_bytes(blob)

    return changes


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--apply", action="store_true")
    ap.add_argument("--report", type=str, default="")
    ap.add_argument("--only", type=str, default="", help="Comma-separated scenario folder names")
    ap.add_argument("--restore-bak", action="store_true", help="Restore main file from .bak_govfix before apply")
    args = ap.parse_args()

    extras = load_gov_extras()
    exset = set(extras)
    bundle = load_bundle()

    total_changes = 0
    scen_changed = 0
    report_lines = ["# 剧本政体校正报告", ""]
    counter = Counter()

    only = {x.strip() for x in args.only.split(",") if x.strip()} if args.only else set()
    dirs = [d for d in scenario_dirs() if d.name not in SKIP_EXTRA]
    if only:
        dirs = [d for d in dirs if d.name in only]
    for d in dirs:
        if args.restore_bak:
            main = scenario_main_file(d)
            if main:
                bak = main.with_suffix(main.suffix + ".bak_govfix")
                if bak.exists():
                    shutil.copy2(bak, main)
                    print(f"restored {main.name} from bak")
        info = scenario_info(d)
        ch = process_scenario(d, extras, exset, bundle, apply=args.apply)
        if not ch:
            continue
        scen_changed += 1
        total_changes += len(ch)
        report_lines.append(f"## {d.name} | {info.get('name')} | year={info.get('year')} | fixes={len(ch)}")
        for old, new, gov in ch:
            report_lines.append(f"- `{old}` → `{new}` ({gov})")
            counter[f"{old}→{new}"] += 1
        report_lines.append("")

    report_lines.append("## 汇总高频改动")
    for k, n in counter.most_common(60):
        report_lines.append(f"- {n}× `{k}`")
    report_lines.append("")
    report_lines.append(f"剧本改动数: {scen_changed}/{len(dirs)}")
    report_lines.append(f"条目改动数: {total_changes}")
    report_lines.append(f"模式: {'APPLY' if args.apply else 'DRY-RUN'}")

    text = "\n".join(report_lines) + "\n"
    out = Path(args.report) if args.report else Path(__file__).resolve().parents[3] / "docs/SCENARIO_GOV_FIX_REPORT.md"
    out.write_text(text, encoding="utf-8")
    print(text[-2000:] if len(text) > 2000 else text)
    print(f"wrote {out}")


if __name__ == "__main__":
    main()
