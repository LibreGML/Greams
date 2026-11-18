# 类族：回合

顶层 **3**，含内部类合计 **3**。

| 类 | 内部? | KB | 方法 | 说明 | 关键方法 |
|---|---|---:|---:|---|---|
| `Turn_Actions` |  | 54.7 | 2 | 回合内 AI/动作批处理 | `runRevolts`, `run` |
| `Turn_CivsInRange` |  | 3.5 | 1 | 回合相关 | `run` |
| `Turn_NewTurn` |  | 425.3 | 6 | 「新的回合」按钮动作入口 | `checkOccupiedProvincesIfAreAtWar`, `doAction`, `updateGameData`, `updateGameData_TurnChanges`, `clearNuclearExplosions`, `run` |
