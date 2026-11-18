# Menu_* 前缀对照

`MenuManager` 用枚举 `Menu.e*` + `setViewID` 切换。文件名即线索。

| 前缀 | 含义 |
|---|---|
| `Menu_Main*` | 主菜单 |
| `Menu_Games*` / `Menu_CreateNewGame*` | 新游戏 / 选剧本 |
| `Menu_InGame*` | 局内 HUD、省份操作、外交弹层等（数量最多） |
| `Menu_CreateScenario*` | 创建/编辑剧本全流程 |
| `Menu_Editor*` | 编辑器入口与文明/城市等 |
| `Menu_MapEditor*` | 地图编辑 |
| `Menu_ManageDiplomacy*` | 外交管理 |
| `Menu_Load*` / `Menu_LoadMap*` / `Menu_InitGame*` | 加载 |
| `Menu_About*` | 关于 |
| `Button_*` | 可复用按钮控件（非整页菜单） |

## 与本仓库强相关的页面

| 页面 | 类 |
|---|---|
| 管理国家 / 创建国家 | `Menu_CreateScenario_Civilizations*` / `*_Select*` |
| 剧本设置保存 | `Menu_CreateScenario_Settings*` |
| 编辑器剧本列表 | `Menu_Editor_Scenarios*` |
| 选择剧本 | `Menu_ChooseScenario*` |
