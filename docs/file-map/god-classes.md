# 神类（优先记住）

体积约为量级参考；职责比行数更重要。

| 类 | 约大小 | 职责 |
|---|---|---|
| `MenuManager.smali` | ~4.5 MB | 所有菜单 view 切换、`setViewID`、重建子菜单 |
| `Game.smali` | ~4.4 MB | 剧本存读、文明/省份容器、大量全局游戏 API |
| `AI_Style.smali` | ~3.2 MB | AI 风格基类：移动、战争评分、宣战等 |
| `Game_Action.smali` | ~2.1 MB | 玩家/回合动作：移动、战斗、征兵、回合状态 |
| `CFG.smali` | ~1.4 MB | 全局常量、设置、对话框、键盘 handler、工具方法 |
| `DiplomacyManager.smali` | ~1.2 MB | 外交与战争关系 |
| `Province.smali` | ~840 KB | 单省数据与军队 |
| `Civilization.smali` | ~734 KB | 单文明数据（含 long 财政字段） |
| `Turn_NewTurn.smali` | ~436 KB | 「新的回合」动作 |
| `AI.smali` | ~489 KB | AI 调度入口 |

改这些文件时：**先定位方法名**，避免全文替换。
