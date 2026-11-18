# 剧本创建 / 保存 / 导出

## 玩家路径

编辑器 → 剧本 → 创建/编辑 → 设置里保存 → 生成预览。  
创建的剧本默认在 **app 私有目录**（无 root 读不到）。

## 运行时路径（Android local）

```
/data/user/0/tz.yx.gemorin/files/map/TZ/scenarios/<tag>/
```

索引：`.../scenarios/Age_of_Civilizations`（分号分隔 tag）。

## 主类 / 方法

| 职责 | 文件 | 符号 |
|---|---|---|
| 保存 | `Game.smali` | `saveScenario()`、`saveScenario_Info()` |
| 列表加载 | `Game_Scenarios.smali` | `loadGame_Scenarios`（internal + local） |
| 编辑器列表 | `Menu_Editor_Scenarios.smali` | 新建 tag = 时间戳+随机 |
| 保存确认 | `Menu_CreateScenario_Settings_Top` + `Dialog.SAVE_SCENARIO` | → `Game.saveScenario` |
| 预览 PNG | `Map_BG.smali` | `preview.png` writePNG |
| 选择剧本开局 | `Menu_ChooseScenario*.smali` / `Menu_Games` | internal vs local |

## APK 内置剧本

`AOE_unpacked/assets/map/TZ/scenarios/<tag>/`  
必须在同级 `Age_of_Civilizations` 索引中登记，否则 Android 不会扫描目录。

## 导出（解决无 root 拷贝）— live

| 组件 | 位置 |
|---|---|
| 导出实现 | `ScenarioExport.smali`（源：`tools/console/console_src/.../ScenarioExport.java`） |
| 保存后自动导出 | `Game.saveScenario` 末尾 → `ScenarioExport.exportCurrent` |
| 预览后再导出 | `Map_BG` writePNG 后 → `exportCurrent` |
| 导出目录 | `/sdcard/Download/GemorinScenarios/<tag>/` |
| 控制台 | 命令 `exportscen`（全部或指定 tag） |
| PC 导入 | `tools/patches/live/import_exported_scenarios.py` |

## 权限

`AndroidManifest.xml`：`WRITE/READ_EXTERNAL_STORAGE` + `requestLegacyExternalStorage`。
