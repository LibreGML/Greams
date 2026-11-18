# 品牌与社交外链

## 玩家路径

1. 主菜单右侧竖列图标（上→下）
2. About / 关于页链接

## 主菜单图标点击

文件：`Menu_Main.smali` → `actionElement` packed-switch

元素由下到上添加 `$4`…`$9`，点击 index 映射：

| 视觉（上→下） | 图标 | 开关 | URL |
|---|---|---|---|
| YouTube | `$9` logo_yt | `pswitch_b` | `https://youtube.com/@libregml` |
| Twitter/X | `$8` logo_twit | `pswitch_a` | `https://x.com/TZgemolin` |
| Facebook | `$7` logo_fb | `pswitch_9` | Facebook profile id `61586116595157` |
| iOS | `$6` logo_app | `pswitch_8` | `https://libregml.github.io/` |
| Android | `$5` logo_android | `pswitch_7` | `https://github.com/LibreGML` |
| PC | `$4` logo_steam | `pswitch_6` | `https://libregml.github.io/` |

悬停文案：各 `Menu_Main$4`…`$9` 的 hover `const-string`。

## 其它

| 位置 | 说明 |
|---|---|
| `CFG.smali` | 署名 / 官网常量 |
| About 菜单 | About$13–15 等外链 |
| 语言包 | `Bundle.properties` 中 `t0` / `AgeofCivilizations` 等 |
| 脚本 | `tools/patches/live/rebrand_gemorin.py` |

状态：**live**（2026-11-18）。
