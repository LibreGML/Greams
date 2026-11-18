# 类名前缀指南（扁平包命名语法）

全部类位于同一目录。**前缀 = 职责命名空间。**

## 核心

| 前缀/名 | 含义 |
|---|---|
| `Game` / `Game_*` | 游戏容器与子系统 |
| `CFG` | 全局配置与静态引用 |
| `AoCGame` / `AndroidLauncher` | 引擎入口 |
| `Player` | 本地玩家 |
| `Province` / `Province_*` | 省份 |
| `Civilization` / `Civilization_*` | 文明 |
| `Map` / `Map_*` | 地图 |

## UI

| 前缀 | 含义 |
|---|---|
| `Menu_` | 整页/面板 |
| `Button_` | 按钮 |
| `Text_` / `TextSlider_` | 文本与说明 |
| `Slider_` | 滑条 |
| `Graph_` | 统计图 |
| `ColorPicker_` | 取色 |
| `MenuElement_` | 菜单元素/悬停块 |

## 玩法系统

| 前缀 | 含义 |
|---|---|
| `AI_` / `AI_Style_` / `AI_Build_` | AI |
| `Diplomacy*` / `Alliance` / `TradeRequest_` | 外交 |
| `War_` / `PeaceTreaty_` | 战争与和约 |
| `Message_` | 局内消息类型 |
| `Event_Conditions_` / `Event_Outcome_` | 事件 |
| `Construction_GameData_` / `Buildings*` | 建筑 |
| `CivArmyMission_` / `MoveUnits_` / `RegroupArmy_` | 军队任务与移动 |
| `Save_` / `SaveManager` | 存档 |
| `Scenario_` / `Game_Scenarios` | 剧本数据 |
| `HistoryLog_` | 历史日志 |
| `Timelapse_` | 延时 |
| `Flag*` / `Wonder*` / `Plague*` / `Religion*` / `Ideology*` | 各专题 |

## 本仓库注入（非原版）

见 [../file-map/generated-classes.md](../file-map/generated-classes.md)：`Console*`、`BudgetCore`、`CivSelectCache`、`CivSearchIme`、`ScenarioExport`、`Calc*` 等。

## `$` 内部类

`Outer$1` = 匿名 listener；`Outer$InnerName` = 命名内部类（如 `Game_Action$TurnStates`）。  
改逻辑优先改 Outer 的具名方法，避免只改匿名类导致漏回调。
