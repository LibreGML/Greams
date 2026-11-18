# do-not-rerun — 禁止重跑

| 脚本 | 原因 |
|---|---|
| `rewrite_money_display.py` | 导致 VerifyError / String-vs-int（BUG-004） |
| `fix_army_reroute.py` | 功能已从 smali **完整回退**；重跑会再次改坏移动逻辑 |

需要相关能力时：手改 smali 并更新 `docs/progress/STATUS.md`，不要盲目执行本目录脚本。
