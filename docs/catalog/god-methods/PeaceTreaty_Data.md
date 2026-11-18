# `PeaceTreaty_Data` 方法索引

- 文件: `.../lukasz/PeaceTreaty_Data.smali`
- 大小: **700.3 KB**
- 分组: 和约
- 说明: 和约数据/绘制/要求｜含: 和平/和约
- 方法数: **20**；字段数: **10**
- super: `Ljava/lang/Object;`

## 字段（摘录）

- `VASSALIZE_COST` : `F`
- `WAR_REPARATIONS_COST` : `F`
- `drawProvinceOwners` : `Ljava/util/List;`
- `iBrushCivID` : `I`
- `iLastTakenID` : `I`
- `iPlayerTurnID` : `I`
- `iProvincesLeftToTakeSize` : `I`
- `peaceTreatyGameData` : `Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;`
- `provincesLeftToTake` : `Ljava/util/List;`
- `scoreCountDefenders` : `Z`

## 方法（按簇）

### other (15)

- `AI_UseVictoryPoints()V`
- `AI_UseVictoryPoints_CivID(II)V`
- `AI_UseVictoryPoints_CivID_Score(IIF)F`
- `AI_UseVictoryPoints_CivID_TakeVassal(IIZ)V`
- `addProvincesLeftToTake(I)V`
- `initPeaceTreatyData(ILjava/util/List;Ljava/util/List;Z)V`
- `makeDemand_Province(III)Z`
- `makeDemand_Province(IIIZ)Z`
- `prepareDemansVassalsData()V`
- `preparePeaceTreatyToSend(I)V`
- `prepareProvinceData(Z)V`
- `takeProvince(III)Z`
- `takeReleaseVassal(IIII)I`
- `takeVassalize(III)I`
- `takeWarReparations(III)I`

### get* (4)

- `getProposal_Negative(Z)I`
- `getProposal_Positive(Z)I`
- `getVassalization_Cost(I)I`
- `getWarReparation_Cost(I)I`

### army/move* (1)

- `removeProvincesLeftToTake(I)V`

