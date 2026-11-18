# 从这里开始

本仓库 = **apktool 解包的 AoC2** + 魔改补丁 + **AI 友好文档索引**。

## 不要做的事

1. **不要**移动 `AOE_unpacked/smali/age/of/civilizations2/jakowski/lukasz/` 里的文件到别的包路径。
2. **不要**重跑 `tools/patches/do-not-rerun/` 里的脚本。
3. **不要**使用旧包名 `lukasanchao` 去 adb 安装（现网是 `tz.yx.gemorin`）。

## 推荐阅读路径

| 你想… | 打开 |
|---|---|
| **最快按关键词找到类** | [AI_NAV.md](AI_NAV.md) |
| **搞懂全部游戏机制与实现** | [mechanisms/ENCYCLOPEDIA.md](mechanisms/ENCYCLOPEDIA.md) |
| **任意 smali 文件解释** | [catalog/FILES_INDEX.md](catalog/FILES_INDEX.md) |
| **神类全部方法** | [catalog/god-methods/INDEX.md](catalog/god-methods/INDEX.md) |
| 定位任意文件的标准流程 | [catalog/HOW_TO_LOCATE.md](catalog/HOW_TO_LOCATE.md) |
| 类/菜单/消息/事件/资产目录 | [catalog/INDEX.md](catalog/INDEX.md) |
| AI 读文档字段约定 | [catalog/DOC_FORMAT.md](catalog/DOC_FORMAT.md) |
| 搞清包名/启动 Activity | [IDENTITY.md](IDENTITY.md) |
| 看哪些系统是 live / 已回退 | [progress/STATUS.md](progress/STATUS.md) |
| 按机制短页找 smali 方法 | [mechanisms/INDEX.md](mechanisms/INDEX.md) |
| 神类/菜单族文件地图 | [file-map/INDEX.md](file-map/INDEX.md) |
| 打包签名装真机 | [BUILD.md](BUILD.md) |
| 查历史变更 | [progress/CHANGELOG.md](progress/CHANGELOG.md) |
| 查 Bug | [bugs/BUGS.md](bugs/BUGS.md) |
| 大报告（政体名表等） | [reports/](reports/) |

## 目录速览

```
AOE_unpacked/     真相源（smali + assets）
tools/            补丁与控制台源码
docs/             本索引树（AI_NAV + 百科 + catalog）
build/            AOE-signed.apk
archive/          scratch 与巨型日志
```
