# tools/

| 目录 | 用途 |
|---|---|
| [console/](console/) | 可编译注入的 Java（控制台、CivSelect、ScenarioExport） |
| [patches/live/](patches/live/) | 已应用且可理解的补丁脚本 |
| [patches/do-not-rerun/](patches/do-not-rerun/) | **禁止重跑** |
| [utils/](utils/) | dump/find/verify 与 `_` 前缀一次性脚本 |
| [lib/](lib/) | baksmali / dexlib jars |

## 旧路径 → 新路径

| 旧 | 新 |
|---|---|
| `tools/console_src` | `tools/console/console_src` |
| `tools/console_stubs` | `tools/console/console_stubs` |
| `tools/console_build` | `tools/console/console_build` |
| `tools/build_console_engine.ps1` | `tools/console/build_console_engine.ps1` |
| `tools/fix_*.py` 等 | `tools/patches/live/` |
| `tools/rewrite_money_display.py` | `tools/patches/do-not-rerun/` |
| `tools/fix_army_reroute.py` | `tools/patches/do-not-rerun/` |
| `tools/_*.py` | `tools/utils/` |

## 构建注入类

```powershell
powershell -ExecutionPolicy Bypass -File tools\console\build_console_engine.ps1
```
