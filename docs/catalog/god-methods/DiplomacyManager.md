# `DiplomacyManager` 方法索引

- 文件: `.../lukasz/DiplomacyManager.smali`
- 大小: **1215.2 KB**
- 分组: 外交
- 说明: 外交关系与战争列表总管
- 方法数: **152**；字段数: **80**
- super: `Ljava/lang/Object;`

## 字段（摘录）

- `ASSIMILATE_NUM_OF_TURNS_MAX` : `I`
- `ASSIMILATE_NUM_OF_TURNS_MIN` : `I`
- `BASE_COST_OF_ASSIMILATE` : `I`
- `BASE_COST_OF_FESTIVAL` : `I`
- `CALL_TO_ARMS_RELATION_ACCEPT` : `I`
- `CALL_TO_ARMS_RELATION_DENY` : `I`
- `CALL_TO_ARMS_RELATION_DENY_INSULT` : `I`
- `COLONIZE_NEW_COLONY_BONUS` : `I`
- `COST_ABADON` : `I`
- `COST_ALLIANCE_LEAVE` : `I`
- `COST_ASSIMILATE` : `I`
- `COST_CALL_TO_ARMS` : `I`
- `COST_CIVILIZE` : `I`
- `COST_FESTIVAL` : `I`
- `COST_INVEST` : `I`
- `COST_INVEST_DEVLOPMENT` : `I`
- `COST_INVEST_ECONOMY_PER_GOLD` : `F`
- `COST_INVEST_ECONOMY_PER_GOLD2` : `F`
- `COST_INVEST_ECONOMY_PER_GOLD_DEVELOPMENT` : `F`
- `COST_OFFER_ALLIANCE` : `I`
- `COST_OFFER_DECREASERELATIONS` : `I`
- `COST_OFFER_DEFENSIVEPACT` : `I`
- `COST_OFFER_FORMUNION` : `I`
- `COST_OFFER_GIFT` : `I`
- `COST_OFFER_IMPROVERELATIONS` : `I`
- `COST_OFFER_LIBERATEAVASSAL` : `I`
- `COST_OFFER_MILITARYACCESS_ASK` : `I`
- `COST_OFFER_MILITARYACCESS_GIVE` : `I`
- `COST_OFFER_NONAGGRESSIONPACT` : `I`
- `COST_OFFER_PROCLAIMINDEPENDENCE` : `I`
- `COST_OFFER_SUPPORTREBELS` : `I`
- `COST_OFFER_TRADEREQUEST` : `I`
- `COST_OFFER_VASSALIZATION` : `I`
- `COST_TAKE_LOAN` : `I`
- `COST_TRANSFER_CONTROL` : `I`
- `COST_ULTIMATUM` : `I`
- `COST_WAR_PREPARATIONS` : `I`
- `DIPLOMAT_COST_ALLIANCE` : `I`
- `DIPLOMAT_COST_DEFENSIVE_PACT` : `I`
- `DIPLOMAT_COST_FRIENDLY_CIV` : `I`
- `DIPLOMAT_COST_GUARANTEE` : `I`
- `DIPLOMAT_COST_MILITARYACCESS` : `I`
- `DIPLOMAT_COST_NONAGGRESSION` : `I`
- `DIPLOMAT_COST_VASSAL` : `I`
- `FESTIVAL_NUM_OF_TURNS` : `I`
- `FRIENDLY_MIN_RELATION` : `I`
- `GIFT_MAX_PERC_OF_TREASURY` : `F`
- `GIFT_REFUSE_OPINION_CHANGE` : `I`
- `GIFT_REMOVE_RECEIVED_GIFT_INFO_TURNS` : `I`
- `GOLDEN_AGE_EVERY_X_TURNS` : `I`
- `HATED_INSULT` : `I`
- `HATED_MIN_RELATION` : `I`
- `HATED_WAR` : `I`
- `IMPROVERELATIONS_MAX_NUM_OF_TURS` : `I`
- `INSULT_DECREASE_RELATIONS` : `I`
- `INVEST_NUM_OF_TURNS` : `I`
- `INVEST_NUM_OF_TURNS_DEVLOPMENT` : `I`
- `LOAN_MAX_DURATION` : `I`
- `LOAN_MAX_NUM_OF_LOANS` : `I`
- `LOAN_MAX_VALUE_OF_INCOME` : `F`
- `LOAN_MIN_DURATION` : `I`
- `OUDATED_RELATIONS` : `I`
- `OUDATED_RELATIONS_MAX` : `I`
- `OUDATED_RELATIONS_MIN` : `I`
- `PEACETREATY_DEFAULT` : `I`
- `PEACETREATY_MAX_DURATION` : `I`
- `PEACETREATY_MIN_DURATION` : `I`
- `PLUNDER_INCOME_HIGH_REV_RISK_MODIFIER` : `F`
- `PLUNDER_INCOME_MULTIPLY` : `F`
- `RELEASED_VASSAL_MIN_OPINION` : `I`
- `SUPPORT_REBELS_ASSIMILATE_COST_MODIFIER` : `F`
- `SUPPORT_REBELS_ASSIMILATE_PERC` : `F`
- `SUPPORT_REBELS_ASSIMILATE_PERC_EXTRA` : `F`
- `SUPPORT_REBELS_NUM_OF_TURNS_MAX` : `I`
- `SUSPEND_DIPLOMATIC_RELATIONS_MAX` : `I`
- `SUSPEND_DIPLOMATIC_RELATIONS_MIN` : `I`
- `ULTIMATUM_REQUIRED_RELATIONS` : `I`
- `ULTIMATUM_TRUCE_TURNS` : `I`
- `WAR_PREPARATIONS_REFUSE_OPINION_CHANGE` : `I`
- `WAR_REPARATIONS_LENGTH` : `I`

## 方法（按簇）

### other (94)

- `JoinAllianceWar(I)Z`
- `acceptAllianceProposal(II)V`
- `acceptCallToArms(III)V`
- `acceptGift(III)V`
- `acceptGuaranteeIndependence_Ask(III)V`
- `acceptMilitaryAccess_Ask(III)V`
- `acceptMilitaryAccess_Give(III)V`
- `acceptNonAggressionPact(III)V`
- `acceptOfferVasalization(III)V`
- `acceptPeaceTreaty(ILjava/lang/String;)V`
- `acceptPrepareForWar(IIIII)V`
- `acceptTradeRequest(IILage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;)V`
- `acceptTransferControl(III)V`
- `acceptUltimatum(IILage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;)V`
- `acceptUnionProposal(II)V`
- `addAssimilate(III)Z`
- `addFestival(II)Z`
- `addFestivalInAllProvince(I)V`
- `assimilateCost(II)I`
- `buildFriendlyCivs()V`
- `callToArmsListOfCivs(II)Ljava/util/List;`
- `callToArmsListOfCivs_AI(II)Ljava/util/List;`
- `callToArms_Denied_SendInsult(III)V`
- `changeGovernmentType(II)Z`
- `civilizeCiv(I)Z`
- `controlOccupiedProvinceFrom(II)V`
- `declarationOfIndependeceByVassal(II)V`
- `declineAllianceProposal(II)V`
- `declineCallToArms(III)V`
- `declineGift(III)V`
- `declineGuaranteeIndependence_Ask(III)V`
- `declineMilitaryAccess_Ask(III)V`
- `declineMilitaryAccess_Give(III)V`
- `declineNonAggressionPact(III)V`
- `declineOfferVasalization(III)V`
- `declinePeaceTreaty(ILjava/lang/String;)V`
- `declinePrepareForWar(IIIII)V`
- `declineTradeRequest(IILage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;)V`
- `declineTransferControl(III)V`
- `declineUnionProposal(II)V`
- `festivalCost(I)I`
- `goldenAge_Military(I)V`
- `goldenAge_Prosperity(I)V`
- `goldenAge_Science(I)V`
- `invest(III)Z`
- `investDevelopment(III)Z`
- `invest_DevelopmentByGold(II)F`
- `invest_EconomyByGold(II)I`
- `invest_MaxDevelopment_Gold(II)I`
- `invest_MaxEconomy(II)I`
- `invest_MaxEconomy_Gold(II)I`
- `joinAWar(III)V`
- `kickFromAlliance(II)V`
- `leaveAlliance(I)V`
- `liberateAVassal(II)V`
- `plunder(III)V`
- `plunderEfficiency(III)F`
- `plunderEfficiency_RequiredMAX(II)F`
- `plunderProvince(III)V`
- `plunderProvinceIncome(III)I`
- `plunderTreasuryIncome(III)I`
- `plunder_LossesDevelopment_Perc(III)F`
- `plunder_LossesEconomy_Perc(III)F`
- `plunder_Population(III)I`
- `refuseUltimatum(IILage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;)V`
- `refuseUltimatum_AcceptWar(II)V`
- `repayLoan(II)V`
- `sendAllianceProposal(II)V`
- `sendCallToArms(III)V`
- `sendGift(III)V`
- `sendGiftResources(III)V`
- `sendGuaranteeIndependence_AskProposal(III)V`
- `sendMilitaryAccess_AskProposal(III)V`
- `sendMilitaryAccess_GiveProposal(III)V`
- `sendNonAggressionProposal(III)V`
- `sendOfferVasalizationProposal(III)V`
- `sendPeaceTreaty(ZILage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;)V`
- `sendPrepareForWar(IIIII)V`
- `sendTechPointsMessages()V`
- `sendTradeRequest(IILage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;)Z`
- `sendTransferControl(III)V`
- `sendUltimatum(IILage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;I)Z`
- `sendUncivilizedMessages()V`
- `sendUnionProposal(II)V`
- `takeLoan(III)V`
- `takeLoan_InterestRate(III)F`
- `takeLoan_MaxValue(I)I`
- `takeLoan_MinValue()I`
- `takeResources(III)V`
- `takeResources_InterestRate(III)F`
- `takeResources_MaxValue(I)I`
- `vassalDeclareIndependence_Fine(II)V`
- `vassalDeclareIndependence_War(II)V`
- `worldRecations(III)V`

### get* (23)

- `getAllianceProposal_Negative(II)I`
- `getAllianceProposal_Negative_CivIsAtWar(I)I`
- `getAllianceProposal_Negative_Distance(II)I`
- `getAllianceProposal_Negative_EmbassyClosed(II)I`
- `getAllianceProposal_Negative_Goverment(II)I`
- `getAllianceProposal_Negative_HRE(II)I`
- `getAllianceProposal_Negative_HaveACore(II)I`
- `getAllianceProposal_Negative_IsAVassal(II)I`
- `getAllianceProposal_Negative_Opinion(II)I`
- `getAllianceProposal_Negative_PowerfulAllies(II)I`
- `getAllianceProposal_Positive(II)I`
- `getAllianceProposal_Positive_Goverment(II)I`
- `getAllianceProposal_Positive_HRE(II)I`
- `getAllianceProposal_Positive_Opinion(II)I`
- `getAllianceProposale_CivStrength(II)I`
- `getCivIsInRange(II)Z`
- `getCivIsInRange_War(II)Z`
- `getCostOfCurrentDiplomaticActions(I)I`
- `getCostOfCurrentDiplomaticActionsUpdate(I)I`
- `getCostOfFriendlyCivs(I)I`
- `getLikelihoodScore(I)F`
- `getNumOfCivsInTheGame()I`
- `getTradeRequest_LikelihoodOfSuccess_Text()Ljava/lang/String;`

### revolt* (7)

- `changeGovernmentType_Revolution(I)V`
- `getSUPPORT_REBELS_ASSIMILATE_PERC(I)F`
- `plunder_RevolutionaryRisk(III)F`
- `supportRebels(I)Lage/of/civilizations2/jakowski/lukasz/SupportRebels_Data;`
- `supportRebels(IIII)Z`
- `supportRebels_MaxGold(Ljava/util/List;)I`
- `supportRebels_Provinces(II)Ljava/util/List;`

### colonize/neutral* (6)

- `colonizeWastelandProvince(II)Z`
- `getColonizeCost(II)I`
- `getColonizeCost_AI(I)I`
- `getColonizeCost_ContinentAndRegion_Modifier(II)F`
- `getColonizeCost_Movement(II)I`
- `getColonizeCost_OwnNeighboringProvincesModifier(II)F`

### combat* (5)

- `acceptDefensivePact(III)V`
- `declineDefensivePact(III)V`
- `getNuclearAttackCost(II)I`
- `getNuclearAttackCost2(II)I`
- `sendDefensivePactProposal(III)V`

### diplomacy* (5)

- `decreaseRelation(III)Z`
- `getDecreaseRelation(II)F`
- `getImproveRelation(II)F`
- `improveRelation(II)Z`
- `runRelationsOutDated()V`

### happiness* (4)

- `festivalHappinessPerTurn(I)F`
- `festivalHappinessPerTurn_NeighboringProvinces()F`
- `plunder_Happiness(III)F`
- `sendLowHappiness()V`

### update/check* (4)

- `checkCivsHatedCivilizations_IfStillExsits()V`
- `updateFriendlyCiv(II)V`
- `updateGoldenAge()V`
- `updatePlayersFriendlyCivs()V`

### predicate* (3)

- `canTakeMoreLoans(I)Z`
- `canTakeMoreResources(I)Z`
- `isBorderedWith_IncludeSea(II)Z`

### army/move* (1)

- `canMoveToNaighbooringProvince(II)Z`

