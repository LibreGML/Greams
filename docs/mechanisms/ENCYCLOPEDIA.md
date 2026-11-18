# 游戏机制百科（全覆盖）

> AI 友好格式：每节 = **玩家看到什么** → **主类/方法** → **相关 UI** → **assets** → **相关消息/事件** → **补丁注意**。  
> Smali 根：`AOE_unpacked/smali/age/of/civilizations2/jakowski/lukasz/`  
> 已有深度短页的机制：本节给总览 + 链接；细节以短页为准。

**配套目录（精确到每一个 `.smali`）**

| 需求 | 文档 |
|---|---|
| 关键词路由 | [../AI_NAV.md](../AI_NAV.md) |
| 4599 文件分字母解释 | [../catalog/FILES_INDEX.md](../catalog/FILES_INDEX.md) |
| 1622 顶层类完整表 | [../catalog/CLASS_COMPLETE.md](../catalog/CLASS_COMPLETE.md) |
| 神类全部方法/字段 | [../catalog/god-methods/INDEX.md](../catalog/god-methods/INDEX.md) |
| 65 职责族 | [../catalog/families/INDEX.md](../catalog/families/INDEX.md) |
| 资产深度目录 | [../catalog/ASSETS.md](../catalog/ASSETS.md) |
| 字段读法 | [../catalog/DOC_FORMAT.md](../catalog/DOC_FORMAT.md) |

---

## 目录

1. [运行时骨架](#1-运行时骨架)
2. [回合管线](#2-回合管线)
3. [经济与财政](#3-经济与财政)
4. [省份与文明实体](#4-省份与文明实体)
5. [军队移动与任务](#5-军队移动与任务)
6. [战斗](#6-战斗)
7. [征兵与维护](#7-征兵与维护)
8. [建造与建筑](#8-建造与建筑)
9. [投资 / 发展 / 同化 / 核心](#9-投资--发展--同化--核心)
10. [外交](#10-外交)
11. [战争 / 战分 / 和约](#11-战争--战分--和约)
12. [AI](#12-ai)
13. [政体 / 意识形态](#13-政体--意识形态)
14. [科技 / 时代 / 宗教](#14-科技--时代--宗教)
15. [疾病](#15-疾病)
16. [叛乱 / 革命 / 支持叛军](#16-叛乱--革命--支持叛军)
17. [殖民 / 中立地 / 荒地](#17-殖民--中立地--荒地)
18. [可成立国 / 联合](#18-可成立国--联合)
19. [神罗 HRE](#19-神罗-hre)
20. [奇观](#20-奇观)
21. [领袖](#21-领袖)
22. [迷雾战争](#22-迷雾战争)
23. [事件系统](#23-事件系统)
24. [消息系统](#24-消息系统)
25. [剧本创建 / 编辑 / 导出](#25-剧本创建--编辑--导出)
26. [存档 / 读档](#26-存档--读档)
27. [地图 / 渲染 / 旗帜](#27-地图--渲染--旗帜)
28. [延时摄影 / 随机游戏 / 胜利](#28-延时摄影--随机游戏--胜利)
29. [控制台与注入](#29-控制台与注入)
30. [品牌与外链](#30-品牌与外链)

---

## 1. 运行时骨架

| 层级 | 类 | 职责 | 方法索引 |
|---|---|---|---|
| Android 入口 | `AndroidLauncher` | Activity；包安装 id 见 IDENTITY（`tz.yx.gemorin`） | — |
| LibGDX 游戏 | `AoCGame` | 应用循环、渲染请求 | [AoCGame](../catalog/god-methods/AoCGame.md) |
| 全局配置 | `CFG` | 静态设置、对话框、键盘、各 Manager 引用、常量 | [CFG](../catalog/god-methods/CFG.md) |
| 游戏容器 | `Game` | 文明/省份数组、剧本 IO、大量 draw/API | [Game](../catalog/god-methods/Game.md) |
| 动作引擎 | `Game_Action` | 回合状态、移动、战斗、迷雾、征兵工具方法 | [Game_Action](../catalog/god-methods/Game_Action.md) |
| 菜单总线 | `MenuManager` | `setViewID`、重建当前菜单树 | [MenuManager](../catalog/god-methods/MenuManager.md) |
| 玩家 | `Player` | 本地玩家雾、控制文明等 | [Player](../catalog/god-methods/Player.md) |
| 图像 | `Images` / `ImageManager` | UI/地图贴图句柄 | files/`I.md` |
| 键盘/对话框 | `Keyboard` / `Dialog` | 文本输入与确认框 | files/`K.md` / `D.md` |

**定位技巧**：几乎所有「全局单例」都挂在 `CFG` 或 `Game` 字段上；Grep `sget-object .*CFG` / `Game;->`。

---

## 2. 回合管线

**短页**：[turn-pipeline.md](turn-pipeline.md)  
**方法索引**：[Turn_NewTurn](../catalog/god-methods/Turn_NewTurn.md) · [Turn_Actions](../catalog/god-methods/Turn_Actions.md) · [Game_Action](../catalog/god-methods/Game_Action.md) · [Game_NextTurnUpdate](../catalog/god-methods/Game_NextTurnUpdate.md) · [Game_Calendar](../catalog/god-methods/Game_Calendar.md) · [AI](../catalog/god-methods/AI.md)

| 步骤 | 类.方法 | 说明 |
|---|---|---|
| 玩家点「新的回合」 | `Turn_NewTurn.doAction` | 入口 |
| 状态机 | `Game_Action` + `Game_Action$TurnStates` | 推进阶段 |
| AI 下单 | `Turn_Actions` → `AI.turnOrders*` | 批量 AI |
| 移动结算 | `Game_Action.turnMoves_*` | 含战斗 |
| 经济结算 | `Game_NextTurnUpdate` | 税/产/维护 |
| 日历 | `Game_Calendar` | 日期、侵略度等 |
| 开局防卡 | `Menu_Games.clickNewGame` | 强制 `loadScenario` |

**live 补丁**：`tools/patches/live/fix_next_turn_speed.py`  
**reverted**：小国和平错峰（勿恢复）。

---

## 3. 经济与财政

**短页**：[economy-budget.md](economy-budget.md) · [occupy-economy.md](occupy-economy.md)

| 概念 | 代码位置 |
|---|---|
| 回合收入/支出 | `Game_NextTurnUpdate` |
| 财政 long 字段 | `Civilization`（勿改成 int） |
| 预算 UI/核心 | `BudgetCore`、`Menu_InGame_*Budget*`、`Text_Economy_SliderDesc_*` |
| 税收滑条 | `Slider_FlagAction_Taxes` |
| 占领收益 | 结算读占领省；见 occupy-economy |
| 通胀/贷款等消息 | `Message_HighInflation` `Message_LoanRepaid` `Message_Repaid` |
| AI 税收技能 | `AI_Skills_Taxation` |

**相关 UI**：国家面板经济区、Outliner（`Menu_InGame_Outliner*` / `Text_Outliner_*`）。

---

## 4. 省份与文明实体

| 实体 | 主类 | 子系统前缀 | 方法/字段索引 |
|---|---|---|---|
| 省 | `Province` | `Province_Army` `Province_Population` `Province_FogofWar` `Province_Border` … | [Province](../catalog/god-methods/Province.md)（286 方法） |
| 文明 | `Civilization` | `Civilization_GameData` `Civilization_Diplomacy_*` `Civilization_Colonies` `Civilization_Color` … | [Civilization](../catalog/god-methods/Civilization.md)（390 方法） |
| 城市显示 | `City` `Game_Cities$GameCity` | 绘制在 `Game.drawCities_*` | [Game](../catalog/god-methods/Game.md) `draw*` |

**改省数据**：先打开 Province 字段表，再 Grep getter/setter。  
**改文明数据**：同理；外交子结构常在 `Civilization_Diplomacy_*`（见 `files/C.md`）。

---

## 5. 军队移动与任务

| 概念 | 类 | 要点 |
|---|---|---|
| 移动花费/是否可免费移动 | `Game_Action.costOfMoveArmy` `getIsFreeMove` | |
| 执行移动 | `turnMoves_MoveCurrentArmy*` `JustMove` | |
| 行军线绘制 | `MoveUnits_Line*` | 含 `Migrate` 变体 |
| 本回合移动数据 | `MoveUnits_TurnData` | |
| 重整/集结 | `RegroupArmy_Data*` | AtWar / AtPeace / ToTheFront / Migrate / PortToBuild |
| 文明任务 | `CivArmyMission*` | 殖民、扩中立、建港、海侵、备战、征兵后重整 |
| 迁移人口军队 | `migrateFromTo` + `Menu_InGame_Migrate*` | |
| 解散 | `disbandArmy` | |
| 通行权丢失挪军 | `accessLost_MoveArmy*` | |

**UI**：省行动菜单 `Menu_InGame_ProvinceAction*`、行动信息 `Menu_InGame_ActionInfo_*`。  
**补丁注意**：行军改道曾做过，**已 reverted**（STATUS）。

---

## 6. 战斗

**短页**：[combat.md](combat.md)

| 符号 | 作用 |
|---|---|
| `turnMoves_IsACombatMove` | 是否交战移动 |
| `turnMoves_MoveCurrentArmy_AttackResult` / `_SEA` | 陆/海战斗结果 |
| `rollDices` / `diceRollBonus` | 骰子 |
| `getAttackersBonusFromTechnology` / `getDefenseBonusFromTechnology` | 科技修正 |
| `destroyBuildingInBattle` | 战毁建筑 |
| `getDefenseBonusLossPerTurnForNotSuppliedProvince` | 未补给防御衰减 |

悬停修正列表：`getMoveArmyModifiers_Attackers_Hover` / `_Defenders_Hover`。

---

## 7. 征兵与维护

| 概念 | 代码 |
|---|---|
| 可征兵数 | `Game_Action.getRecruitableArmy*` `getRecruitableArmyAutoplan*` |
| 征兵 UI | `Menu_InGame_ActionInfo_Recruit*` `RecruitInstantly*` |
| 视图 | `Button_View_Recruitable` |
| 征兵后重整任务 | `CivArmyMission_RegroupAfterRecruitment*` |
| AI 军费 | `AI_ArmyUpkeep` |
| 未补给消息 | `Message_ProvincesNotSupplied*` |

---

## 8. 建造与建筑

| 层 | 类 |
|---|---|
| 管理器 | `BuildingsManager` `Buildings` `BuildConfig` |
| 在建数据基类 | `Construction_GameData` |
| 具体建筑 | `Construction_GameData_{Farm,Fort,Tower,Port无Workshop,Armoury,Bunker,Library,Shaft,Supply,NuclearReactor}`（Port 走 AI/菜单命名，数据类见上表已列） |
| 玩家建造菜单 | `Menu_InGame_Build_*` / `Menu_InGame_Destroy_*` |
| 建成消息 | `Message_Bulit_*`（原版拼写 Bulit） |
| AI 建造 | `AI_Build` + `AI_Build_*` + `AI_Build_Option_*` |

**建筑类型枚举线索**：`ConstructionType`。  
**事件条件**：`Event_Conditions_Farm/Fort/Port/WatchTower`。

---

## 9. 投资 / 发展 / 同化 / 核心

| 功能 | 数据/逻辑 | UI |
|---|---|---|
| 经济投资 | `CivInvest` | `Menu_InGame_Invest*` `Button_Build_Invest` |
| 发展投资 | `CivInvest_Development` | `Button_Build_Invest_Development` |
| 完成消息 | `Message_InvestDone*` | |
| 同化 | `Assimilate_Data` `Civ_Task_Assimilate` | `Menu_InGame_Assimilate*` |
| 同化结束 | `Message_AssimilationEnd` | |
| 核心（剧本编辑） | 事件 `Event_Outcome_AddCore/RemoveCore` | `Menu_CreateScenario_Cores*` |
| 局内核心入口 | `Button_BotBar_Cores` | |

---

## 10. 外交

**短页**：[diplomacy.md](diplomacy.md)

| 概念 | 类 |
|---|---|
| 总管 | `DiplomacyManager` |
| 同盟实体/名 | `Alliance` `Alliances_Names_GameData*` |
| 贸易请求 | `TradeRequest_GameData` `TradeRequest_List` |
| 附庸创建数据 | `CreateVassal_Data` |
| 开放边境 | `OpenBorders` |
| 外交点数 | `Game_Action.getDiplomacyPoints_*` `getUpdateCivsDiplomacyPoints` |
| 关系改善等 | `Civilization_Diplomacy_*` |

**局内消息 UI**：`Menu_InGame_Message_*`（同盟、通行、礼物、最后通牒、贸易…）。  
**管理外交菜单**：`Menu_ManageDiplomacy*`。

---

## 11. 战争 / 战分 / 和约

**短页（AI 侧）**：[war-ai.md](war-ai.md)

| 概念 | 类 |
|---|---|
| 战争数据 | `War_GameData` |
| 战分 | `War_Points` |
| 和约数据 | `PeaceTreaty_GameData` `PeaceTreaty_Data` `PeaceTreaty_Demands` `PeaceTreaty_Civs` |
| 可释放附庸 | `PeaceTreaty_ReleaseableVassals*` |
| 和约 UI | `Menu_PeaceTreaty*` `Button_PeaceTreaty*` |
| 可签和消息 | `Message_WeCanSignPeace*` `Message_PeaceTreaty*` |
| 停战 | `Message_Truce*` |
| 战争赔款还清 | `Message_WarReparationsRepaid*` |
| 备战 | `Message_PrepareForWar*` + `CivArmyMission_PrepareForWar` |

历史：`HistoryLog_WarDeclaration` `HistoryLog_Peace`。

---

## 12. AI

**短页**：[war-ai.md](war-ai.md) · [file-map/ai-family.md](../file-map/ai-family.md)  
**方法索引**：[AI](../catalog/god-methods/AI.md) · [AI_Style](../catalog/god-methods/AI_Style.md) · 族页 [families](../catalog/families/INDEX.md) 中「AI」

| 层 | 类 |
|---|---|
| 调度入口 | `AI`（含 `AI$Expand` `AI$NeutralProvinces`） |
| 政体风格 | `AI_Style` + `_Democracy/_Fascism/_Communism/_Horde/_Tribal/_CityState/_Rebels` |
| 建造 | `AI_Build*` |
| 前线 | `AI_Frontline*`（若存在于包内） |
| 重整 | `AI_Regroup*` / `AI_RegoupArmyData`（原拼写） |
| 技能修正 | `AI_Skills*`（Taxation/Research 等） |
| 释放附庸 | `AI_ReleaseVassal` |
| 邻接 | `AI_BordersWith` `AI_NeighProvinces_Army` |

回合中由 `Turn_Actions` 调用；侵略度受 `Game_Calendar` / CFG 影响（速度补丁可跳过宣战评估）。

---

## 13. 政体 / 意识形态

**短页**：[governments.md](governments.md)

| 层 | 位置 |
|---|---|
| 数据 JSON | `assets/game/Governments.json` |
| 管理器 | `Ideologies_Manager` |
| 运行时对象 | `Ideology` |
| 换政体 UI | `Menu_InGame_ChangeGovernment*` `Button_Diplomacy_ChangeGovernment*` |
| 事件 | `Event_Conditions_Ideology` `Event_Outcome_ChangeIdeology` |
| AI 风格映射 | `AI_Style_*` |

报告名表：`docs/reports/CIV_NAMES_BY_GOVERNMENT.md` 等。

---

## 14. 科技 / 时代 / 宗教

| 系统 | 管理器/类 | Assets | UI |
|---|---|---|---|
| 科技 | `TechnologyManager` | 剧本 `Scenario_GameData_Technology` | `Menu_InGame_Technology*` `Menu_InGame_View_Technology*` |
| 科技消息 | `Message_TechPoints` `Message_TechResearched` | | Outliner `Text_Outliner_ResearchProgress` |
| 时代 | `Age` | `Ages.json` | `Button_Menu_Age` `Message_Age` |
| 宗教 | `ReligionManager` `Religion_GameData` | `Religions.json` | `Menu_ReligionsEditor*` |
| 黄金时代消息 | `Message_GoldenAge*` | | |

事件：`Event_Conditions_Technology*` `Event_Outcome_TechLevel`。

---

## 15. 疾病

| 层 | 类 / 文件 |
|---|---|
| 配置加载 | `PlagueManager` + `PlagueManager$ConfigDiseasesData` `$Data_Diseases` |
| 运行时数据 | `Plague_GameData` `Plagues_GameData` `PlagueProvince_GameData` |
| JSON | `assets/game/Diseases.json` |
| UI | `Menu_InGame_View_Diseases*` `Button_NS_Disease*` `Button_View_Disease` |
| 消息/日志 | `Message_Disease` `HistoryLog_Disease` |

---

## 16. 叛乱 / 革命 / 支持叛军

| 概念 | 代码 |
|---|---|
| 是否可起义 | `Game_Action.canAnyCivUprise` |
| 叛军 tag | `getSpawnRebels_CivRebelsTag*` |
| 革命军规模 | `getSpawnRevolutionaryArmy_MAX` |
| 幸福/革命风险 | `getCivHappiness*` `getModifiedRevolutionsRisk` |
| 叛军 AI | `AI_Style_Rebels` |
| 支持叛军 | `Menu_InGame_SupportRebels*` `Button_Diplomacy_SupportRebels*` |
| 消息 | `Message_Revolt` `Message_RebelsSupported` `Message_LowHappiness` `Message_LowStability` |

---

## 17. 殖民 / 中立地 / 荒地

| 概念 | 代码 |
|---|---|
| 科技可否殖民中立 | `canColonizieNeutral_Tech`（原拼写 Colonizie） |
| 荒地边境/军队条件 | `canColonizieWasteland_BorderOrArmy` `_Tech` |
| 任务 | `CivArmyMission_ColonizeProvince*` `ExpandNeutral*` `Expand_BuildPort` |
| 殖民地数据 | `Civilization_Colonies` |
| UI | `Menu_InGame_ProvinceAction_Colonize*` `Menu_InGame_Uncolonized*` `Button_Game_Colonize` |
| 剧本殖民设置 | `Menu_CreateScenario_Colonization*` |
| 日志 | `HistoryLog_NewColony` |

事件：`Event_Conditions_Neutral` `Event_Conditions_Wasteland` `Event_Outcome_Wasteland`。

---

## 18. 可成立国 / 联合

| 概念 | 类 / 路径 |
|---|---|
| 可成立数据 | `FormableCivs_GameData`（常挂 `CFG.formableCivs_GameData`） |
| 局内 UI | `Menu_InGame_FormableCiv_Provinces*` |
| 地图编辑 | `Menu_MapEditor_FormableCivs*` |
| 事件建国 | `Event_Outcome_FormCivilization` |
| 联合编辑 | `Menu_Editor_Unions*` |
| 联合资源 | `assets/game/unions/` |
| 联合消息 | `Message_Union*` `HistoryLog_Union` `Event_Outcome_JoinUnion` |

绘制：`Game.drawCities_OnlyFormableCivCapital`。

---

## 19. 神罗 HRE

| 层 | 类 |
|---|---|
| 管理器 | `HolyRomanEmpire_Manager`（`CFG.holyRomanEmpire_Manager`） |
| 数据 | `HolyRomanEmpire_GameData` |
| 剧本编辑 | `Menu_CreateScenario_HRE*` |
| UI 按钮 | `Button_HRE_Elector` `Button_HRE_Emperor` |
| 事件条件 | `Event_Conditions_IsPartOfHRE` |
| 选举消息 | `Message_HRE_Elections*` |
| 皇帝是否在局 | `Game_Action.isEmperorInTheGame` |

文明标志：`Civilization.getIsPartOfHolyRomanEmpire`；绘制帝国都城见 `Game.drawCities_OnlyCapitals_Imperial_*`。

---

## 20. 奇观

| 层 | 类 |
|---|---|
| 管理器 | `Wonders_Manager`（`Game.wondersManager`） |
| 配置/列表 | `Game_Wonders` + 内部 `Config`/`Wonder` |
| 省内奇观对象 | `Wonder`（`Province.getWonder*`） |
| UI | `Menu_InGameWonders*` `Button_NS_Wonder*` |

---

## 21. 领袖

| 层 | 类 / 路径 |
|---|---|
| 数据 | `Leader_GameData` `LeaderOfCiv_GameData` |
| Assets | `assets/game/leaders/` `leadersIMG/` |
| 事件 | `Event_Outcome_Leader` |
| 剧本事件 UI | `Menu_CreateScenario_Events_Out_Leader*` |

---

## 22. 迷雾战争

| 概念 | 代码 |
|---|---|
| 省雾状态 | `Province_FogofWar` |
| 重建雾 | `Game_Action.buildFogOfWar` `buildFogOfWar_CivID` `buildFogOfWar_WatchTower` |
| 移动后更新 | `turnMoves_UpdatePlayersFogOfWar` |
| 玩家开关 | `Player.getFogOfWar` / `setFogOfWar` |
| 绘制变体 | `Game.draw*_FogOfWarDiscovery*` |

控制台可触达雾（`ConsoleCmds` 内调用 `buildFogOfWar`）。

---

## 23. 事件系统

**全表**：[EVENT_CONDITIONS.md](../catalog/EVENT_CONDITIONS.md) · [EVENT_OUTCOMES.md](../catalog/EVENT_OUTCOMES.md) · [EventsManager](../catalog/god-methods/EventsManager.md)

| 层 | 类 |
|---|---|
| 管理器 | `EventsManager` |
| 条件基类 | `Event_Conditions` + 53 个子类（见下） |
| 结果基类 | `Event_Outcome` + 41 个子类 |
| 剧本事件编辑 UI | `Menu_CreateScenario_Events_*` |

### 条件一览（类名即语义）

`Allies, AtWar, CivExist, ControlledByPlayer, ControlsProvinces, DecisionTaken, DefensivePact, Development[_Low], Economy[_Low], EventChance, Farm, Fort, Happiness[_Low], HaveArmy, HaveCore, Ideology, Independence, IsAVassal, IsAVassalOfCiv, IsAtWar, IsCapital, IsPartOfHRE, MilitaryAccess, Neutral, NonAggression, NumOfAllies[_Low], NumOfNeighbors[_Low], NumOfUnits[_Low], NumOfVassals[_Low], NumOfWars[_Low], NumberOfProvinces[_Low], OccupyProvinces, Population[_Low], Port, Relation[_Low], Technology[_Low], Treasury[_Low], Wasteland, WatchTower`

### 结果一览

`AddArmy, AddCore, ChangeIdeology, ChangeOwner, CivName, CreateVassal, DeclareWar, DecreaseRelation, DefensivePact, DevLevel, DiplomacyPoints, FormCivilization, IncreaseRelation, Independence, JoinAlliance, JoinUnion, Leader, LeaveAlliance, LiberateVassal, MilitaryAccess, Money, MoveCapital, MovementPoints, NonAggression, Occupy, PlayAsCiv, ProvinceName, RemoveCore, TechLevel, TriggerAnotherEvent, UpdateEconomy[OfCiv|Perc], UpdateHappiness[OfCiv], UpdatePopulation[OfCiv|Perc], Wasteland, WhitePeace`

---

## 24. 消息系统

| 层 | 说明 |
|---|---|
| 类型类 | `Message_*`（113 个顶层，**含说明+方法**：[MESSAGE_TYPES.md](../catalog/MESSAGE_TYPES.md)） |
| 展示菜单 | `Menu_InGame_Message_*`（见 [MENU_FAMILIES](../catalog/MENU_FAMILIES.md)） |
| 暂停 RTS | `Game_Action.checkMessages_PauseRTS` |

命名即玩法（`Message_Alliance_Accepted`、`Message_War`、`Message_Disease`…）；注意原拼写 `Bulit`/`TradeReuest`。

---

## 25. 剧本创建 / 编辑 / 导出

**短页**：[scenarios.md](scenarios.md) · [civ-select-search.md](civ-select-search.md)

| 概念 | 类 |
|---|---|
| 剧本列表 | `Game_Scenarios` |
| 剧本数据块 | `Scenario_GameData*`（军队、外交、省、科技…） |
| 创建 UI 族 | `Menu_CreateScenario*`（体量最大菜单族之一） |
| 选剧本 | `Menu_ChooseScenario*` |
| 新游戏 | `Menu_CreateNewGame*` |
| 导出（本仓库） | `ScenarioExport` → Download |
| 文明选择缓存 | `CivSelectCache` `CivSearchIme` |

**Assets**：`map/TZ/scenarios/` + 索引文件；Android **不**目录扫描。

---

## 26. 存档 / 读档

| 层 | 类 |
|---|---|
| 管理器 | `SaveManager`（含 `ConfigSaveInfo` `Data_Save_Info`） |
| 分片数据 | `Save_GameData` `Save_GameData2` `Save_GameData_1`…`_11` |
| 文明/外交附加 | `Save_Civ_GameData` `Save_CivDiplo*_GameData` |
| 读档 UI | `Menu_LoadGame*` |
| 载地图 | `Menu_LoadMap*` |
| 预生成边界等 | `Menu_Load_GeneratePreDefinedBorders*` `PreDefined_Borders_*` |

改存档格式极危险：需同步所有 `Save_GameData_*` 读写顺序。

---

## 27. 地图 / 渲染 / 旗帜

| 概念 | 类 |
|---|---|
| 地图管理 | `Map` + `Map_*`（背景、层、配置） |
| 渲染管线 | `Game_Render` |
| 省界 | `Province_Border` `PreDefined_Borders_*` |
| 旗帜 | `FlagManager` + `assets/game/flags/` |
| 现行地图包 | `assets/map/TZ/` |
| 地图列表 | `assets/map/Age_of_Civilizations.json`（Folder=`TZ`） |
| 地图编辑器 UI | `Menu_MapEditor*` |

绘制入口大量在 `Game.draw*`；雾变体见第 22 节。

---

## 28. 延时摄影 / 随机游戏 / 胜利

| 系统 | 类 |
|---|---|
| 延时 | `TimelapseManager` `Timelapse_*` |
| 随机 | `RandomGame_Manager` `RandomGame_Player`；`Game_Scenarios$RandomGame_AoCMode` |
| 胜利 | `Menu_Victory*` `Button_VictoryStats` `Graph_Circle_VictoryConditions` |
| 游戏结束检查 | `Game_Action.checkGameEnd` |

---

## 29. 控制台与注入

**短页**：[console.md](console.md)

| 项 | 路径 |
|---|---|
| Java 源 | `tools/console/console_src/` |
| 构建注入 | `tools/console/build_console_engine.ps1` |
| 宏 | `assets/console/*.txt` |
| API 账本 | `docs/reports/CONSOLE_API_LEDGER.md` |

注入类：`Console*` `Calc*` `BudgetCore` `CivSelectCache` `CivSearchIme` `ScenarioExport` 等（见 `file-map/generated-classes.md`）。

---

## 30. 品牌与外链

**短页**：[branding-links.md](branding-links.md)

主菜单/关于页文案与链接；安装 id `tz.yx.gemorin`；展示名葛墨林/Gemorin。

---

## 附录 A：局内 HUD 菜单速查

| 前缀 | 用途 |
|---|---|
| `Menu_InGame_` | 局内几乎所有面板 |
| `Menu_InGame_View_` | 地图着色视图（人口/科技/疾病…） |
| `Menu_InGame_Message_` | 外交/战争消息弹层 |
| `Menu_InGame_Build_` / `Destroy_` | 建造拆除 |
| `Menu_InGame_ActionInfo_` | 行动确认信息 |
| `Menu_InGame_Outliner` | 大纲 |

完整菜单对照：[file-map/menus.md](../file-map/menus.md)

---

## 附录 B：历史日志类型

`HistoryLog_{Annexation,Disease,FriendlyCivs,Guarantee,HaveMilitartyAccess,IsNotVassal,IsVassal,JoinAlliance,LeavesAlliance,NewColony,Peace,SignedDefensivePact,SignedNonAggressionPact,Union,WarDeclaration}` + `HistoryLog_Types`

---

## 附录 C：如何声明「某机制已讲清」

对 AI 而言，机制「讲清」= 能回答：

1. 玩家从哪个 UI 触发？  
2. 哪个类的哪个方法改状态？  
3. 数据存在 Province/Civilization/独立 Manager/JSON 哪里？  
4. 有无 Message/Event/HistoryLog？  
5. STATUS 里是 live / reverted / 未碰？

若缺第 2 点，用 [../AI_NAV.md](../AI_NAV.md) 的 Grep 模板补方法名后再改代码。
