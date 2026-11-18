# Assets 深度目录（AI）

根: `AOE_unpacked/assets/`

## 顶层一览

| 路径 | 类型 | 文件数 | 说明 | 代码线索 |
|---|---|---:|---|---|
| `config.ini` | FILE | 1 | 配置 | CFG / 启动 |
| `console/` | DIR | 4 | 控制台宏 | Console* 注入 |
| `game/` | DIR | 15680 | 玩法数据 | 各 Manager / Game |
| `ic_32x32.ico` | FILE | 1 | 图标 | 包装 |
| `ic_32x32.png` | FILE | 1 | 图标 | 包装 |
| `map/` | DIR | 31390 | 地图与剧本 | Map / Game 剧本 IO |
| `music/` | DIR | 13 | 音乐 | 音频 |
| `settings` | FILE | 1 | 设置 | CFG |
| `settings_map` | FILE | 1 | 地图设置 | CFG / Map |
| `sounds/` | DIR | 41 | 音效 | 音频 |
| `UI/` | DIR | 1773 | 界面图 | Images / ImageManager |

## game/ 明细

| 路径 | 文件数 | 说明 | 主代码 |
|---|---:|---|---|
| `game/Ages.json` | 1 | 时代定义 | `Age` |
| `game/alliance_names/` | 3 | 同盟名池 | `Alliances_Names_GameData*` |
| `game/civilizations/` | 5568 | 文明数据 + tag 表 + 搜索索引 | `Game / CivSearch*` |
| `game/civilizations_editor/` | 427 | 编辑器用文明 | `Menu_Editor* / CreateScenario` |
| `game/diplomacy_colors/` | 5 | 外交着色 | `外交视图` |
| `game/Diseases.json` | 1 | 疾病定义 | `PlagueManager` |
| `game/flags/` | 8294 | 国旗 PNG | `FlagManager` |
| `game/flags_editor/` | 385 | 旗编辑资源 | `旗编辑 UI` |
| `game/fonts/` | 7 | 字体 | `渲染` |
| `game/Governments.json` | 1 | 政体 | `Ideologies_Manager` |
| `game/Governments.json.bak_before_gov_redesign` | 1 | 政体备份（非现网） | `—` |
| `game/languages/` | 9 | 文案 Bundle | `全部 UI 字符串` |
| `game/leaders/` | 446 | 领袖数据 | `Leader_*` |
| `game/leadersIMG/` | 9 | 领袖图 | `领袖 UI` |
| `game/lines/` | 25 | 线素材 | `MoveUnits 行军线等` |
| `game/pallets_of_civs_colors/` | 419 | 文明调色板 | `颜色选择` |
| `game/Religions.json` | 1 | 宗教 | `ReligionManager` |
| `game/service_ribbons/` | 45 | 绶带 | `ServiceRibbon_Manager` |
| `game/shader/` | 6 | 着色器 | `Game_Render` |
| `game/terrain_types/` | 18 | 地形 | `Province / 地形` |
| `game/unions/` | 9 | 联合定义 | `Menu_Editor_Unions*` |

## game/languages/

| 文件/目录 | 说明 |
|---|---|
| `game/languages/Age_of_Civilizations` | UI/文明文案；改可见文字先搜这里 |
| `game/languages/Bundle.properties` | UI/文明文案；改可见文字先搜这里 |
| `game/languages/civilizations/Bundle.properties` | UI/文明文案；改可见文字先搜这里 |
| `game/languages/civilizations/Bundle.properties.bak_before_gov_names` | UI/文明文案；改可见文字先搜这里 |
| `game/languages/events/Age_of_Civilizations` | UI/文明文案；改可见文字先搜这里 |
| `game/languages/events/Bundle.properties` | UI/文明文案；改可见文字先搜这里 |
| `game/languages/events/Bundle_ru.properties` | UI/文明文案；改可见文字先搜这里 |
| `game/languages/events/Bundle_ua.properties` | UI/文明文案；改可见文字先搜这里 |
| `game/languages/loading/Bundle.properties` | UI/文明文案；改可见文字先搜这里 |

## map/

| 路径 | 文件数 | 说明 |
|---|---:|---|
| `map/Age_of_Civilizations.json` | 1 | 地图列表；Folder=TZ 为现行 |
| `map/backgrounds/` | 1 | 背景图 |
| `map/data/` | 133 | 地图数据 |
| `map/TZ/` | 31255 | 现行地图包（几何/场景/剧本） |

## map/TZ/ 顶层

| 路径 | 文件数 | 说明 |
|---|---:|---|
| `map/TZ/army_boxes/` | 237 |  |
| `map/TZ/cities/` | 6 | 城市 |
| `map/TZ/config.json` | 1 |  |
| `map/TZ/data/` | 30363 | 省数据/邻接等 |
| `map/TZ/formable_civs/` | 91 |  |
| `map/TZ/ico.png` | 1 |  |
| `map/TZ/province_names/` | 1 |  |
| `map/TZ/scenarios/` | 539 | 内置剧本；索引文件 Age_of_Civilizations（Android 不扫目录） |
| `map/TZ/update/` | 1 |  |
| `map/TZ/wonders/` | 15 |  |

## map/TZ/scenarios/ 列表（摘录）

条目数: **50**（含索引与子目录）

- `-461`
- `1`
- `1130`
- `1242`
- `1278`
- `1440`
- `1638687969861zekndibk`
- `1644`
- `1676109427987pkdtnfjj`
- `1680526141713dduthfzo`
- `1690041320504eoyphtnx`
- `1690475187972qwgxfmjd`
- `1700`
- `1721835430051fmfkwqvv`
- `1800`
- `1810`
- `1838`
- `1900`
- `1914`
- `1918`
- `1919`
- `1930`
- `1936`
- `1936a`
- `1936b`
- `1940`
- `1945`
- `1945(解放战争)`
- `1946`
- `1950`
- `1960`
- `1991`
- `1992a`
- `1993`
- `2000`
- `2020`
- `2020a`
- `2023`
- `2030`
- `222`
- `395`
- `670`
- `755`
- `Age_of_Civilizations`
- `Great_Proletarian_Cultural_Revolution`
- `cnwar`
- `意呆利万岁！`
- `意大利万岁`
- `欧洲乱炖`
- `错位时空`

## console/

- `boost.txt` — 控制台宏文本
- `fillarmy.txt` — 控制台宏文本
- `god.txt` — 控制台宏文本
- `warprep.txt` — 控制台宏文本

## 修改规则

1. 改 JSON 后确认对应 Manager 字段仍匹配。
2. 改文明名/tag 后视情况重建 `CivSearchIndex.txt`。
3. 用户新建剧本在设备 local files；导出靠 `ScenarioExport`。
4. Android **只读** scenarios 索引文件，不扫描目录新增项。

## 交叉链接

- 机制百科: [../mechanisms/ENCYCLOPEDIA.md](../mechanisms/ENCYCLOPEDIA.md)
- 导航: [../AI_NAV.md](../AI_NAV.md)
- 定位: [HOW_TO_LOCATE.md](HOW_TO_LOCATE.md)
