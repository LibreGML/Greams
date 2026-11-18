# 战斗结算

## 玩家路径

军队进入敌省交战 / 回合移动结算攻击结果。

## 主类 / 方法

| 职责 | 文件 | 符号线索 |
|---|---|---|
| 移动与攻击结果 | `Game_Action.smali` | `turnMoves_MoveCurrentArmy_AttackResult`、`rollDices` |
| 省份驻军 | `Province.smali` | army lists / civID |
| 行军订单 | `Game_Action.smali` | `moveArmy` / `clickMoveTo` 链路 |

## 相关 UI

- `Menu_InGame_ProvinceAction.smali` — 点省份下达移动

## 补丁状态

| 项 | 状态 |
|---|---|
| 行军改道（途中重规划） | **reverted** — 勿用 `fix_army_reroute.py` |
| 骰子/交战核心 | 原版为主；AI 侧评分见 [war-ai.md](war-ai.md) |

## 禁止

不要重新打入 `clearOrdersFromProvinceForReroute` 一类改道逻辑，除非用户明确要求并更新 STATUS。
