# 创建国家列表与搜索

## 玩家路径

创建/管理剧本 → 管理国家 → 选地块 → 左下角 **创建国家** → 右侧字母栏 + 列表；左上角 **Search**。

## 菜单组装

`MenuManager.setViewID(eCREATE_SCENARIO_CIVILIZATIONS_SELECT)` 创建：

1. `Menu_CreateScenario_Civilizations_Select`（标题）
2. `Menu_CreateScenario_Civilizations_Select_Alphabet`
3. `Menu_CreateScenario_Civilizations_Select_List`

入口按钮：`Menu_CreateScenario_Civilizations` → `AddCivilization` → 上述 view。

## 列表性能（live）

| 组件 | 作用 |
|---|---|
| `CivSelectCache.smali` | 一次加载 tag/名/拼音；n log n 排序；HashSet 过滤已入场 |
| `Select_List.<init>` | 调用 `CivSelectCache.fillSortedLists` 后线性建按钮 |
| `Select_Alphabet.<init>` | `CivSelectCache.fillAlphabet` |
| 源码 | `tools/console/console_src/.../CivSelectCache.java` |
| 补丁脚本 | `tools/patches/live/fix_civ_select_speed.py` |
| 拼音索引资产 | `AOE_unpacked/assets/game/civilizations/CivSearchIndex.txt` |
| 生成索引 | `tools/patches/live/build_civ_search_index.py` |

主数据：`assets/game/civilizations/Age_of_Civilizations`（分号 tag 列表）。

## Search + 系统 IME（live）

| 组件 | 作用 |
|---|---|
| `Alphabet.actionElement(0)` | `CivSearchIme.open()` — **不**弹内置拉丁键盘 |
| `CivSearchIme.smali` | 隐藏 `Keyboard` 面板；`ConsoleFloat.showSystemIme()` |
| `AoCGame.keyTyped` | `CivSearchIme.active` 时接收按键 |
| `CFG$17` / `$16` / `$15` | 写入/删改 `CFG.sSearch` → `rebuildCreateScenario_Civilizations_SelectList` |
| 模糊匹配 | `CivSelectCache`：中文名、tag、全拼、首字母、子序列、多词 AND、相关度排序 |
| `GLSurfaceView20.onCreateInputConnection` | `inputType=TYPE_CLASS_TEXT`（中文候选）；`fullEditor=false`（字符进 keyTyped） |

## 禁止

- 不要对 Search 设 `Keyboard.commandsMode`（会抢走控制台 handler）。
- 不要把 `fullEditor` 改回 true（中文提交进 Editable，进不了 `keyTyped`）。
