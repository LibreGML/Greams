# 回合管线 / 「新的回合」

## 玩家路径

局内右下角 **新的回合** → 状态机推进 AI → 结算 → 回到玩家可操作。

## 主类 / 方法

| 职责 | 文件 | 符号 |
|---|---|---|
| 回合状态机 | `Game_Action.smali` | 内部 `TurnStates` / 推进逻辑 |
| 新回合入口 | `Turn_NewTurn.smali` | `doAction` |
| AI 下单批处理 | `Turn_Actions.smali` | `LOAD_AI_RTO` 等；调用 `AI.turnOrders*` |
| 每回合经济结算 | `Game_NextTurnUpdate.smali` | 税收/生产/维护等 |
| 日历 | `Game_Calendar.smali` | 回合推进、侵略度等全局 |
| 默认开局卡死修复 | `Menu_Games.smali` | `clickNewGame` 强制 `loadScenario` |

## 速度优化（live）

脚本：`tools/patches/live/fix_next_turn_speed.py`

保留的优化：

- 去掉热路径过量日志
- 去掉每文明 `CFG.setRender_3`
- `AI_AGGRESSIVNESS=0` 时跳过宣战评估
- 起义处理放到后台线程

## 禁止

- **已回退**：小国和平期 AI 错峰（勿再引入「跳过小国 turnOrders」）。

## 相关

- [occupy-economy.md](occupy-economy.md)（结算里读占领逻辑）
- [war-ai.md](war-ai.md)
