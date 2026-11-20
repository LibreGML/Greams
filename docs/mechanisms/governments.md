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

## 平衡原则（2026-11-19）

按财政合法性 / 提取能力 / 知识体制 / 行政跨度 / 不稳定类型 / 攻防姿态拉开 46 政体差距；包络与族谱见 [../reports/GOVERNMENTS.md](../reports/GOVERNMENTS.md)。生成：`python tools/patches/live/rebuild_governments.py`。

`harden()` 强制：`INCOME_*≤1.12`、`RECRUITABILITY≥1.00`、`COST_OF_RECRUIT 16–24`、高产出必须高军费/行政——预防万回合财政/征兵塌缩。字段名必须是 **`REFORMAT_PERIOD`**（勿写 REPLACE）。

## BUG

BUG-002 公社后期崩经济 → 已通过政体重写 + harden 包络 fixed。  
加载挂死「读取革命图形」→ 误用 `REPLACE_PERIOD` 触发 Json SerializationException → 已改回 `REFORMAT_PERIOD`。
