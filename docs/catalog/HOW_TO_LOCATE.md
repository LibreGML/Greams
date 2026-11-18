# 如何定位任意代码 / 任意文件

面向 AI：固定流程，禁止漫无全文阅读神类。  
格式约定：[DOC_FORMAT.md](DOC_FORMAT.md)

## 约定

- **包根**：`AOE_unpacked/smali/age/of/civilizations2/jakowski/lukasz/`
- **一个类 = 一个 `ClassName.smali`**；`ClassName$N.smali` = 内部类/匿名回调。
- smali **全扁平**：不能靠子目录判断职责。
- **全量已编目**：4599 文件 → [FILES_INDEX.md](FILES_INDEX.md)；1622 顶层 → [CLASS_COMPLETE.md](CLASS_COMPLETE.md)。

## 五步定位法

### 1. 关键词路由

打开 [../AI_NAV.md](../AI_NAV.md) §1 → 机制页 + 主类名。

### 2. 打开类解释（不要猜）

| 情况 | 文档 |
|---|---|
| 知道类名 | `files/<首字母>.md` 或 Grep `CLASS_COMPLETE` |
| 知道职责（AI/存档/UI…） | [families/INDEX.md](families/INDEX.md) |
| 机器过滤 | [ALL_CLASSES.jsonl](ALL_CLASSES.jsonl) |
| Menu / Message / Event | [MENU_FAMILIES.md](MENU_FAMILIES.md) / [MESSAGE_TYPES.md](MESSAGE_TYPES.md) / EVENT_* |

每条记录已含：**分组、说明、方法数、关键方法名摘录**。

### 3. 神类：先读方法索引，再 Grep

若类在 [god-methods/INDEX.md](god-methods/INDEX.md)（`Game`/`Game_Action`/`MenuManager`/…）：

1. 打开对应 `god-methods/<Class>.md`
2. 在「方法按簇」里选定方法名
3. 再：

```text
Grep path = .../ClassName.smali
     pattern = ^\.method .* methodName
```

用 Read 的 offset/limit 只读该方法体。

### 4. 追调用链

```text
Grep path = .../lukasz
     pattern = invoke-.*目标方法名
     glob = *.smali
```

典型链：`Menu_*` / `Button_*` → `Game_Action` / `DiplomacyManager` / `AI`。

### 5. 数据落点

| 问 | 查 |
|---|---|
| 运行时字段？ | 类 `.field` 或 god-methods 字段表 |
| 持久化？ | `Save_GameData*` / `Scenario_GameData*` |
| 静态配置？ | [ASSETS.md](ASSETS.md) |
| 文案？ | `assets/game/languages/**` |
| 注入类？ | [../file-map/generated-classes.md](../file-map/generated-classes.md) |
| 是否现网？ | [../progress/STATUS.md](../progress/STATUS.md) |

## 按「玩家操作」定位

1. 可见文字 → Grep `languages` 得 key  
2. Grep key / 英文词根于 lukasz  
3. 落到 `Button_*` / `Menu_*`（看 `files/` 或 MENU_FAMILIES）  
4. 匿名 `$1` 回调 → 回外层类  
5. 追到 `Game_Action` / Manager

## 按「文件名」定位

直接打开 [FILES_INDEX.md](FILES_INDEX.md) 对应字母页；或：

| 模式 | 含义 |
|---|---|
| `Menu_InGame_X` | 局内功能 X |
| `Menu_CreateScenario_X` | 剧本编辑 X |
| `Message_X` | 消息逻辑 X |
| `Event_Conditions_X` / `Event_Outcome_X` | 事件条件/结果 |
| `AI_Build_X` | AI 建造 X |
| `Construction_GameData_X` | 建筑 X 在建数据 |
| `Save_GameData_N` | 存档分片 N |
| `Foo$1` | 外层 `Foo` 的匿名回调 |

## 按「资产文件」定位加载代码

1. 路径见 [ASSETS.md](ASSETS.md)  
2. Grep 文件名片段（如 `Diseases`）  
3. 常见加载方：`*Manager`、`CFG`、`Game` 初始化

## 禁止

- 无目标全文读 `Game` / `MenuManager` / `AI_Style` / `Game_Action` / `CFG`
- 移动 lukasz 文件「为了好找」
- 把 `archive/scratch` 当现网真相
- 忽略原版拼写陷阱（见 DOC_FORMAT §6）

## 产出检查清单

- [ ] 主类.方法已写入机制短页或 ENCYCLOPEDIA  
- [ ] STATUS 已标 live/reverted/unsafe  
- [ ] 若动 console_src：已跑 build_console_engine  
- [ ] CHANGELOG 一行说明  
- [ ] 若新增大量类：重跑 `gen_ai_docs_catalog.py`
