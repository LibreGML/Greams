# 文档格式约定（AI 必须遵守的读法）

本仓库文档为 **机器优先** 结构。读取时按字段消费，不要把散文当唯一来源。

## 1. 真相优先级

```
1. AOE_unpacked/smali/.../lukasz/*.smali   （代码真相）
2. AOE_unpacked/assets/**                 （数据真相）
3. docs/progress/STATUS.md                （补丁是否 live）
4. docs/catalog/** + mechanisms/**        （导航与解释；可能滞后于代码）
5. archive/**                             （仅历史，勿当现网）
```

## 2. 类解释记录的标准字段

每条类记录（见 `CLASS_COMPLETE.md` / `files/*.md` / `ALL_CLASSES.jsonl`）语义：

| 字段 | 含义 |
|---|---|
| `class` | Java 简单类名 = smali 文件名去 `.smali` |
| `file` | 磁盘文件名 |
| `bytes` / KB | 体积；>200KB 视为神类，**禁止全文盲读** |
| `inner` | 是否 `$` 内部类 |
| `parent` | 内部类外层名 |
| `group` | 职责分组（中文标签） |
| `desc` | 一句话说明；`｜含:` 后为从类名抽出的主题词 |
| `method_count` / `methods` | 业务方法（已去掉 `<init>`/`<clinit>`） |
| `field_count` / `fields` | 字段名 |

JSONL 一行一类，便于脚本/Agent 过滤。

## 3. 机制页标准小节（短页与百科）

每个机制必须能回答这 5 问（百科附录 C）：

1. 玩家从哪个 UI 触发？ → `Menu_*` / `Button_*`
2. 哪个类的哪个方法改状态？ → 优先 `god-methods/*.md` 选型再 Grep
3. 数据存在哪？ → Province / Civilization / Manager / JSON / Save_*
4. 有无 Message / Event / HistoryLog？
5. STATUS：`live` / `reverted` / `unsafe` / 未碰

## 4. 定位路径（强制）

```
关键词 → AI_NAV.md
     → mechanisms 短页或 ENCYCLOPEDIA 锚点
     → catalog 类表确认文件
     → god-methods 选方法名（若是神类）
     → Grep ^\.method 或 invoke-
     → 小范围 Read
```

详见 [HOW_TO_LOCATE.md](HOW_TO_LOCATE.md)。

## 5. 重新生成目录

类/方法/字母表由脚本从 smali **扫描生成**，改了大量类后应重跑：

```powershell
python tools/utils/gen_ai_docs_catalog.py
python tools/utils/gen_assets_catalog.py
```

手写内容（ENCYCLOPEDIA、短机制页、STATUS）**不会**被脚本覆盖。

## 6. 命名拼写陷阱（原版）

文档与 Grep 需保留原拼写：

| 常见误写 | 代码真实拼写 |
|---|---|
| Built | `Message_Bulit_*` |
| Colonize | `canColonizie*` |
| Request | `Message_TradeReuest*` |
| Regroup | 亦见 `AI_RegoupArmyData` |
| abandon | `abadonProvince` |
| Military | `HaveMilitartyAccess` |

## 7. 禁止

- 为「好找」移动 `lukasz/` 文件
- 把内部类 `$1` 当独立功能入口（先读外层）
- 对 `MenuManager`/`Game`/`AI_Style`/`Game_Action`/`CFG` 做无目标全文读取
