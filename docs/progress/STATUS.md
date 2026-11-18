# 系统状态表（live / reverted / unsafe）

> Agent 动手前先看本表。详细叙事见 [CHANGELOG.md](CHANGELOG.md)。

图例：`live` = 现网有效；`reverted` = 代码已回退勿再加；`unsafe-to-rerun` = 脚本会破坏构建。

| 系统 | 状态 | 主位置 | 脚本 / 源 | 验证 |
|---|---|---|---|---|
| 占领经济 A3（税10%/产~10%/征兵15%） | live | `Game_NextTurnUpdate` / `Game_Action.getRecruitableArmy` / `Province` / `Civilization` | `tools/patches/live/fix_occupy_economy_a3.py` | 2026-11-18 |
| 战争 AI 评分强化 | live | `AI_Style.moveAtWar_AttackTo_Score`；宣战评分 | `tools/patches/live/fix_ai_war_smart.py` | 2026-11-18 |
| 新的回合加速（无 AI 错峰） | live | `Turn_Actions` / AI 热路径日志裁剪 | `tools/patches/live/fix_next_turn_speed.py` | 2026-11-18 |
| 小国和平 AI 错峰 | **reverted** | （已恢复每文明完整 turnOrders） | 曾在 next_turn 脚本中 | 2026-11-18 撤销 |
| 行军改道 | **reverted** | `Game_Action` / `Menu_InGame_ProvinceAction` | `tools/patches/do-not-rerun/fix_army_reroute.py` | 已回退 |
| 省界内边框 + 城市 100% | live | `SettingsManager` / `CFG.loadSettings` | changelog | 2026-11-18 |
| 行军/征兵徽章全量绘制 | live | `DRAW_MOVE_UNITS_ARMY_IN_EVERYSINGLE_PROVINCE` | SettingsManager / CFG | 2026-11-18 |
| 财政 long ledger + UI | live | `BudgetCore` + `Civilization` long 字段 | 多条 budget fix 脚本 | 2026-11-17+ |
| `rewrite_money_display.py` | **unsafe-to-rerun** | 曾导致 VerifyError | `tools/patches/do-not-rerun/` | BUG-004 |
| 政体重写 + 文明政体名 | live | `assets/game/Governments.json` + civ Bundle | `rebuild_governments.py` 等 | 2026-11-17 |
| 剧本政府 Extra_Tag 修正 | live | `assets/map/TZ/scenarios/**` | `fix_scenario_governments.py` 等 | 2026-11-17 |
| 默认开局难度/战争迷雾/侵略度 | live | `CFG` / `Game_Calendar` / `Menu_Games` | changelog | 2026-11-17 |
| 默认剧本必须重载 | live | `Menu_Games.clickNewGame` 等 | BUG-003 | fixed |
| 重品牌 Gemorin | live | `CFG` / About / `Menu_Main` 外链 | `rebrand_gemorin.py` | 2026-11-18 |
| 创建国家列表加速 | live | `CivSelectCache` + Select_List/Alphabet | `fix_civ_select_speed.py` | 2026-11-18 |
| 创建国家 Search 系统 IME + 模糊搜 | live | `CivSearchIme` / `CivSelectCache` / `AoCGame.keyTyped` | console_src | 2026-11-18 |
| 剧本导出到 Download | live | `ScenarioExport`；`Game.saveScenario`；`Map_BG` preview | `ScenarioExport.java` | 2026-11-18 |
| 控制台引擎 | live | `Console*` / `Calc*` | `tools/console/` | 持续 |
| 真机闭环 adb | live | `192.168.0.178:5555` / `tz.yx.gemorin` | BUILD.md | 2026-11-18 |
| AI 文档导航（百科+类目录） | live | `docs/AI_NAV.md` / `mechanisms/ENCYCLOPEDIA.md` / `docs/catalog/` | 文档轮 | 2026-11-18 |
| 全量 smali 编目 + 神类方法索引 | live | `docs/catalog/FILES_INDEX.md` / `god-methods/` / `ALL_CLASSES.jsonl` | `gen_ai_docs_catalog.py` | 2026-11-18 |

## 快速禁令

- 不要重新应用行军改道。
- 不要重新引入小国和平 AI 错峰。
- 不要重跑 `rewrite_money_display.py`。
