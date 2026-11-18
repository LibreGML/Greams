# 类族：AI

顶层 **63**，含内部类合计 **68**。

| 类 | 内部? | KB | 方法 | 说明 | 关键方法 |
|---|---|---:|---:|---|---|
| `AI` |  | 477.2 | 25 | AI 调度入口 turnOrders* | `addNeutralProvincesWithSeaAccess`, `addWastelandProvincesWithSeaAccess`, `buildAIData`, `buildProvinceData`, `build_RebuildPersonality`, `checkCurrentWars_LookingForPeace` …(+19) |
| `AI$1` | yes | 1.2 | 1 | 内部类 → 外层 `AI`（AI 调度入口 turnOrders*）｜本类 `AI$1` | `expandToNeutralProvinces` |
| `AI$2` | yes | 1.0 | 1 | 内部类 → 外层 `AI`（AI 调度入口 turnOrders*）｜本类 `AI$2` | `expandToNeutralProvinces` |
| `AI$Expand` | yes | 0.5 | 1 | 内部类 → 外层 `AI`（AI 调度入口 turnOrders*）｜本类 `AI$Expand` | `expandToNeutralProvinces` |
| `AI$NeutralProvinces` | yes | 17.3 | 1 | 内部类 → 外层 `AI`（AI 调度入口 turnOrders*）｜本类 `AI$NeutralProvinces` | `buildScore` |
| `AI_ArmyUpkeep` |  | 1.0 | 0 | AI 子系统 | （无公开业务方法或仅构造） |
| `AI_BordersWith` |  | 1.1 | 0 | AI 子系统｜含: 边界 | （无公开业务方法或仅构造） |
| `AI_Build` |  | 2.6 | 3 | AI 建造决策 | `build`, `getMoney`, `getNumOfAlreadyBuilt` |
| `AI_Build_Armoury` |  | 25.5 | 3 | AI 建造决策 | `build`, `getNumOfAlreadyBuilt`, `getProvinceBuildScore` |
| `AI_Build_Bunker` |  | 25.7 | 3 | AI 建造决策 | `build`, `getNumOfAlreadyBuilt`, `getProvinceBuildScore` |
| `AI_Build_Farm` |  | 26.1 | 3 | AI 建造决策｜含: 农场 | `build`, `getNumOfAlreadyBuilt`, `getProvinceBuildScore` |
| `AI_Build_Fort` |  | 21.3 | 3 | AI 建造决策｜含: 要塞 | `build`, `getNumOfAlreadyBuilt`, `getProvinceBuildScore` |
| `AI_Build_Invest` |  | 29.6 | 3 | AI 建造决策｜含: 投资 | `build`, `getMoney`, `getProvinceBuildScore` |
| `AI_Build_Invest_Development` |  | 32.3 | 3 | AI 建造决策｜含: 投资 | `build`, `getMoney`, `getProvinceBuildScore` |
| `AI_Build_Library` |  | 24.4 | 3 | AI 建造决策 | `build`, `getNumOfAlreadyBuilt`, `getProvinceBuildScore` |
| `AI_Build_NuclearReactor` |  | 25.9 | 3 | AI 建造决策｜含: 核 | `build`, `getNumOfAlreadyBuilt`, `getProvinceBuildScore` |
| `AI_Build_Option` |  | 3.9 | 3 | AI 建造决策 | `getData`, `getMoney`, `getScore` |
| `AI_Build_Option_Armoury` |  | 2.8 | 2 | AI 建造决策 | `getData`, `getScore` |
| `AI_Build_Option_Bunker` |  | 2.8 | 2 | AI 建造决策 | `getData`, `getScore` |
| `AI_Build_Option_Fort` |  | 2.7 | 2 | AI 建造决策｜含: 要塞 | `getData`, `getScore` |
| `AI_Build_Option_Invest` |  | 2.6 | 2 | AI 建造决策｜含: 投资 | `getData`, `getScore` |
| `AI_Build_Option_Invest_Development` |  | 3.7 | 2 | AI 建造决策｜含: 投资 | `getData`, `getScore` |
| `AI_Build_Option_Library` |  | 2.8 | 2 | AI 建造决策 | `getData`, `getScore` |
| `AI_Build_Option_NuclearReactor` |  | 2.8 | 2 | AI 建造决策｜含: 核 | `getData`, `getScore` |
| `AI_Build_Option_Port` |  | 6.0 | 2 | AI 建造决策｜含: 港口 | `getData`, `getScore` |
| `AI_Build_Option_Shaft` |  | 2.7 | 2 | AI 建造决策 | `getData`, `getScore` |
| `AI_Build_Option_Supplies` |  | 2.8 | 2 | AI 建造决策 | `getData`, `getScore` |
| `AI_Build_Option_Tower` |  | 2.7 | 2 | AI 建造决策｜含: 瞭望塔 | `getData`, `getScore` |
| `AI_Build_Option_Workshop` |  | 2.8 | 2 | AI 建造决策 | `getData`, `getScore` |
| `AI_Build_Port` |  | 31.6 | 5 | AI 建造决策｜含: 港口 | `build`, `civRegion_HaveBuiltPort`, `getNumOfAlreadyBuilt`, `getProvinceBuildScore`, `haveAccessToBasinWithoutPort` |
| `AI_Build_Shaft` |  | 25.6 | 3 | AI 建造决策 | `build`, `getNumOfAlreadyBuilt`, `getProvinceBuildScore` |
| `AI_Build_Supplies` |  | 21.3 | 3 | AI 建造决策 | `build`, `getNumOfAlreadyBuilt`, `getProvinceBuildScore` |
| `AI_Build_Tower` |  | 21.2 | 3 | AI 建造决策｜含: 瞭望塔 | `build`, `getNumOfAlreadyBuilt`, `getProvinceBuildScore` |
| `AI_Build_Workshop` |  | 26.3 | 3 | AI 建造决策 | `build`, `getNumOfAlreadyBuilt`, `getProvinceBuildScore` |
| `AI_CivInfo_War` |  | 0.4 | 0 | AI 子系统｜含: 战争 | （无公开业务方法或仅构造） |
| `AI_CivsInRange` |  | 0.7 | 0 | AI 子系统 | （无公开业务方法或仅构造） |
| `AI_Frontline` |  | 3.8 | 2 | AI 子系统 | `containsProvince`, `getFrontLineArmy` |
| `AI_Frontline_AI` |  | 4.6 | 5 | AI 子系统 | `addFrontLine`, `getFrontLine`, `getFrontLinesSize`, `getWithCivID`, `ownFront` |
| `AI_FrontLine_War` |  | 31.0 | 12 | AI 子系统｜含: 战争 | `canRecruitArmy_FrontLine`, `getEnemyRating`, `getEnemyRegion_NumOfProvinces`, `getEnemyRegion_NumOfRegions`, `getEnemyRegion_Potential`, `getFrontArmy` …(+6) |
| `AI_Influence` |  | 0.8 | 0 | AI 子系统 | （无公开业务方法或仅构造） |
| `AI_NeighProvinces` |  | 0.6 | 0 | AI 子系统 | （无公开业务方法或仅构造） |
| `AI_NeighProvinces_Army` |  | 0.7 | 0 | AI 子系统 | （无公开业务方法或仅构造） |
| `AI_ProvinceInfo` |  | 0.7 | 0 | AI 子系统 | （无公开业务方法或仅构造） |
| `AI_ProvinceInfo_War` |  | 8.7 | 6 | AI 子系统｜含: 战争 | `buildEnemyProvinces`, `enemyProvinceBordersWithOurTrueProvince`, `getArmy`, `getRecruitableArmy`, `getRecruitableArmyAutoplan`, `isOccupied` |
| `AI_ProvinceValue` |  | 0.9 | 0 | AI 子系统 | （无公开业务方法或仅构造） |
| `AI_RegoupArmyData` |  | 0.5 | 0 | AI 子系统 | （无公开业务方法或仅构造） |
| `AI_Regroup` |  | 0.5 | 0 | AI 子系统 | （无公开业务方法或仅构造） |
| `AI_ReleaseVassal` |  | 3.3 | 3 | AI 子系统｜含: 附庸 | `addProvince`, `haveProvince`, `removeProvinceID` |
| `AI_Rival` |  | 0.6 | 0 | AI 子系统 | （无公开业务方法或仅构造） |
| `AI_Skills` |  | 2.8 | 3 | AI 子系统 | `addPoint_CivID`, `getScore`, `getScore_Personality` |
| `AI_Skills_Administration` |  | 2.1 | 2 | AI 子系统 | `addPoint_CivID`, `getScore_Personality` |
| `AI_Skills_AttackMilitary` |  | 2.1 | 2 | AI 子系统 | `addPoint_CivID`, `getScore_Personality` |
| `AI_Skills_DefenseMilitary` |  | 2.1 | 2 | AI 子系统 | `addPoint_CivID`, `getScore_Personality` |
| `AI_Skills_Eco` |  | 2.1 | 2 | AI 子系统 | `addPoint_CivID`, `getScore_Personality` |
| `AI_Skills_Military` |  | 2.1 | 2 | AI 子系统 | `addPoint_CivID`, `getScore_Personality` |
| `AI_Skills_Production` |  | 2.1 | 2 | AI 子系统 | `addPoint_CivID`, `getScore_Personality` |
| `AI_Skills_Research` |  | 2.1 | 2 | AI 子系统｜含: 搜索 | `addPoint_CivID`, `getScore_Personality` |
| `AI_Skills_Taxation` |  | 2.1 | 2 | AI 子系统 | `addPoint_CivID`, `getScore_Personality` |
| `AI_Style` |  | 3160.6 | 112 | AI 风格基类：战争评分/移动/宣战 | `diplomacyActions_RivalCiv_IsRival`, `getMoney_MinReserve`, `getMoney_MinReserve_LockTreasury`, `abandonOrReleaseAsVassalProvinces`, `abandonOrReleaseAsVassalProvinces_ReleaseVassal`, `alliesAtWar` …(+106) |
| `AI_Style$1` | yes | 17.2 | 0 | 内部类 → 外层 `AI_Style`（AI 风格基类：战争评分/移动/宣战）｜本类 `AI_Style$1` | （无公开业务方法或仅构造） |
| `AI_Style_CityState` |  | 22.0 | 4 | 政体风格 AI 子类 | `buildStartingBuildings`, `sendGiftToFriendlyCiv`, `shouldChangeTypeOfGoverment`, `turnOrders` |
| `AI_Style_Communism` |  | 20.6 | 4 | 政体风格 AI 子类 | `buildStartingBuildings`, `sendGiftToFriendlyCiv`, `shouldChangeTypeOfGoverment`, `turnOrders` |
| `AI_Style_Democracy` |  | 17.6 | 3 | 政体风格 AI 子类 | `sendGiftToFriendlyCiv`, `shouldChangeTypeOfGoverment`, `turnOrders` |
| `AI_Style_Fascism` |  | 20.9 | 4 | 政体风格 AI 子类 | `buildStartingBuildings`, `sendGiftToFriendlyCiv`, `shouldChangeTypeOfGoverment`, `turnOrders` |
| `AI_Style_Horde` |  | 21.6 | 4 | 政体风格 AI 子类 | `buildStartingBuildings`, `sendGiftToFriendlyCiv`, `shouldChangeTypeOfGoverment`, `turnOrders` |
| `AI_Style_Rebels` |  | 45.9 | 4 | 政体风格 AI 子类｜含: 叛军 | `attackProvince_Score`, `buildStartingBuildings`, `tryRegroupArmy`, `turnOrders` |
| `AI_Style_Tribal` |  | 63.0 | 8 | 政体风格 AI 子类 | `migrationTo_Score`, `migration_NotConnected`, `migration_NotConnected_OLD`, `armyOverBudget_Disband`, `buildBuildings`, `buildStartingBuildings` …(+2) |
| `AI_WarPreparations` |  | 1.3 | 0 | AI 子系统｜含: 战争 | （无公开业务方法或仅构造） |
