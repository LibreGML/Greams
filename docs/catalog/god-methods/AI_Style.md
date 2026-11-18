# `AI_Style` 方法索引

- 文件: `.../lukasz/AI_Style.smali`
- 大小: **3160.6 KB**
- 分组: AI
- 说明: AI 风格基类：战争评分/移动/宣战
- 方法数: **112**；字段数: **23**
- super: `Ljava/lang/Object;`

## 字段（摘录）

- `MIN_ARMY_TO_ATTACK` : `I`
- `MIN_TURNS_TO_ABANDON_USELESS_PROVINCE` : `I`
- `PERSONALITY_FORGIVNESS_DEFAULT` : `F`
- `PERSONALITY_FORGIVNESS_RANDOM` : `I`
- `PERSONALITY_GOODS_RANDOM` : `I`
- `PERSONALITY_INVESTMENTS_RANDOM` : `I`
- `PERSONALITY_MIN_AGGRESION_DEFAULT` : `F`
- `PERSONALITY_MIN_AGGRESION_RANDOM` : `I`
- `PERSONALITY_MIN_DIFFERENCE_IN_DEVELOPMENT_TO_TECHNOLOGY_DEFAULT` : `F`
- `PERSONALITY_MIN_DIFFERENCE_IN_DEVELOPMENT_TO_TECHNOLOGY_RANDOM` : `I`
- `PERSONALITY_MIN_HAPPINESS_DEFAULT` : `I`
- `PERSONALITY_MIN_HAPPINESS_RANDOM` : `I`
- `PERSONALITY_MIN_MILITARY_SPENDINGS_DEFAULT` : `F`
- `PERSONALITY_MIN_MILITARY_SPENDINGS_RANDOM` : `I`
- `PERSONALITY_PLUNDER_LOCK` : `I`
- `PERSONALITY_PLUNDER_MIN` : `I`
- `PERSONALITY_PLUNDER_RANDOM` : `I`
- `PERSONALITY_RESEARCH_RANDOM` : `I`
- `RIVAL_MIN_TURNS` : `I`
- `TAG` : `Ljava/lang/String;`
- `USE_OF_BUDGET_FOR_SPENDINGS` : `I`
- `USE_OF_BUDGET_FOR_SPENDINGS_RANDOM` : `I`
- `armyOverBudget` : `Z`

## 方法（按簇）

### other (31)

- `abandonOrReleaseAsVassalProvinces(ILjava/util/List;Z)Z`
- `abandonOrReleaseAsVassalProvinces_ReleaseVassal(Ljava/util/List;Ljava/util/List;I)I`
- `alliesAtWar(I)Z`
- `assimilateProvinces(I)V`
- `assimilateProvincesPlayer(I)V`
- `buildBuildings(I)V`
- `buildBuildings_ForPlayer(I)V`
- `buildStartingBuildings(I)V`
- `buildStartingBuildings_Port(I)V`
- `build_GetMoney(I)J`
- `changeTypeOfIdeology(I)V`
- `civilize(I)Z`
- `clearWas()V`
- `clearWas(Ljava/util/List;)V`
- `doHaveAVisionInProvince(II)Z`
- `hostFestivals(II)V`
- `manageBudget(I)V`
- `manageVassalsTribute(I)V`
- `plunderProvince(II)Z`
- `plunderProvincePlayer(II)Z`
- `prepareForWar(IF)V`
- `prepareForWar2(I)V`
- `prepareForWar_Regroup(ILjava/util/List;Ljava/util/List;)V`
- `relocateLostCapital(I)V`
- `relocateLostCapital_ProvinceScore(II)I`
- `respondToEvents(I)V`
- `respondToMessages(I)V`
- `tryToExpandBeforeCivilize(I)Z`
- `turnOrders(I)V`
- `turnOrdersEssential(I)V`
- `useTechnologyPoints(I)V`

### army/move* (29)

- `armyOverBudget_Disband(I)V`
- `armyOverBudget_Disband_AtWar(I)F`
- `canMove(I)Z`
- `canMoveArmyToProvinceID(II)Z`
- `getEnemyArmyInNeighbooringProvinces_ArmyOnlyAtWar(II)I`
- `getEnemyArmyInNeighbooringProvinces_Total(II)I`
- `getEnemyArmyInNeighbooringSeaProvinces_Total(II)I`
- `getEnemyArmy_ExtraMovedArmy(I)I`
- `getMovingArmyToProvinceID(II)I`
- `getRegroupArmy_NumOfUnits(II)I`
- `getValue_PositionOfArmy(ILjava/util/List;IIFFIIIF)F`
- `moveAtWar(I)V`
- `moveAtWarPlayer(I)V`
- `moveAtWar_AtSea(I)V`
- `moveAtWar_AtSea_FromProvinceID_Score(IIIZI)F`
- `moveAtWar_AtSea_RunMissions(I)I`
- `moveAtWar_AtSea_ToProvinceID(II)V`
- `moveAtWar_AtSea_ToProvinceID_Score(IIZ)F`
- `moveAtWar_BordersWithEnemyCheck(II)Z`
- `moveAtWar_NumOfNotCoveredNeighEnemyProvinces(II)I`
- `moveAtWar_Regroup(ILjava/util/List;Ljava/util/List;)V`
- `prepareForWar_MoveReadyArmies(I)V`
- `regroupArmy_AtPeace(I)V`
- `regroupArmy_AtPeace_AtSea(ILage/of/civilizations2/jakowski/lukasz/AI_RegoupArmyData;)Z`
- `regroupArmy_AtPeace_InAnotherTerritory(ILage/of/civilizations2/jakowski/lukasz/AI_RegoupArmyData;)Z`
- `regroupArmy_AtPeace_InOwnTerritory_WithoutDanger(ILage/of/civilizations2/jakowski/lukasz/AI_RegoupArmyData;Z)Z`
- `regroupArmy_AtWar_AtSea(ILage/of/civilizations2/jakowski/lukasz/AI_RegoupArmyData;)Z`
- `regroupArmy_AtWar_WithoutDanger(ILage/of/civilizations2/jakowski/lukasz/AI_RegoupArmyData;)Z`
- `regroupArmy_PrepareForWar_WithoutDanger(ILage/of/civilizations2/jakowski/lukasz/AI_RegoupArmyData;)Z`

### diplomacy* (18)

- `diplomacyActions(I)V`
- `diplomacyActions_Ally(I)V`
- `diplomacyActions_BuildCivsInRange(I)V`
- `diplomacyActions_CircledVassals(I)V`
- `diplomacyActions_CivsInRange(I)Ljava/util/List;`
- `diplomacyActions_DeclareWar(I)V`
- `diplomacyActions_DeclareWar_Budgets(IZ)I`
- `diplomacyActions_DeclareWar_Score(IIFFF)F`
- `diplomacyActions_FormCiv(I)V`
- `diplomacyActions_FriendCiv(I)V`
- `diplomacyActions_FriendCiv_Continuous(I)V`
- `diplomacyActions_FriendlyCiv_Score(IILage/of/civilizations2/jakowski/lukasz/AI_CivsInRange;FF)F`
- `diplomacyActions_InfluencedCiv_Update(I)V`
- `diplomacyActions_IsInfluenced(II)Z`
- `diplomacyActions_RivalCiv(I)V`
- `diplomacyActions_RivalCiv_IsRival(II)Z`
- `diplomacyActions_RivalCiv_Score(IILage/of/civilizations2/jakowski/lukasz/AI_CivsInRange;FF)F`
- `diplomacyActions_RivalCiv_Update(I)V`

### get* (10)

- `getAllNeighboringProvincesInRange_RegroupAtWar(IIILjava/util/List;Ljava/util/List;)Ljava/util/List;`
- `getAllNeighboringProvincesInRange_RegroupPrepareForWAr(IIILjava/util/List;Ljava/util/List;)Ljava/util/List;`
- `getMinMilitarySpendings(I)F`
- `getMoney_MinReserve(I)J`
- `getMoney_MinReserve_LockTreasury(I)J`
- `getPotential_BasedOnNeighboringProvs(II)I`
- `getPotential_BasedOnNeighboringProvs(III)I`
- `getPotential_BasedOnNeighboringProvs(IILjava/util/List;)I`
- `getPrepareForWar_TurnsLeft(II)I`
- `getPrepareForWar_TurnsLeft_BasedOnNeighboors(II)I`

### recruit* (8)

- `canMoveAndRecruit(I)Z`
- `canRecruit(II)Z`
- `getRecruitableArmy(II)I`
- `moveAtWar_Recruit(ILjava/util/List;Ljava/util/List;Z)V`
- `moveAtWar_RecruitPlayer(ILjava/util/List;Ljava/util/List;Z)V`
- `prepareForWar_Recruit(ILjava/util/List;Ljava/util/List;Z)V`
- `recruitMilitary_MinSpendings(I)V`
- `regroupArmyAfterRecruitment(I)V`

### update/check* (5)

- `checkBalanceOfProvinces_Tribal(I)V`
- `checkPeaceTreaties(I)V`
- `updateLiberityDesire(I)V`
- `updateMilitarySpendings(I)V`
- `updateSentMessages(I)V`

### colonize/neutral* (4)

- `colonizeProvinces(I)V`
- `colonizeProvinces_ExtendColony(I)Z`
- `colonizeProvinces_ExtendColony_Score(II)I`
- `colonizeProvinces_FoundNewColony(I)V`

### predicate* (3)

- `canCivlize(I)Z`
- `isRivalOfMyRival(II)Z`
- `isUncivilzed(I)Z`

### combat* (2)

- `defendFromSeaInvasion(I)V`
- `moveAtWar_AttackTo_Score(II)F`

### happiness* (1)

- `happinessCrisis(I)V`

### revolt* (1)

- `prepareArmyForRevolution(I)V`

