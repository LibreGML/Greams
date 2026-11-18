# 类 / 资产目录索引

> 目标：**任意** `.smali` / 资产 / 前缀 → 1～2 跳得到正确说明与方法线索。  
> 读法约定：[DOC_FORMAT.md](DOC_FORMAT.md)

## 必读

| 文档 | 内容 |
|---|---|
| [HOW_TO_LOCATE.md](HOW_TO_LOCATE.md) | 五步定位流程 |
| [DOC_FORMAT.md](DOC_FORMAT.md) | AI 字段约定 / 真相优先级 |
| [PREFIX_GUIDE.md](PREFIX_GUIDE.md) | 类名前缀语法 |

## 全量类文件（4599）

| 文档 | 内容 |
|---|---|
| [FILES_INDEX.md](FILES_INDEX.md) | **分字母 A–Z 全量 smali**（含内部类；每条有说明+方法摘录） |
| [CLASS_COMPLETE.md](CLASS_COMPLETE.md) | **1622 顶层类**完整解释表 |
| [ALL_CLASSES.jsonl](ALL_CLASSES.jsonl) | 机器可读全量（一行一类） |
| [CLASS_ALPHA.md](CLASS_ALPHA.md) | 顶层字母表（简表） |
| [CLASS_BY_ROLE.md](CLASS_BY_ROLE.md) | 按职责分组简表 |
| [families/INDEX.md](families/INDEX.md) | **65 个职责族**详解页 |
| [CATALOG_STATS.json](CATALOG_STATS.json) | 统计 |

## 神类方法索引

| 文档 | 内容 |
|---|---|
| [god-methods/INDEX.md](god-methods/INDEX.md) | `Game`/`Game_Action`/`AI_Style`/`MenuManager`/… **全部业务方法+字段** |

## 专题全表

| 文档 | 内容 |
|---|---|
| [MENU_FAMILIES.md](MENU_FAMILIES.md) | 592 `Menu_*` 分族 |
| [MESSAGE_TYPES.md](MESSAGE_TYPES.md) | 113 `Message_*` + 方法摘录 |
| [EVENT_CONDITIONS.md](EVENT_CONDITIONS.md) | 53 事件条件 + 方法 |
| [EVENT_OUTCOMES.md](EVENT_OUTCOMES.md) | 41 事件结果 + 方法 |

## 资产

| 文档 | 内容 |
|---|---|
| [ASSETS.md](ASSETS.md) | assets / game / map/TZ 深度目录 |
| [ASSETS_STATS.json](ASSETS_STATS.json) | 体量统计 |

## 重新生成

```powershell
python tools/utils/gen_ai_docs_catalog.py
python tools/utils/gen_assets_catalog.py
```

总导航：[../AI_NAV.md](../AI_NAV.md)  
机制百科：[../mechanisms/ENCYCLOPEDIA.md](../mechanisms/ENCYCLOPEDIA.md)
