# 战争 / 托管 AI

## 玩家路径

电脑文明或托管（player AI）在战争中移动/进攻；宣战评估。

## 主类 / 方法

| 职责 | 文件 | 符号 |
|---|---|---|
| 战时进攻目标分 | `AI_Style.smali` | `moveAtWar_AttackTo_Score` |
| 战时移动 | `AI_Style.smali` / 子类 | `moveAtWar`、`moveAtWarPlayer`（共用评分） |
| 前线 | `AI_Frontline*.smali` | 前线维护 |
| 备战 | `AI_WarPreparations.smali` | 战前准备 |
| 宣战评分 | `AI_Style.smali` / 相关 | 含兵力劣势惩罚（补丁） |
| AI 总调度 | `AI.smali` | `turnOrders` / `turnOrdersEssential` |

政体风格子类：`AI_Style_Democracy` / `Communism` / `Fascism` / `Horde` / `Tribal` / `CityState` / `Rebels` 等。

## 补丁

- `tools/patches/live/fix_ai_war_smart.py` — **live**
  - 强化 `moveAtWar_AttackTo_Score`（胜负预估、兵力比、弱守军、在途稀释）
  - 宣战评分加入兵力劣势惩罚

## 禁止

- 小国和平错峰：**reverted**
- 不要在「只优化速度」时削弱 `turnOrders` 调用完整性
