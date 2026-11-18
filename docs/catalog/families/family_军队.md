# 类族：军队

顶层 **26**，含内部类合计 **26**。

| 类 | 内部? | KB | 方法 | 说明 | 关键方法 |
|---|---|---:|---:|---|---|
| `CivArmyMission` |  | 1.8 | 4 | 文明军队任务 | `action`, `canMakeAction`, `onRemove`, `prepareData` |
| `CivArmyMission_ColonizeProvince` |  | 68.5 | 7 | 文明军队任务｜含: 殖民 | `action`, `action_BuildPort`, `action_RecruitArmy`, `canMakeAction`, `generateColonizeData`, `lockTreasury` …(+1) |
| `CivArmyMission_ColonizeProvince_Just` |  | 15.5 | 4 | 文明军队任务｜含: 殖民 | `action`, `canMakeAction`, `generateColonizeData`, `lockTreasury` |
| `CivArmyMission_Expand_BuildPort` |  | 15.4 | 4 | 文明军队任务｜含: 港口 | `action`, `action_BuildPort`, `canMakeAction`, `lockTreasury_Port` |
| `CivArmyMission_ExpandNeutral_Check` |  | 6.2 | 2 | 文明军队任务｜含: 中立 | `action`, `canMakeAction` |
| `CivArmyMission_ExpandNeutralProvince` |  | 64.5 | 2 | 文明军队任务｜含: 中立 | `action`, `onRemove` |
| `CivArmyMission_NavalInvasion` |  | 68.0 | 5 | 文明军队任务 | `action`, `action_BuildPort`, `action_RecruitArmy`, `canMakeAction`, `lockTreasury_Port` |
| `CivArmyMission_PrepareForWar` |  | 6.5 | 2 | 文明军队任务｜含: 战争 | `action`, `canMakeAction` |
| `CivArmyMission_RegroupAfterRecruitment` |  | 6.1 | 2 | 文明军队任务｜含: 征兵 | `action`, `canMakeAction` |
| `CivArmyMission_RegroupAfterRecruitment_War` |  | 6.2 | 2 | 文明军队任务｜含: 征兵, 战争 | `action`, `canMakeAction` |
| `CivArmyMission_RegroupAfterRecruitment_War_Double` |  | 6.4 | 2 | 文明军队任务｜含: 征兵, 战争 | `action`, `canMakeAction` |
| `CivArmyMission_Type` |  | 6.5 | 2 | 文明军队任务 | `valueOf`, `values` |
| `MoveUnits_Line` |  | 28.9 | 17 | 行军线/移动数据 | `drawLine`, `drawLine2`, `getAngle`, `getFlipX`, `getFromProvinceID`, `getImageID` …(+11) |
| `MoveUnits_Line_Current` |  | 4.9 | 1 | 行军线/移动数据 | `updateColor` |
| `MoveUnits_Line_Highlighted` |  | 5.2 | 5 | 行军线/移动数据 | `getFlipX`, `getImageID`, `getMoveSrcX`, `updateColor`, `updateMovingLine` |
| `MoveUnits_Line_Migrate` |  | 5.9 | 5 | 行军线/移动数据｜含: 迁移 | `getFlipX`, `getImageID`, `getMoveSrcX`, `updateColor`, `updateMovingLine` |
| `MoveUnits_Line_MigrateHighlighted` |  | 3.1 | 1 | 行军线/移动数据｜含: 迁移 | `updateColor` |
| `MoveUnits_TurnData` |  | 9.7 | 8 | 行军线/移动数据 | `addMoveUnits`, `getCivID`, `getMoveUnits`, `getMoveUnitsFromProvinceSize`, `getMoveUnitsSize`, `getMoveUnits_TotalNumOfUnits` …(+2) |
| `RegroupArmy_Data` |  | 62.0 | 17 | 重整集结路径数据 | `canBeUsedInPath`, `isFriendlyProvince`, `buildPath`, `buildRoute`, `clearWas`, `continueMovingArmy` …(+11) |
| `RegroupArmy_Data_AtPeace` |  | 1.1 | 1 | 重整集结路径数据｜含: 和平/和约 | `continueMovingArmy` |
| `RegroupArmy_Data_AtWar` |  | 1.7 | 1 | 重整集结路径数据｜含: 战争 | `continueMovingArmy` |
| `RegroupArmy_Data_ExpandCheck` |  | 1.8 | 1 | 重整集结路径数据 | `continueMovingArmy` |
| `RegroupArmy_Data_Migrate` |  | 23.7 | 2 | 重整集结路径数据｜含: 迁移 | `buildPath`, `buildRoute` |
| `RegroupArmy_Data_PortToBuild` |  | 39.3 | 2 | 重整集结路径数据｜含: 港口 | `buildPath`, `buildRoute` |
| `RegroupArmy_Data_ToTheFront` |  | 3.6 | 1 | 重整集结路径数据 | `continueMovingArmy` |
| `RegroupArmy_Data_ToTheFront_Double` |  | 7.2 | 1 | 重整集结路径数据 | `continueMovingArmy` |
