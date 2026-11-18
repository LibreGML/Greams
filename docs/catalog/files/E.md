# 类文件目录 — E

条目: **120**

| 类 | KB | 分组 | 方法数 | 说明 | 关键方法 |
|---|---:|---|---:|---|---|
| `Editor` | 8.3 | 其他 | 9 | 待归类；按类名 tokens 推断｜含: 编辑器 | `draw`, `getInUse`, `keyDown`, `keyUp`, `setInUse`, `toString`, `touchDown`, `touchDragged`, `touchUp` |
| `Editor_Colors` | 34.4 | 编辑器 | 2 | 编辑器逻辑 | `keyDown`, `toString` |
| `Editor_Continents` | 15.5 | 编辑器 | 5 | 编辑器逻辑 | `actionSave`, `addUndo`, `popUndo`, `keyDown`, `toString` |
| `Editor_GrowthRate` | 16.9 | 编辑器 | 5 | 编辑器逻辑 | `actionSave`, `addUndo`, `popUndo`, `keyDown`, `toString` |
| `Editor_LevelOfPort` | 12.3 | 编辑器 | 2 | 编辑器逻辑｜含: 港口 | `keyDown`, `toString` |
| `Editor_MapRegions` | 15.4 | 编辑器 | 5 | 编辑器逻辑 | `actionSave`, `addUndo`, `popUndo`, `keyDown`, `toString` |
| `Editor_NeighboringProvinces` | 144.2 | 编辑器 | 3 | 编辑器逻辑 | `updateProvince`, `keyDown`, `toString` |
| `Editor_ProvinceTexture` | 160.9 | 编辑器 | 7 | 编辑器逻辑 | `dragged`, `keyDown`, `setInUse`, `toString`, `touchDown`, `touchDragged`, `touchUp` |
| `Editor_Regions` | 41.9 | 编辑器 | 6 | 编辑器逻辑 | `actionUpdateRegionID`, `addUndo`, `popUndo`, `saveRegions`, `keyDown`, `toString` |
| `Editor_ShiftArmy` | 8.1 | 编辑器 | 3 | 编辑器逻辑 | `saveArmyPosition`, `keyDown`, `toString` |
| `Editor_ShiftPort` | 11.3 | 编辑器 | 3 | 编辑器逻辑｜含: 港口 | `savePortPosition`, `keyDown`, `toString` |
| `Editor_TerrainType` | 14.8 | 编辑器 | 5 | 编辑器逻辑 | `actionSave`, `addUndo`, `popUndo`, `keyDown`, `toString` |
| `Editor_Wasteland` | 9.8 | 编辑器 | 3 | 编辑器逻辑｜含: 荒地 | `actionSave`, `keyDown`, `toString` |
| `EditorManager` | 15.4 | 其他 | 9 | 待归类；按类名 tokens 推断｜含: 编辑器 | `addEditor`, `draw`, `keyDown`, `keyUp`, `resetInUseEditors`, `setInUse`, `touchDown`, `touchDragged`, `touchUp` |
| `EditorManager$1` | 6.4 | 其他 | 0 | 内部类 → 外层 `EditorManager`（待归类；按类名 tokens 推断｜含: 编辑器）｜本类 `EditorManager$1` | （无公开业务方法或仅构造） |
| `Editors` | 8.3 | 其他 | 2 | 待归类；按类名 tokens 推断｜含: 编辑器 | `valueOf`, `values` |
| `Event_Conditions` | 3.1 | 事件 | 14 | 事件触发条件 | `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `getProvinces`, `getText`, `getValue`, `outCondition`, `setCivID`, `setCivID2` …(+4) |
| `Event_Conditions_Allies` | 8.2 | 事件 | 8 | 事件触发条件 | `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `outCondition`, `setCivID`, `setCivID2`, `updateCivIDAfterRemove` |
| `Event_Conditions_AtWar` | 7.1 | 事件 | 8 | 事件触发条件｜含: 战争 | `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `outCondition`, `setCivID`, `setCivID2`, `updateCivIDAfterRemove` |
| `Event_Conditions_CivExist` | 5.2 | 事件 | 6 | 事件触发条件 | `editViewID`, `getCivID`, `getConditionText`, `outCondition`, `setCivID`, `updateCivIDAfterRemove` |
| `Event_Conditions_ControlledByPlayer` | 5.3 | 事件 | 6 | 事件触发条件 | `editViewID`, `getCivID`, `getConditionText`, `outCondition`, `setCivID`, `updateCivIDAfterRemove` |
| `Event_Conditions_ControlsProvinces` | 10.1 | 事件 | 10 | 事件触发条件 | `editViewID`, `getCivID`, `getConditionText`, `getProvinces`, `getValue`, `outCondition`, `setCivID`, `setProvinces`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_DecisionTaken` | 14.3 | 事件 | 8 | 事件触发条件 | `editViewID`, `getCivID`, `getConditionText`, `getText`, `outCondition`, `setCivID`, `setText`, `updateCivIDAfterRemove` |
| `Event_Conditions_DefensivePact` | 7.2 | 事件 | 8 | 事件触发条件｜含: 条约 | `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `outCondition`, `setCivID`, `setCivID2`, `updateCivIDAfterRemove` |
| `Event_Conditions_Development` | 7.0 | 事件 | 7 | 事件触发条件 | `editViewID`, `getConditionText`, `getProvinces`, `getValue`, `outCondition`, `setProvinces`, `setValue` |
| `Event_Conditions_Development_Low` | 7.0 | 事件 | 7 | 事件触发条件 | `editViewID`, `getConditionText`, `getProvinces`, `getValue`, `outCondition`, `setProvinces`, `setValue` |
| `Event_Conditions_Economy` | 7.3 | 事件 | 8 | 事件触发条件｜含: 经济 | `editViewID`, `getCivID`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_Economy_Low` | 7.4 | 事件 | 8 | 事件触发条件｜含: 经济 | `editViewID`, `getCivID`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_EventChance` | 3.8 | 事件 | 5 | 事件触发条件 | `editViewID`, `getConditionText`, `getValue`, `outCondition`, `setValue` |
| `Event_Conditions_Farm` | 8.0 | 事件 | 7 | 事件触发条件｜含: 农场 | `editViewID`, `getConditionText`, `getProvinces`, `getValue`, `outCondition`, `setProvinces`, `setValue` |
| `Event_Conditions_Fort` | 8.0 | 事件 | 7 | 事件触发条件｜含: 要塞 | `editViewID`, `getConditionText`, `getProvinces`, `getValue`, `outCondition`, `setProvinces`, `setValue` |
| `Event_Conditions_Happiness` | 6.2 | 事件 | 8 | 事件触发条件｜含: 幸福度 | `editViewID`, `getCivID`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_Happiness_Low` | 6.3 | 事件 | 8 | 事件触发条件｜含: 幸福度 | `editViewID`, `getCivID`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_HaveArmy` | 9.0 | 事件 | 10 | 事件触发条件 | `editViewID`, `getCivID`, `getConditionText`, `getProvinces`, `getValue`, `outCondition`, `setCivID`, `setProvinces`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_HaveCore` | 9.2 | 事件 | 10 | 事件触发条件｜含: 核心 | `editViewID`, `getCivID`, `getConditionText`, `getProvinces`, `getValue`, `outCondition`, `setCivID`, `setProvinces`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_Ideology` | 6.7 | 事件 | 8 | 事件触发条件 | `editViewID`, `getCivID`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_Independence` | 7.2 | 事件 | 8 | 事件触发条件 | `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `outCondition`, `setCivID`, `setCivID2`, `updateCivIDAfterRemove` |
| `Event_Conditions_IsAtWar` | 5.1 | 事件 | 6 | 事件触发条件｜含: 战争 | `editViewID`, `getCivID`, `getConditionText`, `outCondition`, `setCivID`, `updateCivIDAfterRemove` |
| `Event_Conditions_IsAVassal` | 5.3 | 事件 | 6 | 事件触发条件｜含: 附庸 | `editViewID`, `getCivID`, `getConditionText`, `outCondition`, `setCivID`, `updateCivIDAfterRemove` |
| `Event_Conditions_IsAVassalOfCiv` | 8.1 | 事件 | 8 | 事件触发条件｜含: 附庸 | `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `outCondition`, `setCivID`, `setCivID2`, `updateCivIDAfterRemove` |
| `Event_Conditions_IsCapital` | 9.9 | 事件 | 10 | 事件触发条件｜含: 首都 | `editViewID`, `getCivID`, `getConditionText`, `getProvinces`, `getValue`, `outCondition`, `setCivID`, `setProvinces`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_IsPartOfHRE` | 5.2 | 事件 | 6 | 事件触发条件｜含: 神罗 | `editViewID`, `getCivID`, `getConditionText`, `outCondition`, `setCivID`, `updateCivIDAfterRemove` |
| `Event_Conditions_MilitaryAccess` | 7.3 | 事件 | 8 | 事件触发条件｜含: 通行权 | `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `outCondition`, `setCivID`, `setCivID2`, `updateCivIDAfterRemove` |
| `Event_Conditions_Neutral` | 8.0 | 事件 | 7 | 事件触发条件｜含: 中立 | `editViewID`, `getConditionText`, `getProvinces`, `getValue`, `outCondition`, `setProvinces`, `setValue` |
| `Event_Conditions_NonAggression` | 7.3 | 事件 | 8 | 事件触发条件 | `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `outCondition`, `setCivID`, `setCivID2`, `updateCivIDAfterRemove` |
| `Event_Conditions_NumberOfProvinces` | 6.9 | 事件 | 8 | 事件触发条件 | `editViewID`, `getCivID`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_NumberOfProvinces_Low` | 7.0 | 事件 | 8 | 事件触发条件 | `editViewID`, `getCivID`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_NumOfAllies` | 7.5 | 事件 | 8 | 事件触发条件 | `editViewID`, `getCivID`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_NumOfAllies_Low` | 7.6 | 事件 | 8 | 事件触发条件 | `editViewID`, `getCivID`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_NumOfNeighbors` | 14.1 | 事件 | 8 | 事件触发条件 | `editViewID`, `getCivID`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_NumOfNeighbors_Low` | 14.2 | 事件 | 8 | 事件触发条件 | `editViewID`, `getCivID`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_NumOfUnits` | 6.3 | 事件 | 8 | 事件触发条件 | `editViewID`, `getCivID`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_NumOfUnits_Low` | 6.3 | 事件 | 8 | 事件触发条件 | `editViewID`, `getCivID`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_NumOfVassals` | 6.9 | 事件 | 8 | 事件触发条件｜含: 附庸 | `editViewID`, `getCivID`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_NumOfVassals_Low` | 7.0 | 事件 | 8 | 事件触发条件｜含: 附庸 | `editViewID`, `getCivID`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_NumOfWars` | 6.8 | 事件 | 8 | 事件触发条件｜含: 战争 | `editViewID`, `getCivID`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_NumOfWars_Low` | 6.8 | 事件 | 8 | 事件触发条件｜含: 战争 | `editViewID`, `getCivID`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_OccupyProvinces` | 13.1 | 事件 | 10 | 事件触发条件 | `editViewID`, `getCivID`, `getConditionText`, `getProvinces`, `getValue`, `outCondition`, `setCivID`, `setProvinces`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_Population` | 7.6 | 事件 | 8 | 事件触发条件｜含: 人口 | `editViewID`, `getCivID`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_Population_Low` | 7.7 | 事件 | 8 | 事件触发条件｜含: 人口 | `editViewID`, `getCivID`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_Port` | 8.0 | 事件 | 7 | 事件触发条件｜含: 港口 | `editViewID`, `getConditionText`, `getProvinces`, `getValue`, `outCondition`, `setProvinces`, `setValue` |
| `Event_Conditions_Relation` | 8.2 | 事件 | 10 | 事件触发条件 | `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setCivID2`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_Relation_Low` | 8.3 | 事件 | 10 | 事件触发条件 | `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setCivID2`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_Technology` | 6.5 | 事件 | 8 | 事件触发条件｜含: 科技 | `editViewID`, `getCivID`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_Technology_Low` | 6.6 | 事件 | 8 | 事件触发条件｜含: 科技 | `editViewID`, `getCivID`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_Treasury` | 6.3 | 事件 | 8 | 事件触发条件 | `editViewID`, `getCivID`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_Treasury_Low` | 6.3 | 事件 | 8 | 事件触发条件 | `editViewID`, `getCivID`, `getConditionText`, `getValue`, `outCondition`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Conditions_Wasteland` | 8.1 | 事件 | 7 | 事件触发条件｜含: 荒地 | `editViewID`, `getConditionText`, `getProvinces`, `getValue`, `outCondition`, `setProvinces`, `setValue` |
| `Event_Conditions_WatchTower` | 8.1 | 事件 | 7 | 事件触发条件｜含: 瞭望塔 | `editViewID`, `getConditionText`, `getProvinces`, `getValue`, `outCondition`, `setProvinces`, `setValue` |
| `Event_Date` | 0.8 | 事件 | 0 | 事件相关 | （无公开业务方法或仅构造） |
| `Event_Decision` | 2.1 | 事件 | 1 | 事件相关 | `executeDecision` |
| `Event_GameData` | 13.9 | 事件 | 25 | 事件相关 | `addNewTrigger`, `checkDecisions`, `checkTriggers`, `getCivID`, `getEventDate_Since`, `getEventDate_Until`, `getEventName`, `getEventPicture`, `getEventTag`, `getEvent_PopUp` …(+15) |
| `Event_Outcome` | 3.2 | 事件 | 15 | 事件结果效果 | `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `getHoverText`, `getProvinces`, `getText`, `getValue`, `outcomeAction`, `setCivID` …(+5) |
| `Event_Outcome_AddArmy` | 26.7 | 事件 | 12 | 事件结果效果 | `canMakeAction`, `editViewID`, `getCivID`, `getConditionText`, `getHoverText`, `getProvinces`, `getValue`, `outcomeAction`, `setCivID`, `setProvinces` …(+2) |
| `Event_Outcome_AddCore` | 18.0 | 事件 | 10 | 事件结果效果｜含: 核心 | `canMakeAction`, `editViewID`, `getCivID`, `getConditionText`, `getHoverText`, `getProvinces`, `outcomeAction`, `setCivID`, `setProvinces`, `updateCivIDAfterRemove` |
| `Event_Outcome_ChangeIdeology` | 18.5 | 事件 | 10 | 事件结果效果 | `canMakeAction`, `editViewID`, `getCivID`, `getConditionText`, `getHoverText`, `getValue`, `outcomeAction`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Outcome_ChangeOwner` | 24.9 | 事件 | 12 | 事件结果效果 | `canMakeAction`, `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `getHoverText`, `getProvinces`, `outcomeAction`, `setCivID`, `setCivID2` …(+2) |
| `Event_Outcome_CivName` | 10.8 | 事件 | 7 | 事件结果效果 | `editViewID`, `getCivID`, `getConditionText`, `getHoverText`, `outcomeAction`, `run`, `setCivID` |
| `Event_Outcome_CreateVassal` | 29.0 | 事件 | 12 | 事件结果效果｜含: 附庸 | `canMakeAction`, `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `getHoverText`, `getProvinces`, `outcomeAction`, `setCivID`, `setCivID2` …(+2) |
| `Event_Outcome_DeclareWar` | 16.5 | 事件 | 10 | 事件结果效果｜含: 战争 | `canMakeAction`, `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `getHoverText`, `outcomeAction`, `setCivID`, `setCivID2`, `updateCivIDAfterRemove` |
| `Event_Outcome_DecreaseRelation` | 8.2 | 事件 | 11 | 事件结果效果 | `canMakeAction`, `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `getValue`, `outcomeAction`, `setCivID`, `setCivID2`, `setValue` …(+1) |
| `Event_Outcome_DefensivePact` | 22.7 | 事件 | 12 | 事件结果效果｜含: 条约 | `canMakeAction`, `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `getHoverText`, `getValue`, `outcomeAction`, `setCivID`, `setCivID2` …(+2) |
| `Event_Outcome_DevLevel` | 22.1 | 事件 | 12 | 事件结果效果 | `canMakeAction`, `editViewID`, `getCivID`, `getConditionText`, `getHoverText`, `getProvinces`, `getValue`, `outcomeAction`, `setCivID`, `setProvinces` …(+2) |
| `Event_Outcome_DiplomacyPoints` | 20.3 | 事件 | 10 | 事件结果效果｜含: 外交 | `canMakeAction`, `editViewID`, `getCivID`, `getConditionText`, `getHoverText`, `getValue`, `outcomeAction`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Outcome_FormCivilization` | 79.0 | 事件 | 10 | 事件结果效果 | `canMakeAction`, `editViewID`, `getCivID`, `getConditionText`, `getHoverText`, `getText`, `outcomeAction`, `setCivID`, `setText`, `updateCivIDAfterRemove` |
| `Event_Outcome_IncreaseRelation` | 20.8 | 事件 | 12 | 事件结果效果 | `canMakeAction`, `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `getHoverText`, `getValue`, `outcomeAction`, `setCivID`, `setCivID2` …(+2) |
| `Event_Outcome_Independence` | 19.3 | 事件 | 12 | 事件结果效果 | `canMakeAction`, `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `getHoverText`, `getValue`, `outcomeAction`, `setCivID`, `setCivID2` …(+2) |
| `Event_Outcome_JoinAlliance` | 33.0 | 事件 | 12 | 事件结果效果｜含: 同盟 | `canMakeAction`, `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `getHoverText`, `getText`, `outcomeAction`, `setCivID`, `setCivID2` …(+2) |
| `Event_Outcome_JoinUnion` | 14.5 | 事件 | 10 | 事件结果效果｜含: 联合 | `canMakeAction`, `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `getHoverText`, `outcomeAction`, `setCivID`, `setCivID2`, `updateCivIDAfterRemove` |
| `Event_Outcome_Leader` | 39.5 | 事件 | 10 | 事件结果效果｜含: 领袖 | `canMakeAction`, `editViewID`, `getCivID`, `getConditionText`, `getHoverText`, `getLeader`, `outcomeAction`, `setCivID`, `setLeader`, `updateCivIDAfterRemove` |
| `Event_Outcome_LeaveAlliance` | 10.5 | 事件 | 8 | 事件结果效果｜含: 同盟 | `canMakeAction`, `editViewID`, `getCivID`, `getConditionText`, `getHoverText`, `outcomeAction`, `setCivID`, `updateCivIDAfterRemove` |
| `Event_Outcome_LiberateVassal` | 11.1 | 事件 | 8 | 事件结果效果｜含: 附庸 | `canMakeAction`, `editViewID`, `getCivID`, `getConditionText`, `getHoverText`, `outcomeAction`, `setCivID`, `updateCivIDAfterRemove` |
| `Event_Outcome_MilitaryAccess` | 20.6 | 事件 | 12 | 事件结果效果｜含: 通行权 | `canMakeAction`, `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `getHoverText`, `getValue`, `outcomeAction`, `setCivID`, `setCivID2` …(+2) |
| `Event_Outcome_Money` | 19.8 | 事件 | 10 | 事件结果效果 | `canMakeAction`, `editViewID`, `getCivID`, `getConditionText`, `getHoverText`, `getValue`, `outcomeAction`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Outcome_MoveCapital` | 23.6 | 事件 | 10 | 事件结果效果｜含: 首都 | `canMakeAction`, `editViewID`, `getCivID`, `getConditionText`, `getHoverText`, `getValue`, `outcomeAction`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Outcome_MovementPoints` | 20.3 | 事件 | 10 | 事件结果效果 | `canMakeAction`, `editViewID`, `getCivID`, `getConditionText`, `getHoverText`, `getValue`, `outcomeAction`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Outcome_NonAggression` | 22.7 | 事件 | 12 | 事件结果效果 | `canMakeAction`, `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `getHoverText`, `getValue`, `outcomeAction`, `setCivID`, `setCivID2` …(+2) |
| `Event_Outcome_Occupy` | 23.7 | 事件 | 12 | 事件结果效果 | `canMakeAction`, `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `getHoverText`, `getProvinces`, `outcomeAction`, `setCivID`, `setCivID2` …(+2) |
| `Event_Outcome_PlayAsCiv` | 15.6 | 事件 | 10 | 事件结果效果 | `canMakeAction`, `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `getHoverText`, `outcomeAction`, `setCivID`, `setCivID2`, `updateCivIDAfterRemove` |
| `Event_Outcome_ProvinceName` | 12.7 | 事件 | 9 | 事件结果效果 | `canMakeAction`, `editViewID`, `getConditionText`, `getHoverText`, `getText`, `getValue`, `outcomeAction`, `setText`, `setValue` |
| `Event_Outcome_RemoveCore` | 19.3 | 事件 | 10 | 事件结果效果｜含: 核心 | `canMakeAction`, `editViewID`, `getCivID`, `getConditionText`, `getHoverText`, `getProvinces`, `outcomeAction`, `setCivID`, `setProvinces`, `updateCivIDAfterRemove` |
| `Event_Outcome_TechLevel` | 16.6 | 事件 | 10 | 事件结果效果 | `canMakeAction`, `editViewID`, `getCivID`, `getConditionText`, `getHoverText`, `getValue`, `outcomeAction`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Outcome_TriggerAnotherEvent` | 7.0 | 事件 | 7 | 事件结果效果 | `canMakeAction`, `editViewID`, `getConditionText`, `getHoverText`, `getText`, `outcomeAction`, `setText` |
| `Event_Outcome_UpdateEconomy` | 21.0 | 事件 | 12 | 事件结果效果｜含: 经济 | `canMakeAction`, `editViewID`, `getCivID`, `getConditionText`, `getHoverText`, `getProvinces`, `getValue`, `outcomeAction`, `setCivID`, `setProvinces` …(+2) |
| `Event_Outcome_UpdateEconomyOfCiv` | 25.5 | 事件 | 10 | 事件结果效果｜含: 经济 | `canMakeAction`, `editViewID`, `getCivID`, `getConditionText`, `getHoverText`, `getValue`, `outcomeAction`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Outcome_UpdateEconomyPerc` | 22.1 | 事件 | 12 | 事件结果效果｜含: 经济 | `canMakeAction`, `editViewID`, `getCivID`, `getConditionText`, `getHoverText`, `getProvinces`, `getValue`, `outcomeAction`, `setCivID`, `setProvinces` …(+2) |
| `Event_Outcome_UpdateHappiness` | 22.3 | 事件 | 12 | 事件结果效果｜含: 幸福度 | `canMakeAction`, `editViewID`, `getCivID`, `getConditionText`, `getHoverText`, `getProvinces`, `getValue`, `outcomeAction`, `setCivID`, `setProvinces` …(+2) |
| `Event_Outcome_UpdateHappinessOfCiv` | 22.6 | 事件 | 10 | 事件结果效果｜含: 幸福度 | `canMakeAction`, `editViewID`, `getCivID`, `getConditionText`, `getHoverText`, `getValue`, `outcomeAction`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Outcome_UpdatePopulation` | 28.3 | 事件 | 12 | 事件结果效果｜含: 人口 | `canMakeAction`, `editViewID`, `getCivID`, `getConditionText`, `getHoverText`, `getProvinces`, `getValue`, `outcomeAction`, `setCivID`, `setProvinces` …(+2) |
| `Event_Outcome_UpdatePopulationOfCiv` | 33.9 | 事件 | 10 | 事件结果效果｜含: 人口 | `canMakeAction`, `editViewID`, `getCivID`, `getConditionText`, `getHoverText`, `getValue`, `outcomeAction`, `setCivID`, `setValue`, `updateCivIDAfterRemove` |
| `Event_Outcome_UpdatePopulationPerc` | 27.2 | 事件 | 12 | 事件结果效果｜含: 人口 | `canMakeAction`, `editViewID`, `getCivID`, `getConditionText`, `getHoverText`, `getProvinces`, `getValue`, `outcomeAction`, `setCivID`, `setProvinces` …(+2) |
| `Event_Outcome_Wasteland` | 25.7 | 事件 | 9 | 事件结果效果｜含: 荒地 | `canMakeAction`, `editViewID`, `getConditionText`, `getHoverText`, `getProvinces`, `getValue`, `outcomeAction`, `setProvinces`, `setValue` |
| `Event_Outcome_WhitePeace` | 15.6 | 事件 | 10 | 事件结果效果｜含: 和平/和约 | `canMakeAction`, `editViewID`, `getCivID`, `getCivID2`, `getConditionText`, `getHoverText`, `outcomeAction`, `setCivID`, `setCivID2`, `updateCivIDAfterRemove` |
| `Event_PopUp` | 0.7 | 事件 | 0 | 事件相关 | （无公开业务方法或仅构造） |
| `Event_SelectCivAction` | 110.7 | 事件 | 3 | 事件相关 | `$values`, `valueOf`, `values` |
| `Event_Trigger` | 7.9 | 事件 | 2 | 事件相关 | `getTriggerOut`, `getTriggerText` |
| `Event_Type` | 3.8 | 事件 | 2 | 事件相关 | `valueOf`, `values` |
| `Events_GameData` | 1.1 | 事件 | 0 | 事件相关 | （无公开业务方法或仅构造） |
| `EventsManager` | 138.3 | 事件 | 16 | 事件管理器 | `addEvent`, `checkCondtsitionsAndTryRun`, `checkEvents`, `clearEvents`, `getEvent`, `getEventTypeText`, `getEventsSize`, `removeEvent` …(+8) |
| `EventsManager$1` | 92.7 | 事件 | 0 | 内部类 → 外层 `EventsManager`（事件管理器）｜本类 `EventsManager$1` | （无公开业务方法或仅构造） |
