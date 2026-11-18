# 身份与包名（勿混淆）

本工程有**三套身份**，改 adb / 清单 / smali 时必须对号入座。

| 角色 | 值 | 出现位置 |
|---|---|---|
| **安装 id（Android package）** | `tz.yx.gemorin` | `AOE_unpacked/apktool.yml` → `renameManifestPackage`；`AndroidManifest.xml` `package=` |
| **smali / Java 包路径** | `age.of.civilizations2.jakowski.lukasz` | `AOE_unpacked/smali/age/of/civilizations2/jakowski/lukasz/` |
| **资源包名（apktool）** | `age.of.civilizations2.jakowski.Anchao` | `apktool.yml` resource package |
| **Launcher Activity** | `age.of.civilizations2.jakowski.lukasz.AndroidLauncher` | Manifest activity |
| **versionName** | `1.0 TZGML` | apktool.yml / Manifest |
| **展示名** | 葛墨林 / Gemorin / TZGML | 语言包、About、启动器图标 |

## 真机

| 项 | 值 |
|---|---|
| ADB | `192.168.0.178:5555` |
| 安装 | `adb -s 192.168.0.178:5555 install -r build/AOE-signed.apk` |
| 强停 | `adb -s 192.168.0.178:5555 shell am force-stop tz.yx.gemorin` |
| 拉起 | `adb shell am start -n tz.yx.gemorin/age.of.civilizations2.jakowski.lukasz.AndroidLauncher` |

## 过时信息（忽略）

旧 `PROJECT.md` 曾写安装包 `age.of.civilizations2.jakowski.lukasanchao`、以及「尚未改 smali」。**均已过时。**
