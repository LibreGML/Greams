# 占领区收益 A3

## 玩家路径

占领敌省后：税收/生产/征兵上限按「未完全同化」规则打折。

## 目标数值（现网）

- 占领税约 **10%**（不再用行政假税抵消）
- 生产保持约 **10%**
- 征兵上限 / 人力计入约 **15%**

## 主类 / 方法

| 职责 | 文件 | 切入 |
|---|---|---|
| 税收结算 | `Game_NextTurnUpdate.smali` | taxation 相关 |
| 可征兵数 | `Game_Action.smali` | `getRecruitableArmy` |
| 省份征兵点 | `Province.smali` | `buildRecruitableArmyPoints` |
| 人口（不含占领） | `Civilization.smali` | `countPopulation_WithoutOccupied` |

## 补丁

- 脚本：`tools/patches/live/fix_occupy_economy_a3.py`
- 状态：**live**

## 禁止

改占领收益时不要顺带改 AI 回合调度频率。
