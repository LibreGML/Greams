# 文件地图（扁平 smali 导航）

全部游戏逻辑 smali 在同一目录：

`AOE_unpacked/smali/age/of/civilizations2/jakowski/lukasz/`（约 4600 个文件，含大量 `$` 内部类；**顶层类约 1622**）

LibGDX：`AOE_unpacked/smali/com/badlogic/`

## 优先用 catalog（更全）

→ **[../catalog/INDEX.md](../catalog/INDEX.md)**（4599 文件分字母 + 神类方法 + JSONL）  
→ **[../catalog/god-methods/INDEX.md](../catalog/god-methods/INDEX.md)**  
→ **[../AI_NAV.md](../AI_NAV.md)**

## 本目录子索引（摘要）

| 文档 | 内容 |
|---|---|
| [god-classes.md](god-classes.md) | 体积最大的「神类」职责 |
| [menus.md](menus.md) | `Menu_*` 前缀对照（摘要；全表见 catalog/MENU_FAMILIES） |
| [ai-family.md](ai-family.md) | `AI_*` 家族 |
| [generated-classes.md](generated-classes.md) | 本仓库注入的新类 |
| [assets.md](assets.md) | assets 摘要（全表见 catalog/ASSETS） |

## 检索技巧

1. 先查 [../AI_NAV.md](../AI_NAV.md) 或 [../mechanisms/INDEX.md](../mechanisms/INDEX.md)。
2. 再用 Grep：`path = .../lukasz`，`pattern = methodName`（见 [../catalog/HOW_TO_LOCATE.md](../catalog/HOW_TO_LOCATE.md)）。
3. 类字母表：[../catalog/CLASS_ALPHA.md](../catalog/CLASS_ALPHA.md)。
