# 类族：地图

顶层 **10**，含内部类合计 **93**。

| 类 | 内部? | KB | 方法 | 说明 | 关键方法 |
|---|---|---:|---:|---|---|
| `Map` |  | 49.6 | 35 | 地图管理器 | `drawMap`, `getActiveMapID`, `getFile_ActiveMap_Path`, `getFile_Map_Path`, `getIcon`, `getMapAuthor` …(+29) |
| `Map$Config` | yes | 1.1 | 2 | 内部类 → 外层 `Map`（地图管理器）｜本类 `Map$Config` | `setMapData` …(+1) |
| `Map$MapInformations` | yes | 3.7 | 10 | 内部类 → 外层 `Map`（地图管理器）｜本类 `Map$MapInformations` |  …(+10) |
| `Map$Maps` | yes | 0.8 | 1 | 内部类 → 外层 `Map`（地图管理器）｜本类 `Map$Maps` |  …(+1) |
| `Map$Mapsrr` | yes | 0.6 | 0 | 内部类 → 外层 `Map`（地图管理器）｜本类 `Map$Mapsrr` | （无公开业务方法或仅构造） |
| `Map_BG` |  | 159.0 | 30 | 地图子系统 | `addGameMap`, `disposeGameMap`, `disposeMinimapOfCivilizations`, `disposeMinimapOfCivilizations_Real`, `drawMap`, `drawMap` …(+24) |
| `Map_BG$1` | yes | 20.6 | 2 | 内部类 → 外层 `Map_BG`（地图子系统）｜本类 `Map_BG$1` | `drawMap`, `drawMapBorder` |
| `Map_BG$2` | yes | 21.7 | 2 | 内部类 → 外层 `Map_BG`（地图子系统）｜本类 `Map_BG$2` | `drawMap`, `drawMapBorder` |
| `Map_BG$3` | yes | 2.1 | 1 | 内部类 → 外层 `Map_BG`（地图子系统）｜本类 `Map_BG$3` | `drawMap` |
| `Map_BG$4` | yes | 1.5 | 1 | 内部类 → 外层 `Map_BG`（地图子系统）｜本类 `Map_BG$4` | `drawMap` |
| `Map_BG$WorldMap` | yes | 0.6 | 2 | 内部类 → 外层 `Map_BG`（地图子系统）｜本类 `Map_BG$WorldMap` | `drawMap`, `drawMapBorder` |
| `Map_BG$WorldMap_Shaders` | yes | 0.5 | 1 | 内部类 → 外层 `Map_BG`（地图子系统）｜本类 `Map_BG$WorldMap_Shaders` | `drawMap` |
| `Map_Continents` |  | 7.7 | 5 | 地图子系统 | `getColor`, `getContinentsSize`, `getName`, `getOceanContinentID`, `loadContinents` |
| `Map_Coordinates` |  | 84.6 | 37 | 地图子系统 | `centerToBox`, `centerToBox`, `centerToCapital_OrMetProvinceCivID`, `centerToCivilizationBox`, `centerToCivilizationBox`, `centerToCivilizationBox_FogOfWar` …(+31) |
| `Map_Coordinates$1` | yes | 9.1 | 2 | 内部类 → 外层 `Map_Coordinates`（地图子系统）｜本类 `Map_Coordinates$1` | `updateMapPosX`, `updateSecondSideOfMap` |
| `Map_Coordinates$2` | yes | 9.3 | 2 | 内部类 → 外层 `Map_Coordinates`（地图子系统）｜本类 `Map_Coordinates$2` | `updateMapPosX`, `updateSecondSideOfMap` |
| `Map_Coordinates$WorldMap` | yes | 0.6 | 2 | 内部类 → 外层 `Map_Coordinates`（地图子系统）｜本类 `Map_Coordinates$WorldMap` | `updateMapPosX`, `updateSecondSideOfMap` |
| `Map_Regions` |  | 6.8 | 4 | 地图子系统 | `getColor`, `getName`, `getRegionsSize`, `loadRegions` |
| `Map_Scale` |  | 47.4 | 26 | 地图子系统 | `resetScaleAnimation`, `scaleTheMap`, `updateScale`, `getCurrentScale`, `getMinimapScaleX`, `getMinimapScaleY` …(+20) |
| `Map_Scroll` |  | 51.1 | 21 | 地图子系统 | `changeAnimationPos`, `setScrollEvent_Pos`, `buildReverseDirectionX`, `buildReverseDirectionY`, `getScrollingTheMap`, `resetScrollInfo` …(+15) |
| `Map_Scroll$1` | yes | 1.0 | 1 | 内部类 → 外层 `Map_Scroll`（地图子系统）｜本类 `Map_Scroll$1` | `updateBackgroundAnimation` |
| `Map_Scroll$2` | yes | 9.1 | 1 | 内部类 → 外层 `Map_Scroll`（地图子系统）｜本类 `Map_Scroll$2` | `updateBackgroundAnimation` |
| `Map_Scroll$3` | yes | 3.8 | 1 | 内部类 → 外层 `Map_Scroll`（地图子系统）｜本类 `Map_Scroll$3` | `updateBackgroundAnimation` |
| `Map_Scroll$4` | yes | 1.1 | 1 | 内部类 → 外层 `Map_Scroll`（地图子系统）｜本类 `Map_Scroll$4` | `updateBackgroundAnimation` |
| `Map_Scroll$5` | yes | 1.5 | 1 | 内部类 → 外层 `Map_Scroll`（地图子系统）｜本类 `Map_Scroll$5` | `getNewPos` |
| `Map_Scroll$6` | yes | 1.5 | 1 | 内部类 → 外层 `Map_Scroll`（地图子系统）｜本类 `Map_Scroll$6` | `getNewPos` |
| `Map_Scroll$7` | yes | 1.5 | 1 | 内部类 → 外层 `Map_Scroll`（地图子系统）｜本类 `Map_Scroll$7` | `getNewPos` |
| `Map_Scroll$8` | yes | 1.5 | 1 | 内部类 → 外层 `Map_Scroll`（地图子系统）｜本类 `Map_Scroll$8` | `getNewPos` |
| `Map_Scroll$BackgroundAnimation` | yes | 0.5 | 1 | 内部类 → 外层 `Map_Scroll`（地图子系统）｜本类 `Map_Scroll$BackgroundAnimation` | `updateBackgroundAnimation` |
| `Map_Scroll$ReverseDirection` | yes | 0.5 | 1 | 内部类 → 外层 `Map_Scroll`（地图子系统）｜本类 `Map_Scroll$ReverseDirection` | `getNewPos` |
| `Map_TouchManager` |  | 70.1 | 22 | 地图子系统 | `actionUp_setActiveProvinceID`, `actionDown`, `actionMove`, `actionMove`, `actionMoveMap`, `actionUp` …(+16) |
| `Map_TouchManager$1` | yes | 1.5 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$1` | `getStartMovePos` |
| `Map_TouchManager$10` | yes | 1.3 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$10` | `extraAction` |
| `Map_TouchManager$11` | yes | 13.9 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$11` | `extraAction` |
| `Map_TouchManager$12` | yes | 4.8 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$12` | `extraAction` |
| `Map_TouchManager$13` | yes | 1.3 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$13` | `extraAction` |
| `Map_TouchManager$14` | yes | 5.6 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$14` | `extraAction` |
| `Map_TouchManager$15` | yes | 14.4 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$15` | `extraAction` |
| `Map_TouchManager$16` | yes | 3.5 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$16` | `extraAction` |
| `Map_TouchManager$17` | yes | 1.3 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$17` | `extraAction` |
| `Map_TouchManager$18` | yes | 1.2 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$18` | `extraAction` |
| `Map_TouchManager$19` | yes | 1.4 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$19` | `extraAction` |
| `Map_TouchManager$2` | yes | 1.5 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$2` | `getStartMovePos` |
| `Map_TouchManager$20` | yes | 4.8 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$20` | `extraAction` |
| `Map_TouchManager$21` | yes | 4.4 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$21` | `extraAction` |
| `Map_TouchManager$22` | yes | 5.5 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$22` | `extraAction` |
| `Map_TouchManager$23` | yes | 5.4 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$23` | `extraAction` |
| `Map_TouchManager$24` | yes | 5.9 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$24` | `extraAction` |
| `Map_TouchManager$25` | yes | 16.7 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$25` | `extraAction` |
| `Map_TouchManager$26` | yes | 13.3 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$26` | `extraAction` |
| `Map_TouchManager$27` | yes | 10.2 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$27` | `extraAction` |
| `Map_TouchManager$28` | yes | 7.9 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$28` | `extraAction` |
| `Map_TouchManager$29` | yes | 9.1 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$29` | `extraAction` |
| `Map_TouchManager$3` | yes | 1.5 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$3` | `getStartMovePos` |
| `Map_TouchManager$30` | yes | 6.3 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$30` | `extraAction` |
| `Map_TouchManager$31` | yes | 7.2 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$31` | `extraAction` |
| `Map_TouchManager$32` | yes | 10.6 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$32` | `extraAction` |
| `Map_TouchManager$33` | yes | 10.8 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$33` | `extraAction` |
| `Map_TouchManager$34` | yes | 6.2 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$34` | `extraAction` |
| `Map_TouchManager$35` | yes | 14.4 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$35` | `extraAction` |
| `Map_TouchManager$36` | yes | 3.5 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$36` | `extraAction` |
| `Map_TouchManager$37` | yes | 3.5 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$37` | `extraAction` |
| `Map_TouchManager$38` | yes | 3.5 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$38` | `extraAction` |
| `Map_TouchManager$39` | yes | 3.5 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$39` | `extraAction` |
| `Map_TouchManager$4` | yes | 1.5 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$4` | `getStartMovePos` |
| `Map_TouchManager$40` | yes | 3.5 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$40` | `extraAction` |
| `Map_TouchManager$41` | yes | 3.5 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$41` | `extraAction` |
| `Map_TouchManager$42` | yes | 1.1 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$42` | `extraAction` |
| `Map_TouchManager$43` | yes | 6.9 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$43` | `extraAction` |
| `Map_TouchManager$44` | yes | 4.0 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$44` | `extraAction` |
| `Map_TouchManager$45` | yes | 4.0 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$45` | `extraAction` |
| `Map_TouchManager$46` | yes | 2.4 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$46` | `extraAction` |
| `Map_TouchManager$47` | yes | 4.0 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$47` | `extraAction` |
| `Map_TouchManager$48` | yes | 2.4 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$48` | `extraAction` |
| `Map_TouchManager$49` | yes | 1.1 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$49` | `extraAction` |
| `Map_TouchManager$5` | yes | 1.1 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$5` | `getNewPos` |
| `Map_TouchManager$50` | yes | 9.1 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$50` | `extraAction` |
| `Map_TouchManager$51` | yes | 1.1 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$51` | `extraAction` |
| `Map_TouchManager$52` | yes | 1.9 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$52` | `extraAction` |
| `Map_TouchManager$53` | yes | 1.1 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$53` | `extraAction` |
| `Map_TouchManager$54` | yes | 18.8 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$54` | `extraAction` |
| `Map_TouchManager$55` | yes | 187.3 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$55` | `extraAction` |
| `Map_TouchManager$56` | yes | 3.3 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$56` | `extraAction` |
| `Map_TouchManager$57` | yes | 1.1 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$57` | `extraAction` |
| `Map_TouchManager$6` | yes | 1.1 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$6` | `getNewPos` |
| `Map_TouchManager$7` | yes | 1.1 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$7` | `getNewPos` |
| `Map_TouchManager$8` | yes | 1.1 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$8` | `getNewPos` |
| `Map_TouchManager$9` | yes | 3.7 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$9` | `extraAction` |
| `Map_TouchManager$ExtraAction` | yes | 0.5 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$ExtraAction` | `extraAction` |
| `Map_TouchManager$ReverseDirection` | yes | 0.5 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$ReverseDirection` | `getStartMovePos` |
| `Map_TouchManager$ReverseDirection2` | yes | 0.5 | 1 | 内部类 → 外层 `Map_TouchManager`（地图子系统）｜本类 `Map_TouchManager$ReverseDirection2` | `getNewPos` |
| `PreDefined_Borders_Data_GameData` |  | 5.3 | 7 | 预生成边界等 | `addProvinceID`, `getCapitalProvinceID`, `getProvinceID`, `getProvincesSize`, `hasProvinceID`, `removeProvinceID` …(+1) |
| `PreDefined_Borders_GameData` |  | 2.4 | 4 | 预生成边界等 | `addData`, `getData`, `getDataSize`, `removeData` |
