#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Generate AI-friendly class/file/method catalogs from lukasz smali."""
from __future__ import annotations

import json
import re
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
LUK = ROOT / "AOE_unpacked" / "smali" / "age" / "of" / "civilizations2" / "jakowski" / "lukasz"
OUT = ROOT / "docs" / "catalog"
GOD_OUT = OUT / "god-methods"
FAM_OUT = OUT / "families"
FILES_OUT = OUT / "files"

METHOD_RE = re.compile(r"^\.method\s+(.*?)\s+(\S+)\((.*)\)(\S+)\s*$")
FIELD_RE = re.compile(r"^\.field\s+(.*?)\s+(\S+):(\S+)")

# Ordered rules: first match wins. Pattern is regex on class stem (no .smali).
ROLE_RULES: list[tuple[str, str, str]] = [
    (r"^AndroidLauncher$", "入口", "Android Activity 启动器"),
    (r"^AoCGame$", "入口", "LibGDX Game 主循环"),
    (r"^CFG$", "全局", "全局配置/常量/静态 Manager 挂载点"),
    (r"^Game$", "核心", "游戏总容器：文明/省/剧本IO/大量 draw API"),
    (r"^Game_Action$", "核心", "回合状态机、移动、战斗、征兵、迷雾工具方法"),
    (r"^Game_NextTurnUpdate$", "核心", "每回合经济/人口等结算"),
    (r"^Game_Calendar$", "核心", "日历与全局回合参数（含侵略度）"),
    (r"^Game_Render", "渲染", "地图/UI 渲染子系统"),
    (r"^Game_Scenarios$", "剧本", "剧本列表加载"),
    (r"^Game_Wonders$", "奇观", "奇观配置与列表"),
    (r"^Game_Cities", "渲染", "城市绘制数据"),
    (r"^MenuManager$", "UI总线", "所有菜单 setViewID / 重建"),
    (r"^DiplomacyManager$", "外交", "外交关系与战争列表总管"),
    (r"^AI$", "AI", "AI 调度入口 turnOrders*"),
    (r"^AI_Style$", "AI", "AI 风格基类：战争评分/移动/宣战"),
    (r"^AI_Style_", "AI", "政体风格 AI 子类"),
    (r"^AI_Build", "AI", "AI 建造决策"),
    (r"^AI_", "AI", "AI 子系统"),
    (r"^Province$", "实体", "单省运行时实体"),
    (r"^Province_", "实体", "省份子系统/视图数据"),
    (r"^Civilization$", "实体", "单文明运行时实体"),
    (r"^Civilization_", "实体", "文明子系统数据"),
    (r"^Turn_NewTurn$", "回合", "「新的回合」按钮动作入口"),
    (r"^Turn_Actions$", "回合", "回合内 AI/动作批处理"),
    (r"^Turn_", "回合", "回合相关"),
    (r"^SaveManager$", "存档", "存档读写管理器"),
    (r"^Save_", "存档", "存档分片/文明外交序列化"),
    (r"^Scenario_", "剧本", "剧本数据块"),
    (r"^EventsManager$", "事件", "事件管理器"),
    (r"^Event_Conditions", "事件", "事件触发条件"),
    (r"^Event_Outcome", "事件", "事件结果效果"),
    (r"^Event", "事件", "事件相关"),
    (r"^Message_", "消息", "局内消息类型逻辑"),
    (r"^Message$", "消息", "消息基类"),
    (r"^HistoryLog_", "历史", "历史日志条目"),
    (r"^HistoryLog$", "历史", "历史日志基类"),
    (r"^PeaceTreaty_", "和约", "和约数据/绘制/要求"),
    (r"^War_", "战争", "战争数据/战分"),
    (r"^Alliance", "外交", "同盟"),
    (r"^TradeRequest", "外交", "贸易请求"),
    (r"^OpenBorders$", "外交", "开放边境"),
    (r"^Construction_", "建造", "在建建筑队列数据"),
    (r"^ConstructionType$", "建造", "建筑类型"),
    (r"^Buildings", "建造", "建筑管理"),
    (r"^BuildConfig$", "建造", "建造配置"),
    (r"^CivArmyMission", "军队", "文明军队任务"),
    (r"^MoveUnits_", "军队", "行军线/移动数据"),
    (r"^RegroupArmy_", "军队", "重整集结路径数据"),
    (r"^Assimilate_", "内政", "同化数据"),
    (r"^CivInvest", "内政", "投资"),
    (r"^Plague", "疾病", "瘟疫/疾病运行时"),
    (r"^Wonder", "奇观", "奇观"),
    (r"^Wonders_", "奇观", "奇观管理"),
    (r"^HolyRomanEmpire", "神罗", "神圣罗马帝国"),
    (r"^FormableCivs_", "成立国", "可成立文明数据"),
    (r"^Leader", "领袖", "领袖数据"),
    (r"^Religion", "宗教", "宗教"),
    (r"^Ideolog", "政体", "意识形态/政体管理"),
    (r"^Ideology$", "政体", "意识形态对象"),
    (r"^TechnologyManager$", "科技", "科技管理"),
    (r"^Age$", "时代", "时代"),
    (r"^FlagManager$", "旗帜", "旗帜管理"),
    (r"^Flag", "旗帜", "旗帜相关"),
    (r"^Map$", "地图", "地图管理器"),
    (r"^Map_", "地图", "地图子系统"),
    (r"^Timelapse", "延时", "延时摄影"),
    (r"^RandomGame", "随机", "随机游戏"),
    (r"^TutorialManager$", "教程", "教程管理"),
    (r"^Player$", "玩家", "本地玩家状态"),
    (r"^Keyboard$", "输入", "键盘输入"),
    (r"^Dialog$", "输入", "对话框"),
    (r"^Images$", "资源", "图像句柄表"),
    (r"^ImageManager$", "资源", "图像加载"),
    (r"^ServiceRibbon", "绶带", "绶带"),
    (r"^PreDefined_", "地图", "预生成边界等"),
    (r"^City$", "实体", "城市"),
    (r"^CreateVassal_", "外交", "创建附庸数据"),
    (r"^BudgetCore$", "注入", "本仓库财政核心（注入）"),
    (r"^Console", "注入", "控制台（注入）"),
    (r"^CivSelect", "注入", "文明选择缓存（注入）"),
    (r"^CivSearch", "注入", "文明搜索 IME（注入）"),
    (r"^ScenarioExport$", "注入", "剧本导出（注入）"),
    (r"^Calc", "注入", "计算辅助（注入）"),
    (r"^Menu_CreateScenario", "UI-剧本编辑", "剧本创建/事件编辑菜单"),
    (r"^Menu_InGame", "UI-局内", "局内 HUD/弹层菜单"),
    (r"^Menu_MapEditor", "UI-地图编辑", "地图编辑器菜单"),
    (r"^Menu_Editor", "UI-编辑器", "编辑器菜单"),
    (r"^Menu_ManageDiplomacy", "UI-外交", "外交管理菜单"),
    (r"^Menu_CreateNewGame", "UI-新游戏", "新游戏流程菜单"),
    (r"^Menu_ChooseScenario", "UI-选剧本", "选择剧本菜单"),
    (r"^Menu_Main", "UI-主菜单", "主菜单"),
    (r"^Menu_Games", "UI-模式", "游戏模式入口"),
    (r"^Menu_Load", "UI-加载", "加载相关菜单"),
    (r"^Menu_About", "UI-关于", "关于页"),
    (r"^Menu_Victory", "UI-胜利", "胜利结算"),
    (r"^Menu_PeaceTreaty", "UI-和约", "和约界面"),
    (r"^Menu_", "UI-菜单", "菜单界面"),
    (r"^Button_", "UI-按钮", "按钮控件"),
    (r"^Text_", "UI-文本", "文本/说明控件"),
    (r"^Slider_", "UI-滑条", "滑条控件"),
    (r"^Graph_", "UI-图表", "统计图表"),
    (r"^ColorPicker_", "UI-取色", "颜色选择器"),
    (r"^MenuElement_", "UI-元素", "菜单元素/悬停块"),
    (r"^Buton_", "UI-按钮", "按钮（原拼写 Buton）"),
    (r"^Steam", "平台", "Steam 相关（移动端可能残留）"),
    (r"^Editor_", "编辑器", "编辑器逻辑"),
    (r"^Undo_", "编辑器", "撤销"),
    (r"^Package", "资源包", "资源包"),
    (r"^Pallet", "调色", "调色板"),
    (r"^Civ_", "文明任务", "文明任务/加成相关"),
    (r"^CivBonus", "文明", "文明加成"),
]


def role_of(name: str) -> tuple[str, str]:
    for pat, group, desc in ROLE_RULES:
        if re.search(pat, name):
            # refine Menu_InGame_* from name tokens
            return group, refine_desc(name, desc)
    return "其他", refine_desc(name, "待归类；按类名 tokens 推断")


def refine_desc(name: str, base: str) -> str:
    """Append semantic hints from CamelCase / underscore tokens."""
    hints = []
    low = name.lower()
    token_map = [
        ("fogofwar", "战争迷雾"),
        ("fog", "迷雾"),
        ("recruit", "征兵"),
        ("coloniz", "殖民"),
        ("assimilat", "同化"),
        ("invest", "投资"),
        ("rebel", "叛军"),
        ("vassal", "附庸"),
        ("alliance", "同盟"),
        ("peace", "和平/和约"),
        ("war", "战争"),
        ("trade", "贸易"),
        ("disease", "疾病"),
        ("plague", "瘟疫"),
        ("wonder", "奇观"),
        ("hre", "神罗"),
        ("formable", "可成立国"),
        ("union", "联合"),
        ("leader", "领袖"),
        ("religion", "宗教"),
        ("technolog", "科技"),
        ("population", "人口"),
        ("economy", "经济"),
        ("budget", "预算"),
        ("diplomacy", "外交"),
        ("migrate", "迁移"),
        ("fort", "要塞"),
        ("tower", "瞭望塔"),
        ("port", "港口"),
        ("farm", "农场"),
        ("nuclear", "核"),
        ("outliner", "大纲"),
        ("timelapse", "延时"),
        ("scenario", "剧本"),
        ("flag", "旗帜"),
        ("render", "渲染"),
        ("border", "边界"),
        ("capital", "首都"),
        ("happiness", "幸福度"),
        ("stability", "稳定"),
        ("ultimatum", "最后通牒"),
        ("truce", "停战"),
        ("gift", "礼物"),
        ("insult", "侮辱"),
        ("access", "通行权"),
        ("pact", "条约"),
        ("core", "核心"),
        ("wasteland", "荒地"),
        ("neutral", "中立"),
        ("victory", "胜利"),
        ("defeat", "失败"),
        ("save", "存档"),
        ("load", "加载"),
        ("editor", "编辑器"),
        ("alphabet", "字母表筛选"),
        ("search", "搜索"),
        ("hover", "悬停提示"),
    ]
    for k, v in token_map:
        if k in low and v not in base:
            hints.append(v)
    # keep unique order
    seen = set()
    uniq = []
    for h in hints:
        if h not in seen:
            seen.add(h)
            uniq.append(h)
    if not uniq:
        return base
    return f"{base}｜含: {', '.join(uniq[:6])}"


def parse_smali(path: Path) -> dict:
    methods = []
    fields = []
    super_name = None
    source = None
    try:
        text = path.read_text(encoding="utf-8", errors="replace")
    except OSError:
        return {"methods": [], "fields": [], "super": None, "error": True}
    for line in text.splitlines():
        if line.startswith(".super "):
            super_name = line.split()[-1]
        elif line.startswith(".source "):
            source = line.split(None, 1)[-1].strip().strip('"')
        elif line.startswith(".method "):
            m = METHOD_RE.match(line)
            if m:
                flags, name, params, ret = m.groups()
                if name in ("<init>", "<clinit>"):
                    continue
                methods.append({"name": name, "params": params, "ret": ret, "flags": flags.strip()})
        elif line.startswith(".field "):
            f = FIELD_RE.match(line)
            if f:
                flags, name, typ = f.groups()
                fields.append({"name": name, "type": typ, "flags": flags.strip()})
    return {
        "methods": methods,
        "fields": fields,
        "super": super_name,
        "source": source,
        "error": False,
    }


def is_inner(stem: str) -> bool:
    return "$" in stem


def parent_of(stem: str) -> str | None:
    if "$" not in stem:
        return None
    return stem.split("$", 1)[0]


def method_summary(methods: list[dict], limit: int = 12) -> str:
    if not methods:
        return "（无公开业务方法或仅构造）"
    names = []
    for m in methods:
        n = m["name"]
        if n.startswith("access$"):
            continue
        names.append(n)
        if len(names) >= limit:
            break
    extra = len(methods) - len(names)
    s = ", ".join(f"`{n}`" for n in names)
    if extra > 0:
        s += f" …(+{extra})"
    return s


def write(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def main() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    GOD_OUT.mkdir(parents=True, exist_ok=True)
    FAM_OUT.mkdir(parents=True, exist_ok=True)
    FILES_OUT.mkdir(parents=True, exist_ok=True)

    files = sorted(LUK.glob("*.smali"))
    records = []
    by_letter: dict[str, list] = defaultdict(list)
    by_group: dict[str, list] = defaultdict(list)

    god_targets = {
        "Game_Action",
        "Game",
        "AI_Style",
        "AI",
        "CFG",
        "DiplomacyManager",
        "MenuManager",
        "Province",
        "Civilization",
        "Turn_NewTurn",
        "Turn_Actions",
        "Game_NextTurnUpdate",
        "Game_Calendar",
        "Game_Render",
        "Game_Scenarios",
        "PeaceTreaty_Data",
        "TutorialManager",
        "SaveManager",
        "EventsManager",
        "BuildingsManager",
        "TechnologyManager",
        "PlagueManager",
        "Wonders_Manager",
        "HolyRomanEmpire_Manager",
        "Ideologies_Manager",
        "ReligionManager",
        "FlagManager",
        "Map",
        "Player",
        "AoCGame",
    }

    for path in files:
        stem = path.stem
        size = path.stat().st_size
        group, desc = role_of(stem.split("$")[0] if is_inner(stem) else stem)
        if is_inner(stem):
            parent = parent_of(stem)
            group, parent_desc = role_of(parent)
            desc = f"内部类 → 外层 `{parent}`（{parent_desc}）｜本类 `{stem}`"
        meta = parse_smali(path)
        rec = {
            "class": stem,
            "file": path.name,
            "bytes": size,
            "inner": is_inner(stem),
            "parent": parent_of(stem),
            "group": group,
            "desc": desc,
            "method_count": len(meta["methods"]),
            "field_count": len(meta["fields"]),
            "methods": [m["name"] for m in meta["methods"]],
            "fields": [f["name"] for f in meta["fields"]],
            "super": meta.get("super"),
            "source": meta.get("source"),
        }
        records.append(rec)
        letter = stem[0].upper() if stem else "#"
        if not letter.isalpha():
            letter = "#"
        by_letter[letter].append(rec)
        by_group[group].append(rec)

        if stem in god_targets or (not is_inner(stem) and stem in god_targets):
            pass

    # JSONL machine index
    jsonl_path = OUT / "ALL_CLASSES.jsonl"
    with jsonl_path.open("w", encoding="utf-8") as f:
        for rec in records:
            slim = {
                "class": rec["class"],
                "file": rec["file"],
                "bytes": rec["bytes"],
                "inner": rec["inner"],
                "parent": rec["parent"],
                "group": rec["group"],
                "desc": rec["desc"],
                "method_count": rec["method_count"],
                "field_count": rec["field_count"],
                "methods": rec["methods"][:40],
                "fields": rec["fields"][:40],
            }
            f.write(json.dumps(slim, ensure_ascii=False) + "\n")

    # Master CLASS_COMPLETE.md (top-level only for readability) + point to files/
    tops = [r for r in records if not r["inner"]]
    inners = [r for r in records if r["inner"]]

    # Per-letter file catalogs (ALL files including inners)
    letter_index_lines = [
        "# 全量 smali 分字母目录",
        "",
        f"总计 **{len(records)}** 个 `.smali`（顶层 {len(tops)}，内部类 {len(inners)}）。",
        "",
        "路径根: `AOE_unpacked/smali/age/of/civilizations2/jakowski/lukasz/`",
        "",
        "| 字母 | 文件 | 条目 |",
        "|---|---|---:|",
    ]
    for letter in sorted(by_letter.keys()):
        items = sorted(by_letter[letter], key=lambda r: r["class"].lower())
        rel = f"files/{letter}.md"
        letter_index_lines.append(f"| {letter} | [{rel}]({rel}) | {len(items)} |")
        lines = [
            f"# 类文件目录 — {letter}",
            "",
            f"条目: **{len(items)}**",
            "",
            "| 类 | KB | 分组 | 方法数 | 说明 | 关键方法 |",
            "|---|---:|---|---:|---|---|",
        ]
        for r in items:
            kb = r["bytes"] / 1024
            ms = method_summary(
                [{"name": n} for n in r["methods"]],
                limit=8 if r["bytes"] > 100_000 else 10,
            )
            desc = r["desc"].replace("|", "/")
            lines.append(
                f"| `{r['class']}` | {kb:.1f} | {r['group']} | {r['method_count']} | {desc} | {ms} |"
            )
        write(FILES_OUT / f"{letter}.md", "\n".join(lines) + "\n")
    write(OUT / "FILES_INDEX.md", "\n".join(letter_index_lines) + "\n")

    # CLASS_COMPLETE tops only with richer desc
    lines = [
        "# 顶层类完整解释表",
        "",
        f"顶层类 **{len(tops)}**（不含 `$` 内部类）。内部类见 [FILES_INDEX.md](FILES_INDEX.md)。",
        "",
        "机器可读全量：[ALL_CLASSES.jsonl](ALL_CLASSES.jsonl)",
        "",
        "| 类 | KB | 分组 | 方法 | 字段 | 说明 |",
        "|---|---:|---|---:|---:|---|",
    ]
    for r in sorted(tops, key=lambda x: x["class"].lower()):
        desc = r["desc"].replace("|", "/")
        lines.append(
            f"| `{r['class']}` | {r['bytes']/1024:.1f} | {r['group']} | {r['method_count']} | {r['field_count']} | {desc} |"
        )
    write(OUT / "CLASS_COMPLETE.md", "\n".join(lines) + "\n")

    # Group pages
    group_index = [
        "# 按职责分组的类族详解",
        "",
        "| 分组 | 数量 | 文档 |",
        "|---|---:|---|",
    ]
    for group in sorted(by_group.keys(), key=lambda g: (-len(by_group[g]), g)):
        items = sorted(by_group[group], key=lambda r: r["class"].lower())
        tops_g = [r for r in items if not r["inner"]]
        safe = re.sub(r"[^\w\-]+", "_", group)
        fname = f"family_{safe}.md"
        group_index.append(f"| {group} | {len(tops_g)} 顶层 / {len(items)} 含内部类 | [{fname}]({fname}) |")
        glines = [
            f"# 类族：{group}",
            "",
            f"顶层 **{len(tops_g)}**，含内部类合计 **{len(items)}**。",
            "",
            "| 类 | 内部? | KB | 方法 | 说明 | 关键方法 |",
            "|---|---|---:|---:|---|---|",
        ]
        for r in items:
            if r["inner"] and r["bytes"] < 3000 and r["method_count"] <= 2:
                # still list but compact — include all for completeness
                pass
            desc = r["desc"].replace("|", "/")
            ms = method_summary([{"name": n} for n in r["methods"]], 6)
            glines.append(
                f"| `{r['class']}` | {'yes' if r['inner'] else ''} | {r['bytes']/1024:.1f} | {r['method_count']} | {desc} | {ms} |"
            )
        write(FAM_OUT / fname, "\n".join(glines) + "\n")
        # also copy short name into families via index only
    write(FAM_OUT / "INDEX.md", "\n".join(group_index) + "\n")

    # God method indexes
    god_index = [
        "# 神类 / 关键类方法索引",
        "",
        "每个文件列出该类全部业务方法名（便于 Grep 前先选型）。",
        "",
        "| 类 | KB | 方法数 | 索引 |",
        "|---|---:|---:|---|",
    ]
    for path in files:
        stem = path.stem
        if stem not in god_targets:
            continue
        meta = parse_smali(path)
        methods = meta["methods"]
        fields = meta["fields"]
        kb = path.stat().st_size / 1024
        god_index.append(
            f"| `{stem}` | {kb:.0f} | {len(methods)} | [{stem}.md]({stem}.md) |"
        )
        # cluster methods by prefix
        buckets: dict[str, list[str]] = defaultdict(list)
        for m in methods:
            name = m["name"]
            if "_" in name:
                pref = name.split("_", 1)[0]
            elif name.startswith("get") or name.startswith("set") or name.startswith("is"):
                pref = name[:3]
            else:
                pref = name[:1].lower() if name else "?"
            # better: use first camel token or first 12 chars semantic
            low = name.lower()
            if name.startswith("turnMoves"):
                pref = "turnMoves*"
            elif name.startswith("buildFog"):
                pref = "buildFog*"
            elif name.startswith("buildRank"):
                pref = "buildRank*"
            elif name.startswith("getRecruitable") or "recruit" in low:
                pref = "recruit*"
            elif name.startswith("draw"):
                pref = "draw*"
            elif name.startswith("load") or name.startswith("save"):
                pref = "load/save*"
            elif "coloniz" in low or "wasteland" in low or "neutral" in low:
                pref = "colonize/neutral*"
            elif "rebel" in low or "uprise" in low or "revolt" in low or "revolution" in low:
                pref = "revolt*"
            elif "migrat" in low:
                pref = "migrate*"
            elif "diplomacy" in low or "relation" in low:
                pref = "diplomacy*"
            elif "happiness" in low or "stability" in low:
                pref = "happiness*"
            elif "fog" in low:
                pref = "fog*"
            elif "attack" in low or "dice" in low or "combat" in low or "defen" in low:
                pref = "combat*"
            elif "move" in low or "army" in low or "disband" in low:
                pref = "army/move*"
            elif name.startswith("get"):
                pref = "get*"
            elif name.startswith("set"):
                pref = "set*"
            elif name.startswith("update") or name.startswith("check"):
                pref = "update/check*"
            elif name.startswith("can") or name.startswith("is") or name.startswith("has"):
                pref = "predicate*"
            else:
                pref = "other"
            sig = f"{name}({m['params']}){m['ret']}"
            buckets[pref].append(sig)

        group, desc = role_of(stem)
        lines = [
            f"# `{stem}` 方法索引",
            "",
            f"- 文件: `.../lukasz/{stem}.smali`",
            f"- 大小: **{kb:.1f} KB**",
            f"- 分组: {group}",
            f"- 说明: {desc}",
            f"- 方法数: **{len(methods)}**；字段数: **{len(fields)}**",
            f"- super: `{meta.get('super')}`",
            "",
            "## 字段（摘录）",
            "",
        ]
        for f in fields[:80]:
            lines.append(f"- `{f['name']}` : `{f['type']}`")
        if len(fields) > 80:
            lines.append(f"- … +{len(fields)-80} fields")
        lines += ["", "## 方法（按簇）", ""]
        for pref in sorted(buckets.keys(), key=lambda k: (-len(buckets[k]), k)):
            lines.append(f"### {pref} ({len(buckets[pref])})")
            lines.append("")
            for sig in sorted(buckets[pref]):
                lines.append(f"- `{sig}`")
            lines.append("")
        write(GOD_OUT / f"{stem}.md", "\n".join(lines) + "\n")
    write(GOD_OUT / "INDEX.md", "\n".join(god_index) + "\n")

    # Message / Event enriched
    def enrich_list(prefix: str, title: str, out_name: str) -> None:
        items = [r for r in tops if r["class"] == prefix.rstrip("_") or r["class"].startswith(prefix)]
        lines = [
            f"# {title}",
            "",
            f"数量: **{len(items)}**",
            "",
            "| 类 | KB | 方法 | 说明 | 关键方法 |",
            "|---|---:|---:|---|---|",
        ]
        for r in sorted(items, key=lambda x: x["class"]):
            lines.append(
                f"| `{r['class']}` | {r['bytes']/1024:.1f} | {r['method_count']} | {r['desc'].replace('|','/')} | {method_summary([{'name':n} for n in r['methods']], 6)} |"
            )
        write(OUT / out_name, "\n".join(lines) + "\n")

    enrich_list("Message_", "Message_* 全表（含说明/方法）", "MESSAGE_TYPES.md")
    enrich_list("Event_Conditions", "Event_Conditions_* 全表（含说明/方法）", "EVENT_CONDITIONS.md")
    enrich_list("Event_Outcome", "Event_Outcome_* 全表（含说明/方法）", "EVENT_OUTCOMES.md")

    # summary stats
    stats = {
        "total_smali": len(records),
        "top_level": len(tops),
        "inner": len(inners),
        "groups": {g: len([r for r in by_group[g] if not r["inner"]]) for g in by_group},
        "god_indexed": sorted(god_targets),
    }
    write(OUT / "CATALOG_STATS.json", json.dumps(stats, ensure_ascii=False, indent=2) + "\n")

    # Refresh CLASS_BY_ROLE / CLASS_ALPHA from same pass
    role_lines = [
        "# 顶层类目录（按职责）",
        "",
        f"总数: **{len(tops)}**（另有内部类见 [FILES_INDEX.md](FILES_INDEX.md)）。",
        "",
        "路径根: `AOE_unpacked/smali/age/of/civilizations2/jakowski/lukasz/`",
        "",
        "## 按职责分组",
        "",
    ]
    tops_by_group: dict[str, list] = defaultdict(list)
    for r in tops:
        tops_by_group[r["group"]].append(r)
    for group in sorted(tops_by_group.keys(), key=lambda g: (-len(tops_by_group[g]), g)):
        items = sorted(tops_by_group[group], key=lambda x: x["class"].lower())
        role_lines += [
            f"### {group} ({len(items)})",
            "",
            "| 类 | KB | 方法 | 说明 |",
            "|---|---:|---:|---|",
        ]
        for r in items:
            role_lines.append(
                f"| `{r['class']}` | {r['bytes']/1024:.1f} | {r['method_count']} | {r['desc'].replace('|','/')} |"
            )
        role_lines.append("")
    write(OUT / "CLASS_BY_ROLE.md", "\n".join(role_lines) + "\n")

    alpha = [
        "# 顶层类字母表",
        "",
        "| 类 | 分组 | KB | 方法 | 说明 |",
        "|---|---|---:|---:|---|",
    ]
    for r in sorted(tops, key=lambda x: x["class"].lower()):
        alpha.append(
            f"| `{r['class']}` | {r['group']} | {r['bytes']/1024:.1f} | {r['method_count']} | {r['desc'].replace('|','/')} |"
        )
    write(OUT / "CLASS_ALPHA.md", "\n".join(alpha) + "\n")

    print(json.dumps({"total": len(records), "tops": len(tops), "inners": len(inners), "groups": len(by_group)}, ensure_ascii=False))


if __name__ == "__main__":
    main()
