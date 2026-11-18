# `Player` 方法索引

- 文件: `.../lukasz/Player.smali`
- 大小: **96.6 KB**
- 分组: 玩家
- 说明: 本地玩家状态
- 方法数: **24**；字段数: **32**
- super: `Ljava/lang/Object;`

## 字段（摘录）

- `fBefore_Scale` : `F`
- `flagOfCivilization` : `Lage/of/civilizations2/jakowski/lukasz/Image;`
- `fogOfWar` : `Ljava/util/List;`
- `iACTIVE_VIEW_MODE` : `I`
- `iBefore_ActiveProvince` : `I`
- `iBefore_PosX` : `I`
- `iBefore_PosY` : `I`
- `iTurnEconomy` : `I`
- `iTurnPopulation` : `I`
- `noOrders` : `Z`
- `savePlayer` : `Lage/of/civilizations2/jakowski/lukasz/Save_Player_GameData;`
- `statistics_Civ_GameData` : `Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;`
- `visible_Alliance` : `I`
- `visible_Alliances` : `Z`
- `visible_Army` : `Z`
- `visible_BuildingsConstructed` : `Z`
- `visible_BuildingsMore` : `Z`
- `visible_CensusOfProvince` : `I`
- `visible_CivInfo` : `I`
- `visible_ConqueredProvinces` : `Z`
- `visible_HRE` : `Z`
- `visible_History` : `Z`
- `visible_MapModes` : `Z`
- `visible_Outliner` : `Z`
- `visible_Rank` : `Z`
- `visible_RecruitedArmy` : `Z`
- `visible_Technology` : `Z`
- `visible_Tribute` : `Z`
- `visible_VictoryConditions` : `Z`
- `visible_WarStats` : `I`
- `visible_Wars` : `Z`
- `visible_WorldPop` : `Z`

## 方法（按簇）

### other (8)

- `addMetCivilization(Z)V`
- `buildMetProvincesAndCivs()V`
- `buildMetProvinces_BasedOnDistance()V`
- `buildPlayerScore()F`
- `disposePlayersFlag()V`
- `initMetCivilization(Z)V`
- `initMetProvince(Z)V`
- `tryLoadStats()V`

### get* (6)

- `getCivID()I`
- `getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;`
- `getMetAlliance(I)Z`
- `getMetCivilization(I)Z`
- `getMetProvince(I)Z`
- `getNoOrders()Z`

### fog* (4)

- `getFogOfWar(I)Z`
- `initFogOfWar()V`
- `setFogOfWar(IZ)V`
- `setFogOfWar_ExtraCheck(IZ)V`

### set* (4)

- `setCivID(I)V`
- `setMetCivilization(IZ)V`
- `setMetProvince(IZ)V`
- `setNoOrders(Z)V`

### load/save* (2)

- `loadPlayersFlag()V`
- `loadPlayersFlag(Lage/of/civilizations2/jakowski/lukasz/Image;)V`

