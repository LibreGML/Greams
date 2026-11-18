#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Generate deep assets catalog for AI docs."""
from __future__ import annotations

import json
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
ASSETS = ROOT / "AOE_unpacked" / "assets"
OUT = ROOT / "docs" / "catalog"


def count_files(p: Path) -> int:
    if not p.exists():
        return 0
    if p.is_file():
        return 1
    return sum(1 for x in p.rglob("*") if x.is_file())


def list_dir(p: Path, max_names: int = 40) -> list[str]:
    if not p.is_dir():
        return []
    names = sorted(x.name for x in p.iterdir())
    if len(names) > max_names:
        return names[:max_names] + [f"… +{len(names)-max_names} more"]
    return names


def main() -> None:
    lines = [
        "# Assets 深度目录（AI）",
        "",
        "根: `AOE_unpacked/assets/`",
        "",
        "## 顶层一览",
        "",
        "| 路径 | 类型 | 文件数 | 说明 | 代码线索 |",
        "|---|---|---:|---|---|",
    ]
    clues = {
        "config.ini": ("配置", "CFG / 启动"),
        "settings": ("设置", "CFG"),
        "settings_map": ("地图设置", "CFG / Map"),
        "game": ("玩法数据", "各 Manager / Game"),
        "map": ("地图与剧本", "Map / Game 剧本 IO"),
        "UI": ("界面图", "Images / ImageManager"),
        "sounds": ("音效", "音频"),
        "music": ("音乐", "音频"),
        "console": ("控制台宏", "Console* 注入"),
        "ic_32x32.ico": ("图标", "包装"),
        "ic_32x32.png": ("图标", "包装"),
    }
    for p in sorted(ASSETS.iterdir(), key=lambda x: x.name.lower()):
        rel = p.name + ("/" if p.is_dir() else "")
        kind = "DIR" if p.is_dir() else "FILE"
        n = count_files(p)
        desc, clue = clues.get(p.name, ("资源", "Grep 文件名"))
        lines.append(f"| `{rel}` | {kind} | {n} | {desc} | {clue} |")

    # game detail
    game = ASSETS / "game"
    lines += ["", "## game/ 明细", "", "| 路径 | 文件数 | 说明 | 主代码 |", "|---|---:|---|---|"]
    game_map = {
        "Ages.json": ("时代定义", "Age"),
        "Diseases.json": ("疾病定义", "PlagueManager"),
        "Religions.json": ("宗教", "ReligionManager"),
        "Governments.json": ("政体", "Ideologies_Manager"),
        "Governments.json.bak_before_gov_redesign": ("政体备份（非现网）", "—"),
        "civilizations": ("文明数据 + tag 表 + 搜索索引", "Game / CivSearch*"),
        "civilizations_editor": ("编辑器用文明", "Menu_Editor* / CreateScenario"),
        "flags": ("国旗 PNG", "FlagManager"),
        "flags_editor": ("旗编辑资源", "旗编辑 UI"),
        "leaders": ("领袖数据", "Leader_*"),
        "leadersIMG": ("领袖图", "领袖 UI"),
        "languages": ("文案 Bundle", "全部 UI 字符串"),
        "alliance_names": ("同盟名池", "Alliances_Names_GameData*"),
        "diplomacy_colors": ("外交着色", "外交视图"),
        "pallets_of_civs_colors": ("文明调色板", "颜色选择"),
        "service_ribbons": ("绶带", "ServiceRibbon_Manager"),
        "terrain_types": ("地形", "Province / 地形"),
        "unions": ("联合定义", "Menu_Editor_Unions*"),
        "fonts": ("字体", "渲染"),
        "lines": ("线素材", "MoveUnits 行军线等"),
        "shader": ("着色器", "Game_Render"),
    }
    if game.exists():
        for p in sorted(game.iterdir(), key=lambda x: x.name.lower()):
            rel = f"game/{p.name}" + ("/" if p.is_dir() else "")
            n = count_files(p)
            desc, code = game_map.get(p.name, ("数据", "Grep 名"))
            lines.append(f"| `{rel}` | {n} | {desc} | `{code}` |")

    # languages
    lang = game / "languages"
    if lang.exists():
        lines += ["", "## game/languages/", "", "| 文件/目录 | 说明 |", "|---|---|"]
        for p in sorted(lang.rglob("*")):
            if p.is_file():
                rel = p.relative_to(ASSETS).as_posix()
                lines.append(f"| `{rel}` | UI/文明文案；改可见文字先搜这里 |")

    # map
    mp = ASSETS / "map"
    lines += ["", "## map/", "", "| 路径 | 文件数 | 说明 |", "|---|---:|---|"]
    if mp.exists():
        for p in sorted(mp.iterdir(), key=lambda x: x.name.lower()):
            rel = f"map/{p.name}" + ("/" if p.is_dir() else "")
            n = count_files(p)
            note = {
                "Age_of_Civilizations.json": "地图列表；Folder=TZ 为现行",
                "TZ": "现行地图包（几何/场景/剧本）",
                "backgrounds": "背景图",
                "data": "地图数据",
            }.get(p.name, "")
            lines.append(f"| `{rel}` | {n} | {note} |")

    tz = mp / "TZ"
    if tz.exists():
        lines += ["", "## map/TZ/ 顶层", "", "| 路径 | 文件数 | 说明 |", "|---|---:|---|"]
        tz_notes = {
            "scenarios": "内置剧本；索引文件 Age_of_Civilizations（Android 不扫目录）",
            "data": "省数据/邻接等",
            "background": "地图背景",
            "cities": "城市",
            "mountains": "山脉",
            "Age_of_Civilizations": "地图包内索引/配置",
        }
        for p in sorted(tz.iterdir(), key=lambda x: x.name.lower()):
            rel = f"map/TZ/{p.name}" + ("/" if p.is_dir() else "")
            n = count_files(p)
            lines.append(f"| `{rel}` | {n} | {tz_notes.get(p.name, '')} |")
        scen = tz / "scenarios"
        if scen.exists():
            names = [x.name for x in scen.iterdir()]
            lines += [
                "",
                "## map/TZ/scenarios/ 列表（摘录）",
                "",
                f"条目数: **{len(names)}**（含索引与子目录）",
                "",
            ]
            for name in sorted(names)[:80]:
                lines.append(f"- `{name}`")
            if len(names) > 80:
                lines.append(f"- … +{len(names)-80}")

    # console
    cons = ASSETS / "console"
    if cons.exists():
        lines += ["", "## console/", ""]
        for p in sorted(cons.glob("*")):
            lines.append(f"- `{p.name}` — 控制台宏文本")

    lines += [
        "",
        "## 修改规则",
        "",
        "1. 改 JSON 后确认对应 Manager 字段仍匹配。",
        "2. 改文明名/tag 后视情况重建 `CivSearchIndex.txt`。",
        "3. 用户新建剧本在设备 local files；导出靠 `ScenarioExport`。",
        "4. Android **只读** scenarios 索引文件，不扫描目录新增项。",
        "",
        "## 交叉链接",
        "",
        "- 机制百科: [../mechanisms/ENCYCLOPEDIA.md](../mechanisms/ENCYCLOPEDIA.md)",
        "- 导航: [../AI_NAV.md](../AI_NAV.md)",
        "- 定位: [HOW_TO_LOCATE.md](HOW_TO_LOCATE.md)",
        "",
    ]
    OUT.mkdir(parents=True, exist_ok=True)
    (OUT / "ASSETS.md").write_text("\n".join(lines), encoding="utf-8")

    # compact json inventory
    inv = {}
    for p in ASSETS.rglob("*"):
        if p.is_file():
            rel = p.relative_to(ASSETS).as_posix()
            inv[rel] = p.stat().st_size
    # too huge maybe - store summary by top folder only
    by_top = defaultdict(lambda: {"files": 0, "bytes": 0})
    for rel, sz in inv.items():
        top = rel.split("/", 1)[0]
        by_top[top]["files"] += 1
        by_top[top]["bytes"] += sz
    (OUT / "ASSETS_STATS.json").write_text(
        json.dumps({"by_top": by_top, "total_files": len(inv)}, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )
    print("assets files", len(inv), "wrote ASSETS.md")


if __name__ == "__main__":
    main()
