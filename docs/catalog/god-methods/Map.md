# `Map` 方法索引

- 文件: `.../lukasz/Map.smali`
- 大小: **49.6 KB**
- 分组: 地图
- 说明: 地图管理器
- 方法数: **35**；字段数: **23**
- super: `Ljava/lang/Object;`

## 字段（摘录）

- `GAME_CRASHED_LOADED_MIN_SCALE` : `Z`
- `MAP_SCENARIO` : `Ljava/util/List;`
- `MAP_WORLD_MAP` : `Ljava/util/List;`
- `iActiveMapID` : `I`
- `iMAP_DEFAULT_SCALE` : `Ljava/util/List;`
- `iMAP_ICON` : `Ljava/util/List;`
- `iMAP_NUM_OF_PROVINCES` : `Ljava/util/List;`
- `iMAP_SCALE` : `Ljava/util/List;`
- `iNumOfBasins` : `I`
- `mapBG` : `Lage/of/civilizations2/jakowski/lukasz/Map_BG;`
- `mapContinents` : `Lage/of/civilizations2/jakowski/lukasz/Map_Continents;`
- `mapCoordinates` : `Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;`
- `mapRegions` : `Lage/of/civilizations2/jakowski/lukasz/Map_Regions;`
- `mapScale` : `Lage/of/civilizations2/jakowski/lukasz/Map_Scale;`
- `mapScroll` : `Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;`
- `mapTouchManager` : `Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;`
- `sMAP_AUTHOR` : `Ljava/util/List;`
- `sMAP_BACKGROUND_NAME` : `Ljava/util/List;`
- `sMAP_CONTINENTS_PACKAGE_TAG` : `Ljava/util/List;`
- `sMAP_LANG_KEY` : `Ljava/util/List;`
- `sMAP_REGIONS_PACKAGE_TAG` : `Ljava/util/List;`
- `sMAP_TAGS` : `Ljava/util/List;`
- `sMAP_WIKI` : `Ljava/util/List;`

## 方法（按簇）

### get* (25)

- `getActiveMapID()I`
- `getFile_ActiveMap_Path()Ljava/lang/String;`
- `getFile_Map_Path(I)Ljava/lang/String;`
- `getIcon(I)Lage/of/civilizations2/jakowski/lukasz/Image;`
- `getMapAuthor(I)Ljava/lang/String;`
- `getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;`
- `getMapBackgroundName(I)Ljava/lang/String;`
- `getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;`
- `getMapContinentsPackageTag(I)Ljava/lang/String;`
- `getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;`
- `getMapDefaultScale(I)I`
- `getMapDefaultScenario(I)Ljava/lang/String;`
- `getMapLangKey(I)Ljava/lang/String;`
- `getMapName(I)Ljava/lang/String;`
- `getMapName_Just(I)Ljava/lang/String;`
- `getMapNumOfProvinces(I)I`
- `getMapRegions()Lage/of/civilizations2/jakowski/lukasz/Map_Regions;`
- `getMapRegionsPackageTag(I)Ljava/lang/String;`
- `getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;`
- `getMapScale(I)I`
- `getMapScroll()Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;`
- `getMapTouchManager()Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;`
- `getMapWiki(I)Ljava/lang/String;`
- `getMapWorldMap(I)Z`
- `getNumOfMaps()I`

### load/save* (3)

- `loadSettings_ActiveMap()V`
- `load_DeleteStatusFile()V`
- `load_MinScale()V`

### other (2)

- `initMapContinents()V`
- `initMapRegions()V`

### set* (2)

- `setActiveMapID(I)V`
- `setMapScale(II)I`

### update/check* (2)

- `update()V`
- `updateWorldMap()V`

### draw* (1)

- `drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`

