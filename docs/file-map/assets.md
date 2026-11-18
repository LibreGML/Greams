# Assets 地图

> 全表与加载线索见 **[../catalog/ASSETS.md](../catalog/ASSETS.md)**。

根：`AOE_unpacked/assets/`

| 路径 | 内容 |
|---|---|
| `game/Governments.json` | 政体 |
| `game/Ages.json` / `Diseases.json` / `Religions.json` | 时代/疾病/宗教 |
| `game/languages/Bundle.properties` | UI 文案 |
| `game/languages/civilizations/Bundle.properties` | 文明名 |
| `game/civilizations/Age_of_Civilizations` | 文明 tag 分号表 |
| `game/civilizations/CivSearchIndex.txt` | 搜索拼音索引 |
| `game/flags/` | 国旗 PNG（部分 `*_?.png` 解包失败 = BUG-001） |
| `map/TZ/` | **现行地图** |
| `map/TZ/scenarios/` | 内置剧本 + `Age_of_Civilizations` 索引 |
| `map/Age_of_Civilizations.json` | 地图列表（Folder=`TZ`） |
| `console/*.txt` | 控制台宏（boost/god/…） |
| `UI/` / `sounds/` / `music/` | 界面与音效 |

## 注意

- Android **不**扫描 scenarios 目录；只读索引文件。
- 用户新建剧本在 **local files**，不在 assets；需 `ScenarioExport` 再导入。
- 改文明名/政体后若搜索拼音过期，重跑 `build_civ_search_index.py`。
