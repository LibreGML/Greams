# `Game_Scenarios` 方法索引

- 文件: `.../lukasz/Game_Scenarios.smali`
- 大小: **454.0 KB**
- 分组: 剧本
- 说明: 剧本列表加载
- 方法数: **54**；字段数: **22**
- super: `Ljava/lang/Object;`

## 字段（摘录）

- `PERC_OF_POPULATION_REQUIRED_TO_GET_A_CORE` : `F`
- `SCENARIOS_SIZE` : `I`
- `iScenario_DiseasesDeathRate_Modifier` : `F`
- `iScenario_EconomyGrowthRate_Modifier` : `F`
- `iScenario_NeutralArmy` : `I`
- `iScenario_PopulationGrowthRate_Modifier` : `F`
- `iScenario_StartingArmyInCapitals` : `I`
- `iScenario_StartingEconomy` : `I`
- `iScenario_StartingMoney` : `I`
- `iScenario_StartingPopulation` : `I`
- `isInternal` : `Ljava/util/List;`
- `lScenarios_Age` : `Ljava/util/List;`
- `lScenarios_Authors` : `Ljava/util/List;`
- `lScenarios_CivNum` : `Ljava/util/List;`
- `lScenarios_Day` : `Ljava/util/List;`
- `lScenarios_Month` : `Ljava/util/List;`
- `lScenarios_Names` : `Ljava/util/List;`
- `lScenarios_TagsList` : `Ljava/util/List;`
- `lScenarios_Wikis` : `Ljava/util/List;`
- `lScenarios_Year` : `Ljava/util/List;`
- `sActiveScenarioTag` : `Ljava/lang/String;`
- `sScenario_ActivePallet_TAG` : `Ljava/lang/String;`

## 方法（按簇）

### get* (17)

- `getNumOfCivs(I)I`
- `getScenarioAge(I)I`
- `getScenarioAuthor(I)Ljava/lang/String;`
- `getScenarioDay(I)I`
- `getScenarioIsInternal(I)Z`
- `getScenarioMonth(I)I`
- `getScenarioName(I)Ljava/lang/String;`
- `getScenarioTag(I)Ljava/lang/String;`
- `getScenarioWiki(I)Ljava/lang/String;`
- `getScenarioYear(I)I`
- `getScenario_ActivePallet_TAG()Ljava/lang/String;`
- `getScenario_DiseasesDeathRate_Modifier()F`
- `getScenario_EconomyGrowthRate_Modifier()F`
- `getScenario_PopulationGrowthRate_Modifier()F`
- `getScenario_StartingEconomy()I`
- `getScenario_StartingMoney()I`
- `getScenario_StartingPopulation()I`

### set* (14)

- `setNumOfCivs(II)V`
- `setScenarioAge(II)V`
- `setScenarioAuthor(ILjava/lang/String;)V`
- `setScenarioDay(II)V`
- `setScenarioMonth(II)V`
- `setScenarioName(ILjava/lang/String;)V`
- `setScenarioYear(II)V`
- `setScenario_ActivePallet_TAG(Ljava/lang/String;)V`
- `setScenario_DiseasesDeathRate_Modifier(F)V`
- `setScenario_EconomyGrowthRate_Modifier(F)V`
- `setScenario_PopulationGrowthRate_Modifier(F)V`
- `setScenario_StartingEconomy(I)V`
- `setScenario_StartingMoney(I)V`
- `setScenario_StartingPopulation(I)V`

### load/save* (13)

- `loadArmiesData()V`
- `loadCivilizations(Z)Ljava/util/List;`
- `loadCivilizationsChangeGoverment()V`
- `loadCivilizationsLoadGame(Ljava/util/List;)Ljava/util/List;`
- `loadCivilizationsManPower()V`
- `loadCivilizationsSupportRate()V`
- `loadCivilizations_RandomGame()Ljava/util/List;`
- `loadCoresData()V`
- `loadCoresData_Editor()V`
- `loadDiplomacyData(Z)V`
- `loadEventsData()V`
- `loadGame_Scenarios(Z)V`
- `loadProvincesData(Z)V`

### other (5)

- `buildProvincePopulationAndEconomy(ZZ)V`
- `disableFillTheMap()V`
- `disposeScenarios()V`
- `editScenario(I)V`
- `enableFillTheMap()V`

### army/move* (2)

- `getScenario_StartingArmyInCapitals()I`
- `setScenario_StartingArmyInCapitals(I)V`

### colonize/neutral* (2)

- `getScenario_NeutralArmy()I`
- `setScenario_NeutralArmy(I)V`

### diplomacy* (1)

- `buildDiplomacy()V`

