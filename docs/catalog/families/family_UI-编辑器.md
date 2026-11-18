# 类族：UI-编辑器

顶层 **16**，含内部类合计 **31**。

| 类 | 内部? | KB | 方法 | 说明 | 关键方法 |
|---|---|---:|---:|---|---|
| `Menu_Editor` |  | 42.5 | 5 | 编辑器菜单 | `reloadScenario`, `actionElement`, `draw`, `onBackPressed`, `updateLanguage` |
| `Menu_Editor_Cities` |  | 33.8 | 4 | 编辑器菜单 | `actionElement`, `draw`, `onBackPressed`, `updateLanguage` |
| `Menu_Editor_Cities$1` | yes | 2.8 | 1 | 内部类 → 外层 `Menu_Editor_Cities`（编辑器菜单）｜本类 `Menu_Editor_Cities$1` | `buildElementHover` |
| `Menu_Editor_Civilizations` |  | 46.6 | 10 | 编辑器菜单 | `getFlagID`, `getIsLoaded`, `loadFlag`, `actionElement`, `disposeData`, `draw` …(+4) |
| `Menu_Editor_GameCivs` |  | 57.7 | 10 | 编辑器菜单 | `getFlagID`, `getIsLoaded`, `loadFlag`, `actionElement`, `disposeData`, `draw` …(+4) |
| `Menu_Editor_GameCivs_Alphabet` |  | 26.1 | 3 | 编辑器菜单｜含: 字母表筛选 | `actionElement`, `updateLanguage` …(+1) |
| `Menu_Editor_GameCivs_Alphabet$1` | yes | 4.4 | 2 | 内部类 → 外层 `Menu_Editor_GameCivs_Alphabet`（编辑器菜单｜含: 字母表筛选）｜本类 `Menu_Editor_GameCivs_Alphabet$1` | `buildElementHover`, `getTextToDraw` |
| `Menu_Editor_GameCivs_Alphabet$2` | yes | 3.2 | 1 | 内部类 → 外层 `Menu_Editor_GameCivs_Alphabet`（编辑器菜单｜含: 字母表筛选）｜本类 `Menu_Editor_GameCivs_Alphabet$2` | `buildElementHover` |
| `Menu_Editor_GameCivs_Alphabet$3` | yes | 3.2 | 1 | 内部类 → 外层 `Menu_Editor_GameCivs_Alphabet`（编辑器菜单｜含: 字母表筛选）｜本类 `Menu_Editor_GameCivs_Alphabet$3` | `buildElementHover` |
| `Menu_Editor_GameCivs_Edit2` |  | 68.4 | 5 | 编辑器菜单 | `saveData`, `actionElement`, `draw`, `onBackPressed`, `updateLanguage` |
| `Menu_Editor_GameCivs_Edit2$1` | yes | 2.1 | 1 | 内部类 → 外层 `Menu_Editor_GameCivs_Edit2`（编辑器菜单）｜本类 `Menu_Editor_GameCivs_Edit2$1` | `getTextToDraw` |
| `Menu_Editor_GameCivs_Edit2$2` | yes | 9.1 | 1 | 内部类 → 外层 `Menu_Editor_GameCivs_Edit2`（编辑器菜单）｜本类 `Menu_Editor_GameCivs_Edit2$2` | `drawText` |
| `Menu_Editor_GameCivs_Edit2$3` | yes | 10.5 | 2 | 内部类 → 外层 `Menu_Editor_GameCivs_Edit2`（编辑器菜单）｜本类 `Menu_Editor_GameCivs_Edit2$3` | `drawText`, `setCurrent` |
| `Menu_Editor_GameCivs_Title` |  | 6.3 | 3 | 编辑器菜单 | `actionElement`, `onBackPressed`, `updateLanguage` |
| `Menu_Editor_Scenarios` |  | 26.2 | 3 | 编辑器菜单｜含: 剧本 | `actionElement`, `draw`, `updateLanguage` |
| `Menu_Editor_Scenarios$1` | yes | 11.9 | 1 | 内部类 → 外层 `Menu_Editor_Scenarios`（编辑器菜单｜含: 剧本）｜本类 `Menu_Editor_Scenarios$1` | `buildElementHover` |
| `Menu_Editor_Scenarios$2` | yes | 18.4 | 1 | 内部类 → 外层 `Menu_Editor_Scenarios`（编辑器菜单｜含: 剧本）｜本类 `Menu_Editor_Scenarios$2` | `buildElementHover` |
| `Menu_Editor_Scenarios_Title` |  | 4.9 | 3 | 编辑器菜单｜含: 剧本 | `actionElement`, `onBackPressed`, `updateLanguage` |
| `Menu_Editor_Translations` |  | 9.0 | 2 | 编辑器菜单 | `actionElement`, `updateLanguage` |
| `Menu_Editor_Union_Edit` |  | 22.1 | 3 | 编辑器菜单｜含: 联合 | `actionElement`, `onBackPressed`, `updateLanguage` |
| `Menu_Editor_Unions` |  | 5.3 | 3 | 编辑器菜单｜含: 联合 | `actionElement`, `onBackPressed`, `updateLanguage` |
| `Menu_Editor_Unions_AddCiv` |  | 4.8 | 4 | 编辑器菜单｜含: 联合 | `actionClose`, `actionElement`, `onBackPressed`, `updateLanguage` |
| `Menu_Editor_Unions_AddCiv_Alphabet` |  | 28.2 | 3 | 编辑器菜单｜含: 联合, 字母表筛选 | `actionElement`, `updateLanguage` …(+1) |
| `Menu_Editor_Unions_AddCiv_Alphabet$1` | yes | 4.4 | 2 | 内部类 → 外层 `Menu_Editor_Unions_AddCiv_Alphabet`（编辑器菜单｜含: 联合, 字母表筛选）｜本类 `Menu_Editor_Unions_AddCiv_Alphabet$1` | `buildElementHover`, `getTextToDraw` |
| `Menu_Editor_Unions_AddCiv_Alphabet$2` | yes | 3.2 | 1 | 内部类 → 外层 `Menu_Editor_Unions_AddCiv_Alphabet`（编辑器菜单｜含: 联合, 字母表筛选）｜本类 `Menu_Editor_Unions_AddCiv_Alphabet$2` | `buildElementHover` |
| `Menu_Editor_Unions_AddCiv_Alphabet$3` | yes | 3.2 | 1 | 内部类 → 外层 `Menu_Editor_Unions_AddCiv_Alphabet`（编辑器菜单｜含: 联合, 字母表筛选）｜本类 `Menu_Editor_Unions_AddCiv_Alphabet$3` | `buildElementHover` |
| `Menu_Editor_Unions_AddCiv_List` |  | 58.5 | 10 | 编辑器菜单｜含: 联合 | `getFlagID`, `getIsLoaded`, `loadFlag`, `onBack`, `actionElement`, `draw` …(+4) |
| `Menu_Editor_Unions_AddCiv_List$1` | yes | 4.9 | 1 | 内部类 → 外层 `Menu_Editor_Unions_AddCiv_List`（编辑器菜单｜含: 联合）｜本类 `Menu_Editor_Unions_AddCiv_List$1` | `buildElementHover` |
| `Menu_Editor_Unions_AddCiv_List$2` | yes | 4.9 | 1 | 内部类 → 外层 `Menu_Editor_Unions_AddCiv_List`（编辑器菜单｜含: 联合）｜本类 `Menu_Editor_Unions_AddCiv_List$2` | `buildElementHover` |
| `Menu_Editor_Unions_AddCiv_List$3` | yes | 4.9 | 1 | 内部类 → 外层 `Menu_Editor_Unions_AddCiv_List`（编辑器菜单｜含: 联合）｜本类 `Menu_Editor_Unions_AddCiv_List$3` | `buildElementHover` |
| `Menu_Editor_Unions_List` |  | 37.2 | 10 | 编辑器菜单｜含: 联合 | `getFlagID`, `getIsLoaded`, `loadFlag`, `actionElement`, `disposeData`, `draw` …(+4) |
