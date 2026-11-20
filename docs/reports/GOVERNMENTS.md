# 政体系统重设计说明（2026-11-19 PE/史实再平衡）

## 目标
- 使用政治学教科书中的正统术语；删除理论口号、非政体词与重复项
- 数值贴合**政治经济学**与**世界史事实**（财政合法性、提取能力、知识体制、韦伯式行政跨度、林兹/亨廷顿不稳定类型、攻防姿态）
- 长期不因通胀/支出螺旋导致「无收入、无法征兵」（BUG-002 防护）
- 保留全部 `Extra_Tag` / `Image` / 槽位顺序，兼容文明后缀旗与 `crown_*.png`

## 本轮删改原则（名称层，自 2026-11-17）
| 原名 | 处理 | 理由 |
|---|---|---|
| 无产阶级专政 | 删除 | 马克思主义理论范畴，不是国家政体类型 |
| 苏维埃政权 / 各类苏维埃重复 | 删除 | 实质即布尔什维克/马列一党制国家形态 |
| 人民阵线政府 | 删除 | 选举联盟/战时联合，非正式政体分类 |
| 南斯拉夫社会主义自治制 | → 工人自治制 | 制度通称 workers' self-management |
| 二元制君主国 | → 二元君主立宪制 | dualist constitutional monarchy |
| 复兴党一党制 | → 一党霸权制 | Ba'ath 属党派；Sartori 霸权党制才是政体类型 |

## 2026-11-19 数值再平衡要点
| 族 | 史实/PE 先验 | 数值倾向 |
|---|---|---|
| 自由民主（议会/总统/半总统/共识/联邦） | 同意纳税、市场生产、软权力、职业军成本；民主防御偏向 | 高 COMMERCE/DIPLO、高 MILITARY_UPKEEP、低 INSTABILITY、ATK≤DFN |
| 议会君主立宪 | 象征连续性降低精英危机 | 最低档 INSTABILITY + 最高档 DIPLO |
| 绝对/开明专制 | 提取税强、宫廷行政；开明专制科研/官僚优于绝对 | 绝对 RESEARCH↑ 生产↓；开明 RESEARCH=0.95 |
| 官僚帝国 | 科层/编户齐民、徭役人力、抑商 | 高 CONTROL/ASSIMILATE/MANPOWER，COMMERCE 偏低 |
| 神权/哈里发/政教君主 | 教派凝聚 vs 教条抑研；哈里发早期商路+征伐 | 高 ASSIMILATE；神权 RESEARCH 高；哈里发 ATK 高 |
| 商人共和/城邦 | 威尼斯式商贸外交；陆战雇庸、人力薄 | 顶 COMMERCE/PRODUCTION；低 MANPOWER；城邦墙防 DEF=8 |
| 封建/分封 | 城堡防御、财政碎片、距离行政崩溃 | 高 DISTANCE 成本、高 DEF、低 CONTROL |
| 酋邦/游牧 | 低剩余、游击/机动征服、继承危机 | 高 GURRILLA/MOVE；游牧 ATK=6；生产弱 |
| 马列一党/人民民主 | 强制工业化+征兵；**命令经济浪费**→仍付军费行政 | PRODUCTION 温和；MIL/ADMIN 偏高（防 BUG-002） |
| 工人自治 | 市场社会主义灵活 + 民族/企业离心 | 较好 COMMERCE；更高 INSTABILITY；HIGH_AUTONOMY |
| 法西斯/极权 | 短期军事化生产、进攻偏向；极权控场抑游击 | 高 ATK/UPKEEP/CONTROL；同化偏低（排斥） |
| 苏丹制/个人独裁 | 新patrimonial 掠夺：税高、制度弱、继承脆 | 最高档 INSTABILITY；ADMIN 差 |
| 军政府/军部 | 先军后政；昭和军部战术高 | 极高 UPKEEP；军部 TACTICS 顶 |
| 发展型国家 | Johnson：高投资出口纪律、技术追赶 | 顶 ECO_GROWTH + PRODUCTION；RESEARCH=0.95 |
| 殖民/自治领 | 殖民榨取；自治领近宗主民主 | 殖民 TAX↑ 生产↓ 动荡；自治领近议会民主 |
| 临时/军阀/叛乱 | 无公共品、高波动 | 最高 INSTABILITY；叛乱 GURRILLA=3 |

## 现行 46 政体（生成自 `tools/patches/live/rebuild_governments.py`）
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

## 安全数值包络（全政体遵守；`harden()` + `validate_envelope` 强制）
防万回合级财政/征兵塌缩（BUG-002 通胀螺旋、征兵系数过低）：

| 字段 | 范围 |
|---|---|
| RESEARCH_COST | 0.96–1.32 |
| INCOME_TAXATION / INCOME_PRODUCTION | **0.90–1.12** |
| ECO_GROWTH_BONUS | ≤ 0.040 |
| MILITARY_UPKEEP | 0.95–1.32 |
| ADMINISTRATION_COST | 0.80–1.32 |
| RECRUITABILITY | **≥ 1.00**（≤1.28） |
| MANPOWER_BONUS | 0.70–1.40 |
| COST_OF_RECRUIT | **16–24** |
| 若 INCOME_PRODUCTION≥1.08 | MILITARY_UPKEEP≥1.10 且 ADMIN≥0.92 |
| 若 PRODUCTION≥1.10 或 ECO≥0.035 | MILITARY_UPKEEP≥1.12 |

字段名必须是 **`REFORMAT_PERIOD`**（与 `Data_Ideologies` 一致）。误写 `REPLACE_PERIOD` 会触发 libGDX `SerializationException`，加载卡在「读取革命图形」。

## 旗帜字段（本轮按史实打开）
| 旗 | 典型政体 |
|---|---|
| `HIGH_AUTONOMY` | 联邦、封建/分封、城邦、工人自治、殖民、自治领、军阀、酋邦 |
| `DISTINCTIVE` | 商人共和、城邦、神权、发展型国家 |
| `PRINCE_WILL_BE_VASSALIZED` | 封建君主/分封 |
| `VASSAL_CAN_DECLARE_WAR` | 分封、军阀 |
| `CANT_CHANGE_GOV_OF_VASSAL` | 绝对君主、官僚帝国、马列一党、极权 |

## 生成脚本
`tools/patches/live/rebuild_governments.py`（字段名必须用 `REFORMAT_PERIOD`，与 `Data_Ideologies` 一致；误用 `REPLACE_PERIOD` 会 Json 反序列化失败并卡在加载）

## 备份
`AOE_unpacked/assets/game/Governments.json.bak_before_gov_redesign`

## 真机
- 包：`build/AOE-signed.apk`（debug keystore）
- 设备：`192.168.0.178:5555`
