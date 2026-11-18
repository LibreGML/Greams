# AGENTS.md — Codex / Claude Code 强制入口

> **先读本文，再改任何文件。** 本仓库是 Age of Civilizations 2（apktool smali）魔改工程。

## 一句话

真相源是 `AOE_unpacked/`。安装包名 **`tz.yx.gemorin`**。不要拆散 smali 包路径。

## 必读顺序

1. [docs/00-START-HERE.md](docs/00-START-HERE.md)
2. [docs/AI_NAV.md](docs/AI_NAV.md) ← **关键词 → 类 最快路由**
3. [docs/mechanisms/ENCYCLOPEDIA.md](docs/mechanisms/ENCYCLOPEDIA.md) ← **全机制 + 实现类**
4. [docs/IDENTITY.md](docs/IDENTITY.md)
5. [docs/progress/STATUS.md](docs/progress/STATUS.md)
6. [docs/BUILD.md](docs/BUILD.md)

按机制短页 → [docs/mechanisms/INDEX.md](docs/mechanisms/INDEX.md)  
按类/文件/资产目录 → [docs/catalog/INDEX.md](docs/catalog/INDEX.md)（含 **4599** smali 分字母表、神类方法索引、JSONL）  
按文件地图（神类/菜单族） → [docs/file-map/INDEX.md](docs/file-map/INDEX.md)  
定位流程 → [docs/catalog/HOW_TO_LOCATE.md](docs/catalog/HOW_TO_LOCATE.md)  
文档字段约定 → [docs/catalog/DOC_FORMAT.md](docs/catalog/DOC_FORMAT.md)

## 改代码规则

| 可以 | 禁止 |
|---|---|
| 改 `AOE_unpacked/smali/.../lukasz/*.smali` | 移动/拆散该目录（会破坏 Java 包名） |
| 改 `AOE_unpacked/assets/**` | 把 `AOE.APK` 当唯一真相 |
| 在 `tools/console/console_src/` 写 Java，经 `build_console_engine.ps1` 注入 | 重跑 `tools/patches/do-not-rerun/` |
| 参考 `docs/progress/STATUS.md` 的 live 项 | 把已 **reverted** 功能当现网（行军改道、小国和平错峰） |

## 收尾（每轮必做）

1. 若改了 `tools/console/console_src`：先跑 `tools/console/build_console_engine.ps1`
2. 按 [docs/BUILD.md](docs/BUILD.md) 打包签名安装到 `192.168.0.178:5555`
3. 更新 `docs/progress/STATUS.md` 与 `docs/progress/CHANGELOG.md`

## 身份速查

| 项 | 值 |
|---|---|
| 安装 id | `tz.yx.gemorin` |
| Launcher | `age.of.civilizations2.jakowski.lukasz.AndroidLauncher` |
| smali 包目录 | `AOE_unpacked/smali/age/of/civilizations2/jakowski/lukasz/` |
| 展示名 | 葛墨林 / Gemorin / TZGML |
