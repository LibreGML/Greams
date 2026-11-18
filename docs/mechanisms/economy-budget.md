# 经济与财政显示

## 玩家路径

局内预算/国库/收支 UI；解散军队悬停等显示余额。

## 主类 / 方法

| 职责 | 文件 | 符号 |
|---|---|---|
| long 账本核心 | `BudgetCore.smali`（生成） | 收入/支出/余额计算 |
| 文明字段 | `Civilization.smali` | `lIncome*` / `lBudget` 等 long；旧 int 镜像 |
| 回合更新 | `Game_NextTurnUpdate.smali` | 税收、生产、行政、军费 |
| Toast/文本显示 | 多处 `Text_*` / hover | 经 budget repair 补丁改为正确格式 |

## 补丁状态

| 脚本 | 状态 |
|---|---|
| `tools/patches/live/rewrite_budget_field_reads.py` 等 repair 系列 | live（历史已应用） |
| `tools/patches/live/fix_ctor_format_setmax*.py` | live 修复 |
| `tools/patches/do-not-rerun/rewrite_money_display.py` | **unsafe-to-rerun**（VerifyError） |

## Assets

无单独 JSON；数值受 `Governments.json`、时代等影响。

## 禁止

不要重跑 `rewrite_money_display.py`。详见 [../bugs/BUGS.md](../bugs/BUGS.md) BUG-004。
