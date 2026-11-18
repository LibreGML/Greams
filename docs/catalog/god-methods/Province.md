# `Province` 方法索引

- 文件: `.../lukasz/Province.smali`
- 大小: **819.9 KB**
- 分组: 实体
- 说明: 单省运行时实体
- 方法数: **286**；字段数: **72**
- super: `Ljava/lang/Object;`

## 字段（摘录）

- `MAX_DEFENSIVE_POSITION` : `I`
- `STABILITY_ARMY` : `F`
- `STABILITY_CORE` : `F`
- `STABILITY_DISEASE` : `F`
- `STABILITY_HAPPINESS` : `F`
- `STABILITY_HAPPINESS_MIN` : `F`
- `STABILITY_HAPPINESS_MIN_LOWER_STABILITY` : `F`
- `STABILITY_LARGEST_GROUP` : `F`
- `STABILITY_OCCUPIED` : `F`
- `STABILITY_PERC_OF_TOTAL` : `F`
- `STABILITY_REV_RISK` : `F`
- `belowZeroPosX` : `Z`
- `bordersWithEnemy` : `Z`
- `drawArmy` : `Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;`
- `drawCities` : `Z`
- `drawNuclearExplosion` : `Z`
- `drawProvince` : `Z`
- `fPopulationGrowthRate` : `F`
- `fProvinceStability` : `F`
- `iAdministrationCost` : `F`
- `iArmyWasRecruited` : `B`
- `iBasin` : `I`
- `iCenterX` : `I`
- `iCenterY` : `I`
- `iCitiesSize` : `I`
- `iCivRegionID` : `I`
- `iContinentID` : `I`
- `iDangerLevel` : `I`
- `iDangerLevel_WithArmy` : `I`
- `iFromCivID` : `I`
- `iIncome_Production` : `F`
- `iIncome_Taxation` : `F`
- `iMaxX` : `I`
- `iMaxY` : `I`
- `iMinX` : `I`
- `iMinY` : `I`
- `iNeighboringProvincesSize` : `I`
- `iNeighboringSeaProvincesSize` : `I`
- `iNumOfNeighboringNeutralProvinces` : `B`
- `iPointsSize` : `I`
- `iPotential` : `I`
- `iProvinceBordersLandByLandSize` : `I`
- `iProvinceBordersLandBySeaSize` : `I`
- `iProvinceBordersSeaBySeaSize` : `I`
- `iProvinceID` : `I`
- `iRecruitableArmyPoints` : `I`
- `iRegionID` : `I`
- `iShiftX` : `I`
- `iShiftY` : `I`
- `iTerrainTypeID` : `I`
- `iTranslateProvincePosX` : `I`
- `iWondersSize` : `I`
- `lCities` : `Ljava/util/List;`
- `lColorTime` : `J`
- `lMountains` : `Ljava/util/List;`
- `lNeighboringProvinces` : `Ljava/util/List;`
- `lNeighboringSeaProvinces` : `Ljava/util/List;`
- `lPointsX` : `Ljava/util/List;`
- `lPointsY` : `Ljava/util/List;`
- `lProvinceBordersLandByLand` : `Ljava/util/List;`
- `lProvinceBordersLandBySea` : `Ljava/util/List;`
- `lProvinceBordersSeaBySea` : `Ljava/util/List;`
- `lProvince_ArmyBoxes` : `Ljava/util/List;`
- `lWonders` : `Ljava/util/List;`
- `provinceBG` : `Lage/of/civilizations2/jakowski/lukasz/Image;`
- `provincePort` : `Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;`
- `sProvinceName` : `Ljava/lang/String;`
- `saveProvinceData` : `Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;`
- `seaProvince` : `Z`
- `updateColorTime` : `Z`
- `viewBool` : `Z`
- `was` : `Z`

## 方法（按簇）

### get* (87)

- `getBalance_LastTurn()I`
- `getBasinID()I`
- `getBelowZero()Z`
- `getBordersWithEnemy()Z`
- `getCenterX()I`
- `getCenterX_Real()I`
- `getCenterY()I`
- `getCenterY_Real()I`
- `getCitiesSize()I`
- `getCity(I)Lage/of/civilizations2/jakowski/lukasz/City;`
- `getCivID()I`
- `getCivID(I)I`
- `getCivRegionID()I`
- `getCivsSize()I`
- `getContinent()I`
- `getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;`
- `getDangerLevel()I`
- `getDevelopmentLevel()F`
- `getDrawCities()Z`
- `getDrawNuclearExplosion()Z`
- `getDrawProvince()Z`
- `getEconomy()I`
- `getGrowthRate_NewColony()F`
- `getGrowthRate_Population()F`
- `getGrowthRate_Population_WithFarm()F`
- `getGrowthRate_Population_WithFarm_WithTerrain()F`
- `getIsCapital()Z`
- `getIsCapital_Just()Z`
- `getIsNotSuppliedForXTurns()I`
- `getIsPartOfHolyRomanEmpire()Z`
- `getIsSupplied()Z`
- `getLevelOfArmoury()I`
- `getLevelOfBunker()I`
- `getLevelOfFarm()I`
- `getLevelOfFort()I`
- `getLevelOfLibrary()I`
- `getLevelOfNuclearReactor()I`
- `getLevelOfPort()I`
- `getLevelOfShaft()I`
- `getLevelOfSupply()I`
- `getLevelOfWatchTower()I`
- `getLevelOfWorkshop()I`
- `getMaxX()I`
- `getMaxY()I`
- `getMinX()I`
- `getMinY()I`
- `getMountain(I)Lage/of/civilizations2/jakowski/lukasz/Mountain;`
- `getMountainsSize()I`
- `getName()Ljava/lang/String;`
- `getNeighbooringProvinceOfCivWasLost()I`
- `getNeighboringProvinces(I)I`
- `getNeighboringProvincesSize()I`
- `getNeighboringSeaProvinces(I)I`
- `getNeighboringSeaProvincesSize()I`
- `getPointsSize()I`
- `getPointsX(I)I`
- `getPointsY(I)I`
- `getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;`
- `getPortShiftX()I`
- `getPortShiftY()I`
- `getPotential()I`
- `getPotentialModified(I)I`
- `getPotentialRegion()I`
- `getProvinceBG()Lage/of/civilizations2/jakowski/lukasz/Image;`
- `getProvinceBordersLandByLand()Ljava/util/List;`
- `getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;`
- `getProvinceBordersLandByLandSize()I`
- `getProvinceBordersLandBySea()Ljava/util/List;`
- `getProvinceBordersLandBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;`
- `getProvinceBordersLandBySeaSize()I`
- `getProvinceBordersLandBySea_ID(I)I`
- `getProvinceBordersSeaBySea()Ljava/util/List;`
- `getProvinceBordersSeaBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;`
- `getProvinceBordersSeaBySeaSize()I`
- `getProvinceID()I`
- `getRegion()I`
- `getRegion_NumOfProvinces()I`
- `getSeaProvince()Z`
- `getShiftX()I`
- `getShiftY()I`
- `getTerrainTypeID()I`
- `getTranslateProvincePosX()I`
- `getTrueOwnerOfProvince()I`
- `getUpdateView_SetCivID(I)Ljava/util/List;`
- `getWasConquered()I`
- `getWonder(I)Lage/of/civilizations2/jakowski/lukasz/Wonder;`
- `getWonderSize()I`

### draw* (57)

- `draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V`
- `drawArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V`
- `drawArmyOptimizationRegions(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V`
- `drawArmyPosition(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V`
- `drawArmyPositionSea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V`
- `drawArmyPosition_Active(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V`
- `drawArmySeaProvincesLevels(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V`
- `drawArmy_SetUpArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V`
- `drawArmy_SetUpArmy_Sea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V`
- `drawBuildings(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V`
- `drawDanger(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V`
- `drawGrowthRate(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V`
- `drawHappiness(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V`
- `drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawNuclearExplosion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawOccupiedProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawPotential(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V`
- `drawProvinceBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorderInStartGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorderInStartGame_Wasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_CivilizationView(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_ContinentMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_ContinentModeWasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_ContinentMode_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_CreateRandomGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_CreateRandomGameWasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_LoadAI_RTO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_LoadAI_RTO_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_NextPlayerTurn(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_OnlyCivilizationBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_OnlyCivilizationBorder_Capitals(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_OnlyCivilizationBorder_Capitals_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_OnlyCivilizationBorder_Capitals_FogOfWarDiscoveryWasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_PeaceTreaty(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_PeaceTreaty_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_PeaceTreaty_FogOfWarDiscovery_Only_CivilizationBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_PeaceTreaty_Only_CivilizationBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_PeaceTreaty_Wasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_PrintAMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_RegionMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_RegionModeWasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_RegionMode_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_TerrainMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_Timeline(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceBorder_Timeline_Only_CivilizationBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawProvinceFlag_CreateRandomGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V`
- `drawProvinceInfo(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V`
- `drawProvincePort(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V`
- `drawProvince_ActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawStartingMoney(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V`
- `drawTechnologyLevels(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V`
- `drawWasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V`
- `drawWastelandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawWastelandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V`
- `drawWastelandProvince_PeaceTreaty(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `draw_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V`

### set* (45)

- `setBG(Lcom/badlogic/gdx/graphics/Pixmap;)V`
- `setBasin(I)V`
- `setBordersWithEnemy(Z)V`
- `setCivID(IZ)V`
- `setCivID(IZZ)V`
- `setCivID_Just(I)V`
- `setCivID_LoadScenario(I)V`
- `setCivID_PeaceTreaty(IZZ)V`
- `setCivRegionID(I)V`
- `setCivilizationProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V`
- `setCivilizationProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V`
- `setContinent(I)V`
- `setDangerLevel(I)V`
- `setDevelopmentLevel(F)V`
- `setDrawCities(Z)V`
- `setDrawNuclearExplosion(Z)V`
- `setDrawProvince(Z)V`
- `setEconomy(I)V`
- `setFromCivID(I)V`
- `setGrowthRate_Population(F)V`
- `setIsCapital(Z)V`
- `setIsNotSuppliedForXTurns(I)V`
- `setIsPartOfHolyRomanEmpire(Z)V`
- `setLevelOfArmoury(I)V`
- `setLevelOfBunker(I)V`
- `setLevelOfFarm(I)V`
- `setLevelOfFort(I)V`
- `setLevelOfLibrary(I)V`
- `setLevelOfNuclearReactor(I)V`
- `setLevelOfPort(I)V`
- `setLevelOfShaft(I)V`
- `setLevelOfSupply(I)V`
- `setLevelOfWatchTower(I)V`
- `setLevelOfWorkshop(I)V`
- `setName(Ljava/lang/String;)V`
- `setNeighbooringProvinceOfCivWasLost(B)V`
- `setPoints(Ljava/util/List;Ljava/util/List;)V`
- `setPopulationData(Lage/of/civilizations2/jakowski/lukasz/Province_Population;)V`
- `setPotential(I)V`
- `setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `setRegion(I)V`
- `setTerrainTypeID(I)V`
- `setTranslateProvincePosX(I)V`
- `setTrueOwnerOfProvince(I)V`
- `setWasConquered(B)V`

### army/move* (30)

- `addArmy(II)V`
- `build_ArmyInAnotherProvince()V`
- `getArmy(I)I`
- `getArmyCanRetreat(I)Z`
- `getArmyCivID(I)I`
- `getArmySize()I`
- `getArmyWidth(I)I`
- `getArmy_Obj(I)Lage/of/civilizations2/jakowski/lukasz/Province_Army;`
- `getDangerLevel_WithArmy()I`
- `getPotentialModified_WAR_MoveFrom(I)I`
- `getPotentialModified_WAR_MoveTo(I)I`
- `getProvinceArmyBoxes()Ljava/util/List;`
- `initProvinceArmyBoxes()V`
- `removeArmy(I)V`
- `removeArmy_ID(I)V`
- `removeCapitalCityIcon()V`
- `removeCiv(I)V`
- `removeNeighboringProvince(I)V`
- `removeNeighboringSeaProvince(I)V`
- `removeProvinceBorder(I)V`
- `setDangerLevel_WithArmy(I)V`
- `setProvinceArmyBoxes(Ljava/util/List;)V`
- `setShiftArmyX(I)V`
- `setShiftArmyY(I)V`
- `updateArmy(I)V`
- `updateArmy(II)V`
- `updateArmyWidth(I)V`
- `updateArmyWidth_ALL()V`
- `updateDrawArmy()V`
- `updateDrawArmy_ShowsIDs()V`

### other (17)

- `access$000(Lage/of/civilizations2/jakowski/lukasz/Province;)I`
- `addCity(Lage/of/civilizations2/jakowski/lukasz/City;)V`
- `addCiv(II)V`
- `addDangerLevel(I)V`
- `addMountain(Lage/of/civilizations2/jakowski/lukasz/Mountain;)V`
- `addNeighboringProvince(I)V`
- `addNeighboringSeaProvince(I)V`
- `addPotential(I)V`
- `addProvinceBorder(ILjava/util/List;Ljava/util/List;)V`
- `addWonder(Lage/of/civilizations2/jakowski/lukasz/Wonder;)V`
- `buildProvinceBG(Z)V`
- `buildProvinceCore()V`
- `clearCities()V`
- `disposeProvinceBG()V`
- `resetArmies(I)V`
- `resetArmies_NewGame(I)V`
- `resetCore()V`

### happiness* (15)

- `getHappiness()F`
- `getProvinceStability()F`
- `setHappiness(F)V`
- `setProvinceStability(F)V`
- `updateProvinceStability()V`
- `updateStability_Score_Army()F`
- `updateStability_Score_Core()F`
- `updateStability_Score_Disease()F`
- `updateStability_Score_Farm()F`
- `updateStability_Score_Happiness()F`
- `updateStability_Score_Library()F`
- `updateStability_Score_Occupied()F`
- `updateStability_Score_Population()F`
- `updateStability_Score_RevRisk()F`
- `updateStability_Score_Workshop()F`

### update/check* (10)

- `checkLandBySeaProvinceBorders()V`
- `checkSeaBySeaProvinceBorders()V`
- `updateIsNotSuppliedForXTurns()V`
- `updateIsNotSuppliedForXTurns_Twice()V`
- `updateNewColony()V`
- `updateProvinceBorder()V`
- `updateProvinceBorder_OwnerAnimation()V`
- `updateProvinceEconomyLosses(IF)V`
- `updateProvincePopulationLosses(IF)V`
- `updateProvincePort(II)V`

### colonize/neutral* (6)

- `getNumOfNeighboringNeutralProvinces()I`
- `getWasteland()I`
- `getWastelandColor(F)Lcom/badlogic/gdx/graphics/Color;`
- `incNumOfNeighboringNeutralProvinces()V`
- `setNumOfNeighboringNeutralProvinces(I)V`
- `setWasteland(I)V`

### revolt* (5)

- `addSupportRebels(Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;)Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels_Help;`
- `civSupportsRebels(I)Z`
- `getRevolutionaryRisk()F`
- `runSupportRebels()V`
- `setRevolutionaryRisk(F)V`

### combat* (4)

- `getDefensivePosition()I`
- `getWasAttacked()I`
- `setWasAttacked(I)V`
- `updateDefensivePosition()V`

### recruit* (4)

- `buildRecruitableArmyPoints()V`
- `getArmyWasRecruited()I`
- `getRecruitableArmyPoints()I`
- `setArmyWasRecruited(I)V`

### load/save* (3)

- `loadProvinceBG()V`
- `loadProvinceInfo()V`
- `loadProvinceInfo(Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;)V`

### fog* (2)

- `setProvinceColor_FoG_Discovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `updateFogOfWar(I)V`

### predicate* (1)

- `isOccupied()Z`

