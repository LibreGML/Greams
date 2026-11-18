# 类族：注入

顶层 **15**，含内部类合计 **22**。

| 类 | 内部? | KB | 方法 | 说明 | 关键方法 |
|---|---|---:|---:|---|---|
| `BudgetCore` |  | 45.8 | 62 | 本仓库财政核心（注入）｜含: 预算 | `addAdministration`, `addAdministrationD`, `addProduction`, `addProductionD`, `addTax`, `addTaxD` …(+56) |
| `CalcFns` |  | 135.2 | 15 | 计算辅助（注入） | `base64Decode`, `base64Encode`, `call`, `comb`, `dec64`, `dispatch` …(+9) |
| `CalcParser` |  | 88.2 | 33 | 计算辅助（注入） | `enter`, `eval`, `isDigit`, `isDigitForRadix`, `isKeyword`, `isLetter` …(+27) |
| `CalcValue` |  | 84.8 | 45 | 计算辅助（注入） | `add`, `bitAnd`, `bitNot`, `bitOr`, `bitXor`, `cmp` …(+39) |
| `CalcValue$CalcException` | yes | 0.7 | 0 | 内部类 → 外层 `CalcValue`（计算辅助（注入））｜本类 `CalcValue$CalcException` | （无公开业务方法或仅构造） |
| `CivSearchIme` |  | 3.7 | 3 | 文明搜索 IME（注入） | `close`, `isActive`, `open` |
| `CivSelectCache` |  | 48.7 | 18 | 文明选择缓存（注入） | `appendResolved`, `buildPlacedSet`, `cachedSize`, `ensureLoaded`, `fillAlphabet`, `fillSortedLists` …(+12) |
| `CivSelectCache$1` | yes | 2.3 | 2 | 内部类 → 外层 `CivSelectCache`（文明选择缓存（注入））｜本类 `CivSelectCache$1` | `compare`, `compare` |
| `CivSelectCache$2` | yes | 3.4 | 2 | 内部类 → 外层 `CivSelectCache`（文明选择缓存（注入））｜本类 `CivSelectCache$2` | `compare`, `compare` |
| `CivSelectCache$Hit` | yes | 0.8 | 0 | 内部类 → 外层 `CivSelectCache`（文明选择缓存（注入））｜本类 `CivSelectCache$Hit` | （无公开业务方法或仅构造） |
| `ConsoleCalc` |  | 30.6 | 16 | 控制台（注入） | `enterMode`, `evalAndPrint`, `handleExplicit`, `handleLine`, `hasMathSyntax`, `indexOfAssign` …(+10) |
| `ConsoleCmds` |  | 342.7 | 98 | 控制台（注入） | `addArmyCmd`, `addCiv`, `addDiplo`, `addEcoCmd`, `addMoney`, `addMonths` …(+92) |
| `ConsoleContext` |  | 36.1 | 22 | 控制台（注入） | `activeProvince`, `civ`, `civByName`, `civId`, `civLabel`, `game` …(+16) |
| `ConsoleEngine` |  | 81.3 | 21 | 控制台（注入） | `add`, `closeConsole`, `execute`, `fuzzyCandidates`, `fuzzyMatch`, `helpOf` …(+15) |
| `ConsoleEngine$Hit` | yes | 0.7 | 0 | 内部类 → 外层 `ConsoleEngine`（控制台（注入））｜本类 `ConsoleEngine$Hit` | （无公开业务方法或仅构造） |
| `ConsoleFloat` |  | 103.8 | 45 | 控制台（注入） | `applyCommandsLayout`, `clearKeyboardAnimation`, `clearSelection`, `compute`, `deleteOneBeforeCaret`, `deleteSelection` …(+39) |
| `ConsoleFloat$1` | yes | 1.0 | 1 | 内部类 → 外层 `ConsoleFloat`（控制台（注入））｜本类 `ConsoleFloat$1` | `action` |
| `ConsoleFloat$2` | yes | 1.6 | 1 | 内部类 → 外层 `ConsoleFloat`（控制台（注入））｜本类 `ConsoleFloat$2` | `action` |
| `ConsoleHistory` |  | 16.9 | 12 | 控制台（注入） | `expand`, `favAdd`, `favGet`, `favPrint`, `favSize`, `get` …(+6) |
| `ConsoleOut` |  | 7.8 | 9 | 控制台（注入） | `blank`, `chooseProvince`, `err`, `hash`, `line`, `ok` …(+3) |
| `ConsoleSuggest` |  | 15.4 | 9 | 控制台（注入） | `closest`, `closestByFirstWord`, `editDistance`, `fuzzyThreshold`, `insertSorted`, `isTrailingJunk` …(+3) |
| `ScenarioExport` |  | 20.2 | 7 | 剧本导出（注入）｜含: 港口 | `activeMapPath`, `appendExportIndex`, `exportAllLocal`, `exportCurrent`, `exportTag`, `toast` …(+1) |
