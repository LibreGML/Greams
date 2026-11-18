# AI 导航总表（最快定位）

> **给 Codex / Claude / Cursor Agent 用。** 先按关键词命中本表，再打开机制页或 `grep` 类名。  
> Smali 根（下文一律相对此路径）：`AOE_unpacked/smali/age/of/civilizations2/jakowski/lukasz/`

## 0. 30 秒决策树

```
用户说了什么？
├─ 改功能/懂机制 → mechanisms/ENCYCLOPEDIA.md 对应章节
├─ 只知道类名/文件名 → catalog/FILES_INDEX.md（分字母）或 CLASS_COMPLETE.md
├─ 神类要找方法 → catalog/god-methods/<Class>.md（禁止全文盲读）
├─ 只知道 UI 文案/按钮 → Grep assets/game/languages + Menu_* / Button_*
├─ 改数值/配置 → catalog/ASSETS.md + 对应 JSON
├─ 改补丁状态 → progress/STATUS.md（live / reverted / unsafe）
└─ 打包安装 → BUILD.md
```

读法字段约定：[catalog/DOC_FORMAT.md](catalog/DOC_FORMAT.md)

## 1. 关键词 → 机制 → 主类

| 关键词（中/英） | 机制页 | 主类（先打开） |
|---|---|---|
| 新的回合 / next turn / TurnStates | [mechanisms/turn-pipeline.md](mechanisms/turn-pipeline.md) | `Game_Action` `Turn_NewTurn` `Turn_Actions` `Game_NextTurnUpdate` |
| 税收 / 预算 / 金库 / budget | [mechanisms/economy-budget.md](mechanisms/economy-budget.md) | `Game_NextTurnUpdate` `BudgetCore` `Civilization` |
| 占领 / occupy / 占领收益 | [mechanisms/occupy-economy.md](mechanisms/occupy-economy.md) | `Game_NextTurnUpdate` `Province` |
| 战斗 / 骰子 / dice / attack | [mechanisms/combat.md](mechanisms/combat.md) | `Game_Action.turnMoves_*` |
| 宣战 / AI 战争 / war AI | [mechanisms/war-ai.md](mechanisms/war-ai.md) | `AI` `AI_Style` `DiplomacyManager` `War_GameData` |
| 外交 / 同盟 / 附庸 / 通行 | [mechanisms/diplomacy.md](mechanisms/diplomacy.md) | `DiplomacyManager` `Alliance` `TradeRequest_*` |
| 政体 / ideology / government | [mechanisms/governments.md](mechanisms/governments.md) | `Ideologies_Manager` `Ideology` + `Governments.json` |
| 剧本 / scenario / 导出 | [mechanisms/scenarios.md](mechanisms/scenarios.md) | `Game` `Scenario_*` `ScenarioExport` |
| 国家列表 / 搜索 / 拼音 | [mechanisms/civ-select-search.md](mechanisms/civ-select-search.md) | `CivSelectCache` `CivSearchIme` |
| 控制台 / console | [mechanisms/console.md](mechanisms/console.md) | `Console*`（注入） |
| 品牌 / 外链 / QQ / B站 | [mechanisms/branding-links.md](mechanisms/branding-links.md) | `Menu_About*` `Menu_Main*` |
| 移动 / 行军 / move army | [mechanisms/ENCYCLOPEDIA.md#军队移动与任务](mechanisms/ENCYCLOPEDIA.md) | `Game_Action` `MoveUnits_*` `RegroupArmy_*` |
| 征兵 / recruit | ENCYCLOPEDIA | `Game_Action.getRecruitableArmy*` `Menu_InGame_ActionInfo_Recruit*` |
| 建造 / 要塞 / 港口 / fort / port | ENCYCLOPEDIA | `BuildingsManager` `Construction_GameData_*` `Menu_InGame_Build_*` |
| 投资 / invest / development | ENCYCLOPEDIA | `CivInvest*` `Menu_InGame_Invest*` |
| 同化 / assimilate / 核心 / core | ENCYCLOPEDIA | `Assimilate_Data` `Menu_InGame_Assimilate*` |
| 叛乱 / rebels / revolt | ENCYCLOPEDIA | `Game_Action.getSpawnRebels*` `AI_Style_Rebels` |
| 殖民 / colonize / wasteland | ENCYCLOPEDIA | `CivArmyMission_Colonize*` `Civilization_Colonies` |
| 疾病 / plague / disease | ENCYCLOPEDIA | `PlagueManager` + `Diseases.json` |
| 时代 / age | ENCYCLOPEDIA | `Age` + `Ages.json` |
| 宗教 / religion | ENCYCLOPEDIA | `ReligionManager` + `Religions.json` |
| 科技 / technology / research | ENCYCLOPEDIA | `TechnologyManager` `Menu_InGame_Technology*` |
| 奇观 / wonder | ENCYCLOPEDIA | `Wonders_Manager` `Game_Wonders` `Wonder` |
| 可成立国 / formable | ENCYCLOPEDIA | `FormableCivs_GameData` `Menu_InGame_FormableCiv*` |
| 神罗 / HRE | ENCYCLOPEDIA | `HolyRomanEmpire_Manager` `HolyRomanEmpire_GameData` |
| 领袖 / leader | ENCYCLOPEDIA | `Leader_GameData` `LeaderOfCiv_GameData` |
| 战争分 / war score / 和约 | ENCYCLOPEDIA | `War_Points` `PeaceTreaty_*` `Menu_PeaceTreaty*` |
| 迷雾 / fog of war | ENCYCLOPEDIA | `Province_FogofWar` `Game_Action.buildFogOfWar*` |
| 存档 / save / load | ENCYCLOPEDIA | `SaveManager` `Save_GameData*` `Menu_LoadGame*` |
| 事件 / event | ENCYCLOPEDIA | `EventsManager` `Event_Conditions_*` `Event_Outcome_*` |
| 消息 / message / 弹窗 | ENCYCLOPEDIA | `Message_*` `Menu_InGame_Message_*` |
| 地图渲染 / draw / border | ENCYCLOPEDIA | `Game_Render` `Map*` `Province_Border` |
| 延时 / timelapse | ENCYCLOPEDIA | `TimelapseManager` `Timelapse_*` |
| 随机游戏 / random | ENCYCLOPEDIA | `RandomGame_Manager` |
| 联合 / union | ENCYCLOPEDIA | `Menu_Editor_Unions*` + `assets/game/unions/` |
| 旗帜 / flag | ENCYCLOPEDIA | `FlagManager` + `assets/game/flags/` |
| 胜利 / victory | ENCYCLOPEDIA | `Menu_Victory*` |

完整机制说明：[mechanisms/ENCYCLOPEDIA.md](mechanisms/ENCYCLOPEDIA.md)  
机制短页索引：[mechanisms/INDEX.md](mechanisms/INDEX.md)

## 2. 前缀 → 职责（命名约定）

| 前缀 | 含义 | 典型数量级 |
|---|---|---|
| `Menu_` | 一个界面/子面板 | ~590 顶层 |
| `Button_` | 可点击控件 | ~260 |
| `Text_` | 文本/悬停描述 | ~70+ |
| `Message_` | 局内消息类型（数据+逻辑） | 113 |
| `Event_Conditions_` / `Event_Outcome_` | 事件条件/结果 | 53 / 41 |
| `AI_` / `AI_Style_` / `AI_Build_` | AI 子系统 | 60+ |
| `Province_` | 省份子系统 | 40+ |
| `Civilization_` | 文明子系统 | 15 |
| `Construction_GameData_` | 在建建筑队列数据 | 11 |
| `Save_GameData*` | 存档分片 | 13 |
| `CivArmyMission_` | 文明军队任务 | 12 |
| `RegroupArmy_Data_` | 重整/集结路径数据 | 8 |
| `PeaceTreaty_` | 和约数据/绘制 | 8 |
| `HistoryLog_` | 历史日志条目 | 17 |
| `MoveUnits_` | 行军线绘制/数据 | 6 |
| `Game_` | 游戏核心子系统 | `Game`/`Game_Action`/`Game_NextTurnUpdate`/`Game_Calendar`/`Game_Render`/`Game_Wonders`/`Game_Scenarios` |
| `Map_` | 地图加载/背景/层 | 80+ |
| `CFG` | 全局配置与静态状态 | 1 巨类 |
| `Slider_` / `Graph_` | 滑条/统计图 | UI |

**内部类**：`Foo$1.smali` = 匿名/内部类，通常是按钮回调；先读外层 `Foo.smali`。

## 3. 神类（改之前必打开方法索引）

职责摘要：[file-map/god-classes.md](file-map/god-classes.md)  
**完整方法+字段列表**：[catalog/god-methods/INDEX.md](catalog/god-methods/INDEX.md)

| 类 | KB | 方法数 | 何时打开 | 方法索引 |
|---|---:|---:|---|---|
| `MenuManager` | 4376 | 718 | 切界面、`setViewID` | [god-methods/MenuManager.md](catalog/god-methods/MenuManager.md) |
| `Game` | 4288 | 493 | 剧本存读、文明/省、draw API | [god-methods/Game.md](catalog/god-methods/Game.md) |
| `AI_Style` | 3161 | 112 | 战争评分、宣战、移动 | [god-methods/AI_Style.md](catalog/god-methods/AI_Style.md) |
| `Game_Action` | 2027 | 134 | 移动/战斗/迷雾/征兵/回合 | [god-methods/Game_Action.md](catalog/god-methods/Game_Action.md) |
| `CFG` | 1335 | 173 | 常量、设置、静态 Manager | [god-methods/CFG.md](catalog/god-methods/CFG.md) |
| `DiplomacyManager` | 1215 | 152 | 外交与战争列表 | [god-methods/DiplomacyManager.md](catalog/god-methods/DiplomacyManager.md) |
| `Province` | 820 | 286 | 单省字段 | [god-methods/Province.md](catalog/god-methods/Province.md) |
| `Civilization` | 717 | 390 | 单文明字段（财政 long） | [god-methods/Civilization.md](catalog/god-methods/Civilization.md) |

## 4. 任意文件怎么查

| 你有… | 打开 |
|---|---|
| 类名首字母 | [catalog/FILES_INDEX.md](catalog/FILES_INDEX.md) → `files/X.md` |
| 只要顶层类 | [catalog/CLASS_COMPLETE.md](catalog/CLASS_COMPLETE.md) |
| 职责族（AI/UI/存档…） | [catalog/families/INDEX.md](catalog/families/INDEX.md) |
| 脚本过滤 | [catalog/ALL_CLASSES.jsonl](catalog/ALL_CLASSES.jsonl) |
| 定位流程 | [catalog/HOW_TO_LOCATE.md](catalog/HOW_TO_LOCATE.md) |

## 5. 检索命令模板

```text
Grep  path = AOE_unpacked/smali/age/of/civilizations2/jakowski/lukasz
      pattern = methodNameOrString
      glob = *.smali
```

| 目标 | pattern 示例 |
|---|---|
| 找方法定义 | `^\.method .* methodName` |
| 找字段 | `^\.field .* fieldName` |
| 找调用点 | `invoke-.*methodName` |
| 找 UI 字符串 | 先在 `assets/game/languages/` 找 key，再 Grep 该 key |
| 找某建筑 | `Construction_GameData_Fort` 或 `Build_Fort` |
| 找某消息 | `Message_PeaceTreaty` |

## 6. 资产快速入口

| 数据 | 路径 |
|---|---|
| 政体 | `assets/game/Governments.json` |
| 时代 | `assets/game/Ages.json` |
| 疾病 | `assets/game/Diseases.json` |
| 宗教 | `assets/game/Religions.json` |
| 文明 tag 表 | `assets/game/civilizations/Age_of_Civilizations` |
| 搜索索引 | `assets/game/civilizations/CivSearchIndex.txt` |
| 领袖 | `assets/game/leaders/` |
| 国旗 | `assets/game/flags/` |
| 现行地图 | `assets/map/TZ/` |
| 剧本索引 | `assets/map/TZ/scenarios/Age_of_Civilizations` |
| 控制台宏 | `assets/console/*.txt` |

详表：[catalog/ASSETS.md](catalog/ASSETS.md)

## 7. 改代码硬约束

1. **不要**移动 `lukasz/` 包路径。  
2. **不要**重跑 `tools/patches/do-not-rerun/`。  
3. 注入 Java 只走 `tools/console/` + `build_console_engine.ps1`。  
4. 改前查 [progress/STATUS.md](progress/STATUS.md)：`reverted` 功能禁止当现网。  
5. 每轮收尾更新 STATUS + CHANGELOG，并按 BUILD 打包。

## 8. 文档阅读顺序（新人 / 新会话）

1. [../AGENTS.md](../AGENTS.md)  
2. [00-START-HERE.md](00-START-HERE.md)  
3. **本文 AI_NAV.md** + [catalog/DOC_FORMAT.md](catalog/DOC_FORMAT.md)  
4. [mechanisms/ENCYCLOPEDIA.md](mechanisms/ENCYCLOPEDIA.md)  
5. [catalog/INDEX.md](catalog/INDEX.md) → 类/方法/资产  
6. 相关短机制页 + 具体 smali（神类先看 god-methods）
