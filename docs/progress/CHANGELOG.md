# 变更日志

格式：每轮一条。改完并真机验证后再写。

## 模板

```
### YYYY-MM-DD — 简短标题
- 目的：
- 改动文件：
- 安装包：build/AOE-signed.apk
- 真机：192.168.0.178:5555
- 验证结果：成功 / 失败（附 logcat 要点）
```

## 记录

### 2026-11-19 — MuMu EGL 闪退修复（RGBA8888）
- 目的：解决手动打开即闪退（非政体 JSON）
- 根因：`eglCreateContext` 抛 `IllegalArgumentException`（RGB565 + MuMu/x86 bridge）；进程反复被 Force finishing
- 改动：`AndroidLauncher` 改回 RGBA8888 并强制 `useGL30=false`；`GLSurfaceView20$ContextFactory` 捕获 IAE 再回退 GLES2
- 安装包：`build/AOE-signed.apk`
- 真机：`192.168.0.178:42445`
- 验证：启动后 PID 存活；无 FATAL EGL；已进入「读取革命图形」加载屏

### 2026-11-19 — 政体加载修复 + 万回合财政/征兵安全包络
- 目的：修复卡在「读取革命图形」；预防万回合后盈余归零 / 有预备役却无法征兵（BUG-002 类）
- 根因：生成器误写 `REPLACE_PERIOD`，引擎字段为 `REFORMAT_PERIOD` → Json `SerializationException` 未捕获 → 加载挂死
- 改动：`rebuild_governments.py` 改回 `REFORMAT_PERIOD`；新增 `harden()` 收紧 INCOME≤1.12、RECRUITABILITY≥1.00、高产出必须高军费；`Governments.json`；`docs/reports/GOVERNMENTS.md`
- 安装包：`build/AOE-signed.apk`
- 真机：`192.168.0.178:34559`（此前 45615）
- 验证：无 REPLACE_PERIOD；无 SerializationException；安装启动后 heap/GC 在推进（大地图前期 % 可能长时间显示 0）；adb 长加载中途曾掉线待复测进主菜单

### 2026-11-19 — 政体属性按政治经济学/史实全面再平衡
- 目的：46 政体加成符合现实财政与制度差异；拉开民主/专制/神权/商贸/封建/命令经济/法西斯/掠夺型等谱系；防 BUG-002
- 改动：`tools/patches/live/rebuild_governments.py`（ARCH 重设 + 包络校验 + HIGH_AUTONOMY 等旗）；`AOE_unpacked/assets/game/Governments.json`；`docs/reports/GOVERNMENTS.md`；`docs/mechanisms/governments.md`
- 安装包：`build/AOE-signed.apk`
- 真机：`192.168.0.178:5555`
- 验证：生成 46 槽 Extra_Tag 未变；包络 assert 通过；打包安装（随后发现 REPLACE_PERIOD 加载挂死，见上条）

### 2026-11-19 — 交易面板剔除领土买卖（含列表重排）
- 目的：领土不可交易；Provinces 行从 Side 列表**物理移除**并重排，避免留空位
- 改动：`Menu_InGame_TradeRequest_Side` 不再 `add` Side$2；`packed-switch` 索引前移；`DiplomacyManager` send/accept 清空 `lProvinces`；`fix_trade_no_provinces.py`
- 安装包：`build/AOE-signed.apk`
- 真机：`192.168.0.178:5555`
- 验证：打包安装后「花费」下一项应为「全面战争」无空行

### 2026-11-18 — 全量 smali/方法/资产编目（AI 精确解释）
- 目的：每个 `.smali` 有说明+方法摘录；神类有完整方法/字段索引；资产深度目录；统一 DOC_FORMAT
- 改动：`tools/utils/gen_ai_docs_catalog.py` / `gen_assets_catalog.py`；`docs/catalog/files/*`、`god-methods/*`、`families/*`、`ALL_CLASSES.jsonl`、`CLASS_COMPLETE`、`DOC_FORMAT`；强化 `AI_NAV`/`ENCYCLOPEDIA`/`HOW_TO_LOCATE`
- 安装包：未因本轮文档重装
- 验证：扫描 4599 smali（顶层 1622 + 内部类 2977）；神类方法索引 30+；assets ~48906 文件统计

### 2026-11-18 — AI 友好机制百科与类目录全覆盖
- 目的：让 AI 能按关键词快速定位任意机制/类/资产，并讲清全游戏机制与实现类
- 改动：新增 `docs/AI_NAV.md`、`docs/mechanisms/ENCYCLOPEDIA.md`、`docs/catalog/`（CLASS_*、MENU_FAMILIES、MESSAGE/EVENT 全表、ASSETS、HOW_TO_LOCATE、PREFIX_GUIDE）；更新 `AGENTS.md`、`00-START-HERE`、mechanisms/file-map INDEX
- 安装包：未因本轮文档重装
- 验证：目录交叉链接抽检；顶层类统计 1622；Menu 592；Message 113；Event Cond/Out 53/41

### 2026-11-18 — 逆向工程工作区规范化
- 目的：给 Codex/Claude 可检索的入口与机制→代码索引；整理 tools；不破坏 apktool 包路径
- 改动：新增 `AGENTS.md` / `README.md` / `.gitignore`；`docs/` 分为 START-HERE、IDENTITY、BUILD、mechanisms、file-map、progress、bugs、reports；`tools/` 分为 console、patches/live、patches/do-not-rerun、utils；scratch 进 `archive/`
- 安装包：未因本轮文档重装（结构整理）
- 验证：关键路径抽检 OK；`tz.yx.gemorin` Manifest 未改坏；smali 包目录未移动

### 2026-11-18 — 全面重品牌为葛墨林 / Gemorin / TZGML
- 目的：对外信息统一为葛墨林开发；清除原作者版权与外链
- 链接：X `https://x.com/TZgemolin`；YouTube `https://youtube.com/@libregml`；Facebook 指定主页；其余 `https://libregml.github.io` / `https://github.com/LibreGML`
- 改动：`CFG` 署名与官网常量；About/主菜单外链与展示文案；语言包 `t0`/`AgeofCivilizations`；去掉原站/原作者悬停域名
- 安装包：`build/AOE-signed.apk`

### 2026-11-18 — 撤销小国和平 AI 错峰
- 目的：不改 AI 回合机制，避免漏算/不同步 bug
- 改动：恢复每个有省份的 AI 文明每回合完整 `turnOrdersEssential` + `turnOrders`
- 保留：去热路径日志、去掉每文明 `setRender_3`、侵略度 0 跳过宣战评估、起义后台线程

### 2026-11-18 — 加速「新的回合」加载（多文明）
- 目的：文明很多时左下角加载缩短（不改 AI 决策频率）
- 改动：去热路径日志 / 去 per-civ `setRender_3` / 侵略度 0 跳过宣战评估 / 起义改后台线程
- 安装包：`build/AOE-signed.apk`

### 2026-11-18 — 恢复省界内边框与城市全量标注
- 目的：地图显示回到原版密度
- 改动：`ENABLE_INNER_BORDERS=true`；`PERCETANGE_OF_CITIES_ON_MAP=100`（SettingsManager 默认 + CFG.loadSettings 强制）
- 安装包：`build/AOE-signed.apk`

### 2026-11-18 — 恢复行军/征兵军队徽章显示
- 目的：移动时能看到在途军队；征兵时能看到省份正在招募（不等到下回合才突然出现）
- 根因：性能补丁强制 `DRAW_MOVE_UNITS_ARMY_IN_EVERYSINGLE_PROVINCE=false`，走稀疏绘制 `Game$19`，不画在途兵力与绿色征兵标记
- 改动：`SettingsManager` 默认改回 true；`CFG.loadSettings` 强制为 true（不再关）
- 安装包：`build/AOE-signed.apk`

### 2026-11-18 — 回退行军改道
- 目的：去掉全部行军改道改动，恢复原 `moveArmy` / `clickMoveTo`
- 改动：`Game_Action.smali`、`Menu_InGame_ProvinceAction.smali`
- 保留：占领 A3 收益、打仗 AI 强化

### 2026-11-18 — 三机制全面革新（占领收益 / 行军改道 / 打仗 AI）
- 目的：占领区少量税征；已下单与 regroup 途中可改道；电脑与托管自动打仗更聪明
- 占领 A3：税 10%（不再用行政假税抵消）、生产保持约 10%、征兵上限与人力计入 15%
- 行军：`clearOrdersFromProvinceForReroute`；`clickMoveTo` 允许对在途/已规划部队重规划（**已回退**）
- AI：`moveAtWar_AttackTo_Score` 加入胜负预估/兵力比/弱守军/在途稀释（`moveAtWar` 与 `moveAtWarPlayer` 共用）；宣战评分加入兵力劣势惩罚
- 工具：`tools/fix_occupy_economy_a3.py`、`fix_army_reroute.py`、`fix_ai_war_smart.py`
- 安装包：`build/AOE-signed.apk`
- 真机：192.168.0.178:5555

### 2026-11-18 — 财政第三轮（真实数字显示 + 通胀/利息 double）
- 目的：取消 int 上限显示；通胀/利息按 long 国库与 long 收入用 double 计算
- 改动：`BudgetCore` v3；预算 UI `formatMoney*`；`getInflation`/`getInterestCost` 委托 BudgetCore
- 工具：`tools/rewrite_money_display.py`
- 安装包：`build/AOE-signed.apk`

### 2026-11-18 — 财政 long 账本第二轮（全链路加固）
- 目的：彻底消除大回合结余锁 0 / 支出滑条失效类 bug
- 改动：强化 `BudgetCore`；213 处金钱 int 读改为 accessor；军费 double 累加；ActionInfo 结余改 `getBalance`；`getExpenses_Budget` 走 long
- 工具：`tools/rewrite_budget_field_reads.py`
- 安装包：`build/AOE-signed.apk`

### 2026-11-18 — 大后期财政结余锁 0（BudgetCore long 账本）
- 目的：第三次世界大战等大后期，调税/支出时盈余不再恒为 0
- 根因：收入/行政/`iBudget`/结余走 `int`+`float`，过饱和后 `iBudget→0`、结余 float 相减为 0
- 改动：`BudgetCore.java`；`Civilization.lIncome*`/`lBudget`/`lAdministration*`/`lMilitary*`；`Game_NextTurnUpdate` 准备/收支/结余/入账；顶栏 `Menu_InGame$2.setCurrentLong`
- 安装包：`build/AOE-signed.apk`
- 验证：`BudgetCore` 离线单测通过；真机大存档待复核

### 2026-11-17 — 控制台一键进入
- 国旗页原「输入消息」改为「控制台」按钮：点击直接打开控制台面板+指令键盘
- 去掉作弊指令必须先 `help` 的门槛（未开面板会自动打开）
- 改动：`CFG.showKeyboard_Commands`、`Commands.execute` 门槛、`Bundle.TypeMessage`

### 2026-11-17 — 应用图标按图1做成自适应圆形图标
- 改动：全密度圆形透明 `ic_launcher`；`mipmap-anydpi-v26` 自适应；`roundIcon`；Manifest 指向 `@mipmap/ic_launcher`
- 验证：`application-label:'荆梦录'`；icon 指向 `mipmap-anydpi-v26/ic_launcher.xml`；已安装

### 2026-11-17 — 应用显示名改为「荆梦录」
- 改动：`res/values/strings.xml` → `app_name=荆梦录`
- 验证：`aapt dump badging` → `application-label:'荆梦录'`；已 `adb install -r`

### 2026-11-17 — 架构级性能 / 内存 / 加载优化
- 目的：更高帧性能、更快加载、更低内存，且保持可玩
- 启动层：去掉 onCreate 阻塞弹窗；关闭传感器；限制同时音效；RGB565 帧缓冲；`isGame` + GPU 加速
- 资源层：`ImageManager`/政体/宗教/地形贴图关闭 mipmap；默认 Nearest 过滤
- 运行层：关闭缺 key 日志刷屏；启动后强制性能设置（关内边框/全图行军绘制、城市标注 10%）
- 生命周期：InitGame / LoadMap 完成后 `System.gc()`
- 安装包：`build/AOE-signed.apk`
- 真机：192.168.0.178:5555
- 验证：冷启动约 6s 主菜单；开局约 4s 进图；无 FATAL；主菜单 PSS≈199MB，进游后≈250MB

### 2026-11-17 — 全面加速进入游戏加载
- 目的：启动加载与开局 LoadMap 进度尽可能快
- 改动：
  - `Menu_InitGame`：Android 每 tick 批处理 200 贴图 / 400 省数据；每帧 GL 线程直调 `loadAssets`×10（去掉每帧 new Thread）
  - `Menu_LoadMap`：批处理同级；每帧直调 `loadMap`×10
  - `SettingsManager` 默认 + `CFG.loadSettings` 强制 `CONTINUOUS_RENDERING=true`
- 安装包：`build/AOE-signed.apk`
- 真机：192.168.0.178:5555
- 验证：冷启动约 5s 进主菜单；1936 点「开始」约 4–5s 进入游戏（回合 1 /「新的回合」）

### 2026-11-17 — 修复「默认剧本」结束回合卡在下一个
- 目的：不换剧本直接开局时，结束回合不再卡在「下一个」
- 根因：启动只 load 一次默认剧本；选剧本列表在 ID 未变时跳过重载；手动换剧本才会 `loadScenario+initPlayers`
- 改动：`Menu_Games.clickNewGame` 强制重载当前剧本；`Menu_CreateNewGame_Scenarios` 即使点当前项也重载
- 安装包：`build/AOE-signed.apk`
- 真机：192.168.0.178:5555
- 验证结果：默认 1936 不换剧本开局 → 点新的回合 → 回合 1→2，按钮恢复为「新的回合」

### 2026-11-17 — 1900 剧本去重 / 事件隔离（附带）
- 改动：`1900` Extra_Tag 去重；事件 `1900_E.disabled`；列表默认序改为 `1936` 开头
- 说明：用户已澄清卡住与具体剧本无关，主修复见上条

### 2026-11-17 — 新存档默认：地狱难度 / 关迷雾 / AI侵略0%
- 改动：`CFG.smali` DIFFICULTY=4 FOG=0；`Game_Calendar.smali` AI_AGGRESSIVNESS=0；`Menu_Games.clickNewGame` 同步默认
- 验证：安装启动正常

### 2026-11-17 — 应用包名改为 tz.yx.gemorin
- 改动：`AndroidManifest.xml` package、`apktool.yml` renameManifestPackage
- 启动组件：`tz.yx.gemorin/age.of.civilizations2.jakowski.lukasz.AndroidLauncher`
- 验证：安装成功；pid 存活；无 FATAL/ClassNotFound

### 2026-11-17 — 文革三剧本政体修复（造反派/保守派）
- 目的：半架空 `_马`→马列 `_c`，`_保`→军部 `_J`；架空造反`_毛`→`_c`、保守`_稻`→`_J`；世界国家按 1968 史实
- 剧本：`cnwar`、`文革架空`、`Great_Proletarian_Cultural_Revolution`
- 改动：约 185 处；报告 `docs/CR_SCENARIO_GOV_FIX_REPORT.md`
- 安装包：`build/AOE-signed.apk`
- 验证结果：安装成功；启动无 SerializationException/FATAL

### 2026-11-17 — 全剧本政体按历史年代校正
- 目的：除文革相关剧本外，按年份修正各国 Extra_Tag；如中华苏维埃 `chss_毛`→`chss_c`
- 规模：41 个剧本、约 1215 处 Tag 修正
- 改动文件：`tools/fix_scenario_governments.py`、`map/TZ/scenarios/*`、`docs/SCENARIO_GOV_FIX_REPORT.md`
- 排除：`Great_Proletarian_Cultural_Revolution`、`文革架空`、`cnwar`
- 安装包：`build/AOE-signed.apk`
- 验证结果：安装成功；启动无 SerializationException/FATAL

### 2026-11-17 — 欧亚美大洋洲政体国名扩展至 168 文明
- 目的：在主要文明基础上覆盖欧洲/亚洲/美洲/大洋洲（及常用非洲）全政体显示名
- 规模：168 文明 × 46 政体 = 7728 条；新增约 4240 条
- 改动文件：`tools/civ_gov_names_extra.py`、`tools/rebuild_civ_gov_names.py`、`Bundle.properties`、`docs/CIV_NAMES_BY_GOVERNMENT.md`
- 安装包：`build/AOE-signed.apk`
- 真机：`192.168.0.178:5555`
- 验证结果：安装成功；启动无 SerializationException/FATAL

### 2026-11-17 — 主要文明政体显示名全面补全
- 目的：73 个主要文明 × 46 政体显示名对齐史实/通行国号；修正错配（如 chi_稻 误为中共）
- 改动文件：`AOE_unpacked/assets/game/languages/civilizations/Bundle.properties`、`tools/rebuild_civ_gov_names.py`、`docs/CIV_NAMES_BY_GOVERNMENT.md`、`docs/civ_names_by_government.csv`
- 备份：`Bundle.properties.bak_before_gov_names`
- 安装包：`build/AOE-signed.apk`
- 真机：`192.168.0.178:5555`
- 验证结果：安装成功；启动无 SerializationException/FATAL

### 2026-11-17 — 政体术语二次精炼（删伪政体、统一教科书名）
- 目的：去掉非政体理论词与重复苏维埃；改用政治学正统术语
- 改动：删除无产阶级专政、苏维埃政权、人民阵线等；南斯拉夫…→工人自治制；二元制君主国→二元君主立宪制；复兴党一党制→一党霸权制；现 46 条
- 改动文件：`tools/rebuild_governments.py`、`AOE_unpacked/assets/game/Governments.json`、`docs/GOVERNMENTS.md`
- 安装包：`build/AOE-signed.apk`
- 真机：`192.168.0.178:5555` 安装成功；pid 存活；无 SerializationException/FATAL
- 验证结果：成功

### 2026-11-17 — 全面重设政体 Governments.json
- 目的：真实历史政体、去掉公社等崩坏数值，长期对局不再无收入/无法征兵
- 改动文件：`AOE_unpacked/assets/game/Governments.json`、`tools/rebuild_governments.py`、`docs/GOVERNMENTS.md`
- 安装包：`build/AOE-signed.apk`（需卸载旧签名包后安装）
- 真机：`192.168.0.178:5555` 安装成功；logcat 无 `SerializationException`/`FATAL`
- 验证结果：应用可启动；政体 JSON 加载正常

### 2026-11-17 — 项目基线文档
- 目的：记录目标、解包结构、打包真机流程
- 改动文件：`PROJECT.md`、`docs/*`
- 验证结果：尚未改 smali；仅文档与已有 `AOE_unpacked`
