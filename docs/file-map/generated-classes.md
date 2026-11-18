# 生成 / 注入类（非原版 AoC）

这些类由 `tools/console/` 编译注入到 lukasz smali 目录，与原版并存。

| 类 | 源码 | 用途 |
|---|---|---|
| `BudgetCore` | `tools/console/console_src/.../BudgetCore.java` | long 财政 |
| `ConsoleEngine` / `ConsoleCmds` / `ConsoleFloat` / `Console*` | 同目录 | 控制台 |
| `CalcFns` / `CalcParser` / `CalcValue` | 同目录 | 控制台计算 |
| `CivSelectCache` (+ `$Hit`/`$1`/`$2`) | `CivSelectCache.java` | 创建国家缓存与模糊搜 |
| `CivSearchIme` | `CivSearchIme.java` | 系统 IME 搜索模式 |
| `ScenarioExport` | `ScenarioExport.java` | 剧本导出到 Download |

## 构建

```powershell
powershell -ExecutionPolicy Bypass -File tools\console\build_console_engine.ps1
```

三份拷贝关系：

1. `tools/console/console_src` — 可编辑源
2. `tools/console/console_build/smali` — 中间产物
3. `AOE_unpacked/smali/.../lukasz` — **运行真相**

改 Java 后必须跑构建脚本，再 apktool 打包。
