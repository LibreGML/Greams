# `AI` 方法索引

- 文件: `.../lukasz/AI.smali`
- 大小: **477.2 KB**
- 分组: AI
- 说明: AI 调度入口 turnOrders*
- 方法数: **25**；字段数: **18**
- super: `Ljava/lang/Object;`

## 字段（摘录）

- `REBUILD_PERSONALITY` : `I`
- `STATUS_QUO_NO_PROGRESS` : `I`
- `STATUS_QUO_TOO_LONG` : `I`
- `STATUS_QUO_TURNS` : `I`
- `STATUS_QUO_TURNS_NO_ONE_ATTACKED` : `I`
- `DANGER_EXTRA_AT_WAR` : `I`
- `MIN_NUM_OF_RIVALS` : `I`
- `NUM_OF_CIVS_IN_THE_GAME` : `I`
- `PLAYABLE_PROVINCES` : `I`
- `doneLoadingOrders` : `Z`
- `expandNeutral` : `Lage/of/civilizations2/jakowski/lukasz/AI$Expand;`
- `iLoadingTurnActionsOfCivID` : `I`
- `iNeutralProvincesWithSeaAccessSize` : `I`
- `iNumOfColonizedProvinces` : `I`
- `lAI_Styles` : `Ljava/util/List;`
- `lFrontLines` : `Ljava/util/List;`
- `lNeutralProvincesWithSeaAccess` : `Ljava/util/List;`
- `lWastelandProvincesWithSeaAccess` : `Ljava/util/List;`

## 方法（按簇）

### colonize/neutral* (6)

- `addNeutralProvincesWithSeaAccess(I)V`
- `addWastelandProvincesWithSeaAccess(I)V`
- `expandToNeutralProvinces_Out(IZ)Z`
- `expandToNeutralProvinces_Run(I)V`
- `resetNeutralProvincesWithSeaAccess()V`
- `resetWastelandProvincesWithSeaAccess()V`

### get* (6)

- `getAIStyle_ByTag(Ljava/lang/String;)I`
- `getAI_Style(I)Lage/of/civilizations2/jakowski/lukasz/AI_Style;`
- `getAllNeighboringProvincesInRange_Clear(IIIZZLjava/util/List;Ljava/util/List;)Ljava/util/List;`
- `getAllNeighboringProvincesInRange_OnlyOwn_Clear(IIIZZLjava/util/List;Ljava/util/List;)Ljava/util/List;`
- `getAllNeighboringProvincesInRange_Regroup_ForNavalInvasion(IIILjava/util/List;Ljava/util/List;)Ljava/util/List;`
- `getLoadingTurnActionsOfCivID()I`

### other (6)

- `buildAIData()V`
- `buildProvinceData(I)V`
- `build_RebuildPersonality()V`
- `prepareForWar_BordersWithEnemy(II)Z`
- `prepareForWar_BordersWithEnemy_Just(II)Z`
- `turnOrders()V`

### update/check* (3)

- `checkCurrentWars_LookingForPeace()V`
- `updateExpand()V`
- `updateMinRivals()V`

### recruit* (2)

- `getAllNeighboringProvincesInRange_Recruit(IIIZZLjava/util/List;Ljava/util/List;)Ljava/util/List;`
- `getAllNeighboringProvincesInRange_RecruitAtWAr(IIIZZLjava/util/List;Ljava/util/List;)Ljava/util/List;`

### army/move* (1)

- `getAllNeighboringProvincesInRange_WithArmyToRegroup(IIIZZLjava/util/List;Ljava/util/List;I)Ljava/util/List;`

### set* (1)

- `setLoadingTurnActionsOfCivID(I)V`

