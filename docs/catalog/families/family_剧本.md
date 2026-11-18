# 类族：剧本

顶层 **11**，含内部类合计 **12**。

| 类 | 内部? | KB | 方法 | 说明 | 关键方法 |
|---|---|---:|---:|---|---|
| `Game_Scenarios` |  | 454.0 | 54 | 剧本列表加载 | `buildDiplomacy`, `buildProvincePopulationAndEconomy`, `disableFillTheMap`, `disposeScenarios`, `editScenario`, `enableFillTheMap` …(+48) |
| `Game_Scenarios$RandomGame_AoCMode` | yes | 2.1 | 0 | 内部类 → 外层 `Game_Scenarios`（剧本列表加载）｜本类 `Game_Scenarios$RandomGame_AoCMode` | （无公开业务方法或仅构造） |
| `Scenario_GameData` |  | 27.9 | 26 | 剧本数据块 | `addCampaingCivsIDs`, `buildData`, `getActivePalletOfColors_TAG`, `getCivCapital`, `getCivSize`, `getCivTag` …(+20) |
| `Scenario_GameData_Armies` |  | 11.1 | 1 | 剧本数据块 | `buildData` |
| `Scenario_GameData_Army` |  | 1.4 | 3 | 剧本数据块 | `getArmy`, `getCivID`, `getProvinceID` |
| `Scenario_GameData_Diplomacy2` |  | 22.4 | 9 | 剧本数据块｜含: 外交 | `buildData`, `getAlliances`, `getDefensivePacts`, `getGuarantee`, `getMilitaryAccess`, `getPacts` …(+3) |
| `Scenario_GameData_Diplomacy_AlliancesData` |  | 3.4 | 6 | 剧本数据块｜含: 同盟, 外交 | `addCiv`, `getCivs`, `getColor`, `getName`, `setColor`, `setName` |
| `Scenario_GameData_Diplomacy_Data` |  | 2.0 | 6 | 剧本数据块｜含: 外交 | `getCivA`, `getCivB`, `getValue`, `setCivA`, `setCivB`, `setValue` |
| `Scenario_GameData_Diplomacy_VassalsData` |  | 1.6 | 4 | 剧本数据块｜含: 附庸, 外交 | `getCivID`, `getCivLordID`, `setCivID`, `setCivLordID` |
| `Scenario_GameData_Province2` |  | 2.7 | 2 | 剧本数据块 | `buildProvinceOwners`, `getProvinceOwners` |
| `Scenario_GameData_Technology` |  | 1.5 | 4 | 剧本数据块｜含: 科技 | `getContinentID`, `getPercentage`, `setContinentID`, `setPercentage` |
| `Scenario_WastelandProvinces_GameData` |  | 1.9 | 2 | 剧本数据块｜含: 荒地 | `getWastelandProvinceID`, `getWastelandProvincesSize` |
