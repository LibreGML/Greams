# `Game_NextTurnUpdate` 方法索引

- 文件: `.../lukasz/Game_NextTurnUpdate.smali`
- 大小: **216.0 KB**
- 分组: 核心
- 说明: 每回合经济/人口等结算
- 方法数: **67**；字段数: **19**
- super: `Ljava/lang/Object;`

## 字段（摘录）

- `AVERAGE_MANPOWER_PERTURN` : `F`
- `BUDGET_MAX` : `I`
- `DEFENSIVE_POSITION_MILITARY_UPKEEP_PER_TUR` : `F`
- `DEV_MAX` : `F`
- `EMPLOYEMENT_PER_ECONOMY` : `F`
- `EMPLOYEMENT_PER_ECONOMY_OLD` : `F`
- `INFLATION_MODIFIER` : `F`
- `INFLATION_PEAK_VALUE` : `I`
- `INFLATION_STARTS_AT` : `F`
- `LEAGUE_BUDGET` : `F`
- `LEAGUE_MANPOWER_PERTURN` : `F`
- `PERCENTAGE_OF_INCOME_FOR_LORD_DEFAULT` : `I`
- `PERCENTAGE_OF_INCOME_FOR_LORD_MAX` : `I`
- `PERCENTAGE_OF_INCOME_FOR_LORD_MIN` : `I`
- `PERCENTAGE_OF_INCOME_FOR_WAR_REPARATIONS` : `F`
- `PROVINCE_NUM_MAX` : `I`
- `TAXES_INFLUENCE_POP` : `F`
- `TAXES_INFLUENCE_PRODUCTION` : `F`
- `TECH_MAX` : `F`

## 方法（按簇）

### get* (44)

- `getAdministrationCost_Update(I)F`
- `getAdministration_Capital(I)I`
- `getBalance(I)I`
- `getBalanceLong(I)J`
- `getBalance_UpdateBudget_Prepare(I)V`
- `getDistanceFromAToB_PercOfMax(II)F`
- `getDistanceFromCapital(II)F`
- `getDistanceFromCapital_PercOfMax(II)F`
- `getEmploymentPopulation(I)I`
- `getExpenses(I)F`
- `getExpenses_Budget(I)F`
- `getGoodsSpendings(II)F`
- `getIncome(I)F`
- `getIncome_Buff_WarReparations(I)F`
- `getIncome_Debuff_IsVassal(I)F`
- `getIncome_Debuff_WarReparations(I)F`
- `getIncome_FromVassalsOfCiv(I)F`
- `getIncome_TaxesLevel(I)F`
- `getIncome_TaxesLevel_Production(I)F`
- `getIncome_TaxesLevel_Taxation(I)F`
- `getIncome_Vassals(II)F`
- `getInflation(I)F`
- `getInflationPeakValue()I`
- `getInflationPerc(I)F`
- `getInterestCost(I)F`
- `getInvestmentsSpendings(II)F`
- `getInvestments_Total(II)F`
- `getLevelOfCity(III)I`
- `getMilitarySpendings(II)I`
- `getMilitaryUpkeep(II)F`
- `getMilitaryUpkeep(III)F`
- `getMilitaryUpkeep_Total(I)F`
- `getProvinceAdministration(II)F`
- `getProvinceIncomeAndExpenses_Total(I)F`
- `getProvinceIncome_Production(I)F`
- `getProvinceIncome_Production(IIF)F`
- `getProvinceIncome_Taxation(I)F`
- `getProvinceIncome_Taxation(IIF)F`
- `getProvince_EmploymentPopulation(I)I`
- `getProvince_UnemploymentPopulation(I)I`
- `getResearchSpendings(II)F`
- `getUnemploymentPopulation(I)I`
- `getVassalizationMoney(I)F`
- `getWarReparationsMoney(I)F`

### update/check* (10)

- `updateCities()V`
- `updateCities(I)V`
- `updateCivsNumOfProvinceWithoutOccupied()V`
- `updateCivs_ChangeGoverment()V`
- `updateCivs_ManPower()V`
- `updateCivs_Money()V`
- `updateCivs_SupportRate()V`
- `updateInflationPeakValue()V`
- `updatePlayableProvinces()V`
- `updateSpendingsOfCiv(II)V`

### other (5)

- `buildLevelsOfCities()V`
- `buildLevelsOfCities(I)V`
- `runCommerce()V`
- `runCountNumOfProvince()V`
- `taxIncome_Modifier(I)F`

### happiness* (3)

- `getHappinessChange_ByTaxation(I)F`
- `getHappinessChange_ByTaxation_Occupied(I)F`
- `updateProvinceStability()V`

### recruit* (3)

- `getMilitaryUpkeep_WithAllRecruitmentsInProcess(III)F`
- `getMilitaryUpkeep_WithAllRecruitmentsInProcess_Disband(III)F`
- `updateCivRecruitableArmy(I)V`

### combat* (2)

- `getMilitaryUpkeep_DefensivePosition(I)F`
- `getMilitaryUpkeep_WithoutDefensivePosition(III)F`

