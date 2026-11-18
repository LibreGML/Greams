# AOE / Gemorin — AoC2 Smali 逆向魔改

基于 **Age of Civilizations 2** 的 apktool 解包工程。品牌：**葛墨林 / Gemorin / TZGML**。

## 给 Agent

请先读根目录 **[AGENTS.md](AGENTS.md)**。

## 给人类

| 路径 | 用途 |
|---|---|
| `AOE_unpacked/` | apktool 工作区（唯一真相源） |
| `docs/` | 机制索引、文件地图、构建与进度 |
| `tools/` | 补丁脚本、控制台 Java、工具库 |
| `build/` | 签名 APK / keystore |
| `archive/` | 抓取日志、一次性 scratch |
| `AOE.APK` | 原始对照包 |

## 快速构建

见 [docs/BUILD.md](docs/BUILD.md)。产物：`build/AOE-signed.apk`，安装包名 `tz.yx.gemorin`。
