# `Game_Action` 方法索引

- 文件: `.../lukasz/Game_Action.smali`
- 大小: **2027.1 KB**
- 分组: 核心
- 说明: 回合状态机、移动、战斗、征兵、迷雾工具方法
- 方法数: **134**；字段数: **46**
- super: `Ljava/lang/Object;`

## 字段（摘录）

- `BASE_COST_OF_MOVE_CAPITAL_PERC` : `F`
- `BASE_COST_OF_MOVE_CAPITAL_POP_OF_CAPITAL_PERC` : `F`
- `DEFENSE_BONUS_LOSS_PER_TURN_FOR_NOT_SUPPLIED_PROVINCE` : `F`
- `DICE_ROLL_BONUS` : `F`
- `DISBAND_PERC_POP` : `F`
- `MAX_RELATION` : `I`
- `MAX_RELATION_DIFF` : `F`
- `MIN_RELATION` : `I`
- `MIN_RELATION_DIFF` : `F`
- `MOVE_CAPITAL_HAPPINESS_CHANGE_NEW` : `F`
- `MOVE_CAPITAL_HAPPINESS_CHANGE_OLD` : `F`
- `MOVE_CAPITAL_LOCK_MOVING_FOR_X_TURNS` : `I`
- `NOT_SUPPLIED_PROVINCE_LOOSE_CONTROL` : `I`
- `NOT_SUPPLIED_PROVINCE_STRAVE_START_NUM_OF_TURNS` : `I`
- `NOT_SUPPLIED_PROVINCE_STRAVE__PERC_PER_TURN` : `F`
- `POINTS_PER_ENEMY` : `F`
- `RECRUITABLE_ARMY_NEUTRAL_POP` : `F`
- `RECRUITABLE_ARMY_OTHER_POP` : `F`
- `RECRUITABLE_ARMY_OTHER_POP_ALLIANCE` : `F`
- `RECRUITABLE_ARMY_OTHER_POP_ATWAR` : `F`
- `RECRUITABLE_ARMY_OWN_POP` : `F`
- `RECRUIT_DEVELOPMENT_CHANGE` : `F`
- `RECRUIT_ECONOMY_CHANGE` : `F`
- `RECRUIT_HAPPINESS_CHANGE` : `F`
- `RISE_REVOLT_RISK_HAPPINESS` : `F`
- `RISE_REVOLT_RISK_STABILITY` : `F`
- `SPAWN_REVOLUTIONARY_ARMY_MIN` : `I`
- `SPAWN_REVOLUTIONARY_ARMY_RANDOM` : `I`
- `TECHNOLGY_LEVEL_BONUS_ARMY` : `I`
- `UPRISE_IGNITE` : `F`
- `UPRISE_MIN` : `F`
- `gameEnded` : `Z`
- `SHOW_REPORT` : `Z`
- `activeTurnAction` : `Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;`
- `currentMoveUnits` : `Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;`
- `diceAggressors` : `I`
- `diceAggressorsCivID` : `I`
- `diceDefenders` : `I`
- `diceDefendersCivID` : `I`
- `eRTO_START` : `I`
- `eRTO_START2` : `I`
- `eRTO_START3` : `I`
- `iPlayerAttack_ShowArmyInProvinceID` : `I`
- `turnActions` : `Lage/of/civilizations2/jakowski/lukasz/Turn_Actions;`
- `turnNewTurn` : `Lage/of/civilizations2/jakowski/lukasz/Turn_NewTurn;`
- `updatePosOfMap_NewTurn` : `Z`

## 方法（按簇）

### army/move* (27)

- `accessLost_MoveArmyToClosetsProvince(II)V`
- `accessLost_MoveArmyToClosetsProvince(III)V`
- `controlsArmyInProvince(I)Z`
- `controlsArmyInProvince(II)Z`
- `costOfMoveArmy(III)I`
- `disbandArmy(III)V`
- `getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;`
- `getIsFreeMove(III)Z`
- `getMovementPoints_BaseValue(I)I`
- `getMovementPoints_FromCivSize(I)I`
- `getMovementPoints_FromTechnology(I)I`
- `hasArmyInProvince(II)Z`
- `hasArmyInProvince_AllianceID(II)Z`
- `isMovingArmyFromProvince(I)Z`
- `isMovingArmyFromProvince(II)Z`
- `lostProvince_MoveArmyToNeighbouringProvince(III)Z`
- `modifierMovementPoints_CivID(I)F`
- `modifieraArmyCosts_CivID(I)F`
- `moveArmy(IIIIZZ)Z`
- `moveCapital(II)Z`
- `moveCapital_CanMove(I)Z`
- `moveCapital_Cost(I)I`
- `moveRegroupArmy()V`
- `resetCurrentMoveUnits()V`
- `updateCivsMovementPoints()V`
- `updateCivsMovementPoints(I)V`
- `updateDisbandSlider()V`

### other (19)

- `abadonProvince(II)Z`
- `accessLost_UpdateArmies(II)V`
- `destroyBuildingInBattle(I)V`
- `endOfInputOrders()V`
- `hideAllProvinceActionViews()V`
- `hideAllViews()V`
- `hideExtraViews()V`
- `inputOrders()V`
- `modifierBattleBonus_CivID(I)F`
- `modifierManPower_CivID(I)F`
- `nextTurn()V`
- `resetTurnData()V`
- `showDefeatView(I)Z`
- `showNextPlayerTurnView()Z`
- `showNextPlayerTurnView_NextTurn()Z`
- `startNewTurn()V`
- `startNewTurn_End()V`
- `startUprising()V`
- `tryToTakeNexTurn()V`

### revolt* (13)

- `canAnyCivUprise(I)Z`
- `getModifiedRevolutionsRisk(I)F`
- `getSpawnRebels_CivRebelsTag(I)Ljava/lang/String;`
- `getSpawnRebels_CivRebelsTag_GetID(I)I`
- `getSpawnRevolutionaryArmy_MAX(II)I`
- `rebels_DeclareIndependence(I)V`
- `rebels_DeclareIndependence_Civ(IILjava/util/List;Z)V`
- `revoltDeclareIndependence()V`
- `spawnRevolution(ILjava/util/List;Ljava/util/List;I)V`
- `spawnRevolutionInProvinceID(IIILjava/util/List;Ljava/util/List;)V`
- `spawnRevolution_UpdateCivData(IILjava/lang/String;)V`
- `spawnRevolutionaryArmy(III)V`
- `updateProvinceAfterRevolution(I)V`

### turnMoves* (13)

- `turnMoves()V`
- `turnMoves_IsACombatMove(II)Z`
- `turnMoves_MoveCurrentArmy()V`
- `turnMoves_MoveCurrentArmy_AttackResult(III)Z`
- `turnMoves_MoveCurrentArmy_AttackResult_SEA(III)Z`
- `turnMoves_MoveCurrentArmy_Attack_DefensiveModifiers(I)F`
- `turnMoves_MoveCurrentArmy_Attack_NumOfDefenders(I)I`
- `turnMoves_MoveCurrentArmy_Attack_NumOfDefeningUnits(I)I`
- `turnMoves_MoveCurrentArmy_Attack_NumOfDefeningUnits_IsDefender(II)Z`
- `turnMoves_MoveCurrentArmy_Attack_NumOfDefeningUnits_SEA(II)I`
- `turnMoves_MoveCurrentArmy_Attack_OffensiveModifiers(I)F`
- `turnMoves_MoveCurrentArmy_JustMove()V`
- `turnMoves_UpdatePlayersFogOfWar(I)V`

### update/check* (12)

- `checkGameEnd()V`
- `checkMessages_PauseRTS()V`
- `updateHRE_Elections()V`
- `updateHRE_VotesFor()V`
- `updateInGame_Date()V`
- `updateInGame_ProvinceInfo()V`
- `updateInGame_ProvinceInfo_PosX()V`
- `updateIsSupplied()V`
- `updateIsSupplied_Twice()V`
- `updateMetCivilization(I)V`
- `updatePlayerData()V`
- `updatePopulationLosses(II)V`

### combat* (9)

- `diceRollBonus(Z)F`
- `getAttackersBonusFromTechnology(I)F`
- `getDefenseBonusFromTechnology(I)F`
- `getDefenseBonusLossPerTurnForNotSuppliedProvince(I)F`
- `getMoveArmyModifiers_Attackers_Hover(III)Ljava/util/List;`
- `getMoveArmyModifiers_Defenders_Hover(II)Ljava/util/List;`
- `moveArmyModifiers_Attackers(III)I`
- `moveArmyModifiers_Defenders(II)I`
- `rollDices()V`

### diplomacy* (9)

- `getDiplomacyPoints_BaseValue(I)I`
- `getDiplomacyPoints_FromEnemies(I)I`
- `getDiplomacyPoints_FromRank(I)I`
- `getDiplomacyPoints_FromTechnology(I)I`
- `getUpdateCivsDiplomacyPoints(I)I`
- `updateCivsDiplomacyPoints()V`
- `updateCivsDiplomacyPoints(I)V`
- `updateCivsDiplomacyPoints_StartTheGame()V`
- `updateRelations()V`

### recruit* (8)

- `getRecruitableArmy(I)I`
- `getRecruitableArmy(II)I`
- `getRecruitableArmyAutoplan(I)I`
- `getRecruitableArmyAutoplan(II)I`
- `recruitArmy(III)V`
- `recruitArmyInstantly(III)V`
- `updateRecruitSlider()V`
- `updateRecruitSlider_Instantly()V`

### buildRank* (6)

- `buildRank_Positions()V`
- `buildRank_Score()V`
- `buildRank_Score(I)V`
- `buildRank_Score_Economy(I)I`
- `buildRank_Score_Population(I)I`
- `buildRank_Score_Prestige(I)I`

### happiness* (4)

- `getCivHappiness(I)F`
- `getCivHappiness_WithoutOccupied(I)F`
- `updateCivsHappiness()V`
- `updateCivsHappiness(I)V`

### buildFog* (3)

- `buildFogOfWar(I)V`
- `buildFogOfWar_CivID(II)V`
- `buildFogOfWar_WatchTower(II)V`

### colonize/neutral* (3)

- `canColonizieNeutral_Tech(II)Z`
- `canColonizieWasteland_BorderOrArmy(II)Z`
- `canColonizieWasteland_Tech(II)Z`

### migrate* (3)

- `canMigrate_MovementPoints(I)Z`
- `migrateFromTo(III)V`
- `migrateToProvince(IIIZ)Z`

### get* (2)

- `getActiveTurnState()Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;`
- `getNumOfPlayersInGame()I`

### load/save* (1)

- `loadActivePlayerData()V`

### predicate* (1)

- `isEmperorInTheGame()Z`

### set* (1)

- `setActiveTurnState(Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;)V`

