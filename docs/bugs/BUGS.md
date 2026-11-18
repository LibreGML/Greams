# Bug 清单

状态：`open` / `investigating` / `fixed` / `wontfix`

## 模板

```
### BUG-XXX 标题
- 状态：
- 现象：
- 复现：
- 嫌疑 smali / JSON：
- 修复摘要：
- 真机验证：
```

## 已知 / 待确认

### BUG-001 部分国旗资源解包失败
- 状态：open（资源）
- 现象：apktool 跳过 `assets/game/flags/*_?.png`（非法文件名）
- 复现：解码 APK 时 warning
- 嫌疑：原包资源命名
- 修复摘要：未修；不影响主逻辑时可延后
- 真机验证：N/A

### BUG-002 共产主义公社后期无收入、无法征兵
- 状态：fixed
- 现象：数百回合后国库枯竭、无法征兵
- 复现：使用「共产主义公社」等极端数值政体长期游玩
- 嫌疑：`INCOME_PRODUCTION` 5+、`MILITARY_UPKEEP`≈0、`ADMIN`≈0 → 通胀螺旋；`RECRUITABILITY` 过低
- 修复摘要：重写全部 47 政体为真实历史体制，数值限制在安全包络内；`共产主义公社`→`苏维埃政权`
- 真机验证：2026-11-17 新包可启动且政体加载无 SerializationException

### BUG-003 默认剧本下一回合卡在「下一个」
- 状态：fixed
- 现象：不换剧本直接开局时，点「新的回合」按钮变成「下一个」且无法回到可操作状态；手动选其他剧本正常。与具体哪个剧本无关，跟「是否默认未重载」有关
- 复现：新的革命 → 不切换剧本 → 开局 → 右下角新的回合
- 根因：启动时 `Menu_InitGame` 只 load 一次默认剧本；`Menu_CreateNewGame_Scenarios` 在 scenarioID 未变时跳过 `loadScenario`；手动换剧本会走完整 `loadScenario(false)+initPlayers()`，默认路径不会
- 修复摘要：`Menu_Games.clickNewGame` 强制重载当前剧本；选剧本列表即使点中当前项也重载
- 真机验证：adb 默认剧本（1936）不换剧本开局 → 点「新的回合」→ Turn_Actions/clickEnd 完整跑完，按钮仍为「新的回合」，回合 1→2

### BUG-004 大后期财政盈余锁死为 0（第三次世界大战 / 中国约 1790 回合）
- 状态：fixed（第三轮：显示/通胀/利息全面 long+double）
- 现象：顶栏结余恒为 0；怎么调税收 / 商品 / 投资 / 科研支出都不变
- 复现：第三次世界大战玩中国，打到约 1790 回合后打开预算
- 根因：省份收入用 `float→int` 累加进 `iIncomeTaxation` 等；`iBudget=income−admin` 同理；结余 `float(income)−float(expenses)`。数值过 `Integer.MAX_VALUE` / float 精度后饱和，`iBudget` 塌成 0（支出滑条失效），`Inf/NaN` 或等值 float 相减 → 显示 0
- 修复摘要：
  - `BudgetCore`：结余/支出/利息/通胀全部 **long+double**；`formatMoney` 输出完整 long 数字（不截断 int 上限）
  - 预算面板 113+ 处显示改为 `formatMoney*` / `formatIncome|Expenses`
  - 军费 **double 累加**；回合入账 `getBalanceLong`
  - `i*` 仅给 AI 阈值；玩家可见金钱不再走饱和 int
- 真机验证：第三轮包安装；`BudgetCore v3` 单测通过；大战长存档待复核
- 后续回归（闪退）：`rewrite_money_display` 误把 `budgetInt`/`taxInt` 等改成 `formatMoney*`，导致
  - `TimelapseManager` VerifyError（String 当 int 加减）
  - 预算面板把 String 传给 `getGoodsSpendings(II)` / `getResearchSpendings(II)` / `setMax(I)` 等
  - `StringBuilder.append(Object)` 接到 int 寄存器
  已用 `tools/fix_format_as_int_args.py` / `fix_int_append_object.py` / `fix_dual_display_money.py` 修回；盲改脚本已禁用。启动与 dex 校验通过。

### （待补充）逻辑 / AI / 崩溃类
- 状态：open
- 说明：以真机复现为准，确认后在此编号登记
