# AI_* 家族

| 模式 | 类 | 说明 |
|---|---|---|
| 调度 | `AI.smali` | 每回合调用风格对象 |
| 基类 | `AI_Style.smali` | 共用战术/战略；**战争评分补丁在此** |
| 政体皮肤 | `AI_Style_Democracy` / `Communism` / `Fascism` / `Horde` / `Tribal` / `CityState` / `Rebels` … | 覆盖部分行为 |
| 前线 | `AI_Frontline*` | 战线 |
| 备战 | `AI_WarPreparations*` | 开战前 |
| 建造 | `AI_Build*` / `AI_Build_Option_*` | 建设优先级 |
| 技能 | `AI_Skills_*` | 能力修正 |
| 重整 | `AI_Regroup*` | 集结/调防 |

详见机制页：[../mechanisms/war-ai.md](../mechanisms/war-ai.md)。
