# 控制台

## 玩家路径

局内旗标页 → 控制台面板（系统 IME，不显示内置键盘面板）。

## 源码（可编译注入）

| 路径 | 作用 |
|---|---|
| `tools/console/console_src/.../ConsoleEngine.java` | 解析与执行 |
| `tools/console/console_src/.../ConsoleCmds.java` | 命令实现（含 `exportscen`） |
| `tools/console/console_src/.../ConsoleFloat.java` | UI / `showSystemIme` |
| `tools/console/console_src/.../Calc*.java` | 表达式 |
| `tools/console/build_console_engine.ps1` | javac→d8→baksmali→拷入 smali |

注入后的 smali 与游戏同目录：`Console*.smali`、`Calc*.smali`、`BudgetCore.smali`。

## 旧命令契约

完整 ledger（冻结对照）：[../reports/CONSOLE_API_LEDGER.md](../reports/CONSOLE_API_LEDGER.md)

要点：

- `p/e/w/m/j/k/t/f/port/tower/x/h` 数值常量见 ledger
- peace / ally 有 **安全配方**；禁止裸 whitePeace

## 相关原版

- `Commands.smali` — 旧控制台入口（仍可能被桥接）
- `CFG.showKeyboard_Commands` — 开控制台时隐藏内置 Keyboard
