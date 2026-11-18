# AI / 机制智能化路线图

总目标见 [AGENTS.md](../AGENTS.md)。现网状态以 [progress/STATUS.md](progress/STATUS.md) 为准。

## Phase 0 — 基线

- [x] 解包 smali / 资产
- [x] 定位回合管线、战斗、经济、外交、AI_Style
- [x] 文档化打包与真机流程
- [x] 可重复「改一处 → 安装 → 真机」闭环（`tz.yx.gemorin` @ `192.168.0.178:5555`）
- [x] 工作区规范化（AGENTS / mechanisms / file-map / tools 分类）

## Phase 1 — 可观测 + 明显逻辑错误

- AI / 回合关键路径加少量可开关日志
- 修复真机已复现的空指针、错误 ID、移动/补给不同步等

## Phase 2 — 战术 AI

- `AI_Frontline*` / `AI_WarPreparations` / 战时 `moveAtWar*`
- 已做：`moveAtWar_AttackTo_Score` 强化（见 STATUS）
- 继续：避免无意义散兵、改善集结

## Phase 3 — 经营 AI

- 支出结构与国库、通胀联动
- `AI_Build_Option_*` 优先级与时代/政体匹配

## Phase 4 — 外交 AI

- 开战/求和/结盟评估
- 减少自杀宣战（宣战评分兵力惩罚已部分落地）

## Phase 5 — 高级机制

- 瘟疫、革命、核、HRE 等与 AI 协同
- 数值 JSON 微调与 smali 决策分开评估

## 明确不要做（除非用户要求）

- 重新引入已 **reverted** 的行军改道、小国和平 AI 错峰
- 重跑 `tools/patches/do-not-rerun/*`
