# 政府 / 政体

## 玩家路径

文明详情中的政府类型；剧本里各国 Extra_Tag；创建/编辑文明时的政府选择。

## 主数据

| 资产 | 路径 |
|---|---|
| 政体定义 | `AOE_unpacked/assets/game/Governments.json` |
| 文案 | `AOE_unpacked/assets/game/languages/Bundle.properties` |
| 文明名（含政体变体） | `AOE_unpacked/assets/game/languages/civilizations/Bundle.properties` |

## 代码

| 职责 | 文件 |
|---|---|
| 政体管理器 | `Ideologies_Manager.smali` / `Ideology.smali` |
| 文明当前政府 | `Civilization.smali` |
| 剧本内嵌政府 | 各 scenario 数据文件 + 修复脚本 |

## 补丁（live）

- `tools/patches/live/rebuild_governments.py`
- `tools/patches/live/rebuild_civ_gov_names.py`
- `tools/patches/live/fix_scenario_governments.py`
- `tools/patches/live/fix_cr_scenario_governments.py`
- 报告：[../reports/GOVERNMENTS.md](../reports/GOVERNMENTS.md)

## BUG

BUG-002 公社后期崩经济 → 已通过政体重写 fixed。
