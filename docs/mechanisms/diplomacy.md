# 外交

## 玩家路径

局内外交菜单：宣战、媾和、同盟、互不侵犯、附庸等。

## 主类 / 方法

| 职责 | 文件 | 说明 |
|---|---|---|
| 外交核心 | `DiplomacyManager.smali` | 关系、条约、战争数据 |
| 战争数据结构 | `War_GameData.smali` / `WarCiv_GameData.smali` | 参战方 |
| UI | `Menu_ManageDiplomacy*.smali`、`Menu_InGame_*Peace*` 等 | 玩家操作面 |
| 控制台和平/结盟 | `ConsoleCmds` / 旧 `Commands` | 见 [console.md](console.md) |

## Assets

无独立外交 JSON；关系存在存档/运行时。

## 补丁状态

以原版 + 控制台安全配方为主。宣战 AI 门槛改动见 [war-ai.md](war-ai.md)。

## 注意

控制台 `h` / peace 类命令：**禁止**只调 whitePeace；ledger 规定走 `acceptPeaceOffer` 配方（[../reports/CONSOLE_API_LEDGER.md](../reports/CONSOLE_API_LEDGER.md)）。
