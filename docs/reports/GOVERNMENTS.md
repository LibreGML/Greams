# 政体系统重设计说明（2026-11-17）

## 目标
- 使用政治学教科书中的正统术语；删除理论口号、非政体词与重复项
- 数值贴合现实倾向，且长期不因通胀/支出螺旋导致「无收入、无法征兵」
- 保留全部 `Extra_Tag` / `Image` / 槽位顺序，兼容文明后缀旗与 `crown_*.png`

## 本轮删改原则
| 原名 | 处理 | 理由 |
|---|---|---|
| 无产阶级专政 | 删除 | 马克思主义理论范畴，不是国家政体类型 |
| 苏维埃政权 / 各类苏维埃重复 | 删除 | 实质即布尔什维克/马列一党制国家形态 |
| 人民阵线政府 | 删除 | 选举联盟/战时联合，非正式政体分类 |
| 南斯拉夫社会主义自治制 | → 工人自治制 | 制度通称 workers' self-management |
| 二元制君主国 | → 二元君主立宪制 | dualist constitutional monarchy |
| 复兴党一党制 | → 一党霸权制 | Ba'ath 属党派；Sartori 霸权党制才是政体类型 |

## 现行 46 政体（生成自 `tools/rebuild_governments.py`）
| # | 名称 | Extra_Tag |
|---|---|---|
| 0 | 议会制民主政体 | （空） |
| 1 | 总统制共和政体 | 稻 |
| 2 | 半总统制 | 进 |
| 3 | 联邦共和制 | r |
| 4 | 共识民主制 | 盖 |
| 5 | 议会君主立宪制 | 1 |
| 6 | 二元君主立宪制 | ys |
| 7 | 绝对君主制 | bgd |
| 8 | 封建君主制 | m |
| 9 | 开明专制 | 三 |
| 10 | 官僚帝国制 | 秦 |
| 11 | 神权政治 | 神 |
| 12 | 哈里发国 | 专 |
| 13 | 贵族共和制 | 保 |
| 14 | 寡头共和制 | cc |
| 15 | 商人共和制 | ( |
| 16 | 城邦 | s |
| 17 | 酋邦 | t |
| 18 | 游牧汗国 | h |
| 19 | 分封领主制 | zh |
| 20 | 马克思列宁主义一党制 | c |
| 21 | 人民民主国家 | 马 |
| 22 | 工人自治制 | 工 |
| 23 | 法西斯独裁政体 | f |
| 24 | 极权主义政体 | 长 |
| 25 | 威权主义政体 | dc |
| 26 | 苏丹制 | 家 |
| 27 | 一党霸权制 | fu |
| 28 | 法团主义国家 | gt |
| 29 | 军政府 | 军 |
| 30 | 军部支配体制 | J |
| 31 | 个人独裁制 | 毛 |
| 32 | 发展型国家 | 企 |
| 33 | 训政 | 训 |
| 34 | 凯末尔主义共和制 | 凯 |
| 35 | 国民公会制 | G |
| 36 | 殖民政府 | 殖 |
| 37 | 自治领 | 自 |
| 38 | 临时政府 | 临 |
| 39 | 军阀政治 | jf |
| 40 | 叛乱政权 | u |
| 41 | 委员会制 | C |
| 42 | 阿拉伯社会主义共和制 | na |
| 43 | 过渡政权 | 人 |
| 44 | 责任内阁制 | 社 |
| 45 | 政教君主制 | ac |

## 安全数值包络（全政体遵守）
| 字段 | 范围 |
|---|---|
| RESEARCH_COST | 0.95–1.35 |
| INCOME_TAXATION / INCOME_PRODUCTION | 0.85–1.18 |
| MILITARY_UPKEEP | 0.90–1.35 |
| ADMINISTRATION_COST | 0.70–1.40 |
| CONTROL / DIPLO / COMMERCE_RANGE | 约 0.55–1.25 |
| MOVEMENT_MODIFIER | 0.90–1.15 |
| RECRUITABILITY | 0.95–1.30 |
| ATTACK/DEFENSE_BONUS | ≤ 6/8 |
| ASSIMILATE_RATE | ≤ 1.5 |
| COST_OF_RECRUIT | ≥ 14 |

## 生成脚本
`tools/rebuild_governments.py`（字段名必须用 `REPLACE_PERIOD`，不是 REFORM/REFORMAT/REPLACE）

## 备份
`AOE_unpacked/assets/game/Governments.json.bak_before_gov_redesign`

## 真机
- 包：`build/AOE-signed.apk`（debug keystore）
- 设备：`192.168.0.178:5555`
- 本轮已安装；启动无 SerializationException / FATAL
