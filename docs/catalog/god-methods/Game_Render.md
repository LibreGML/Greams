# `Game_Render` 方法索引

- 文件: `.../lukasz/Game_Render.smali`
- 大小: **133.2 KB**
- 分组: 渲染
- 说明: 地图/UI 渲染子系统
- 方法数: **13**；字段数: **13**
- super: `Ljava/lang/Object;`

## 字段（摘录）

- `CIVILIZATIONS_NAMES_TIME` : `J`
- `CIVILIZATION_NAMES_ALPHA` : `F`
- `CIV_NAMES_START_DRAWING_NAMES_MAP_SCALE` : `F`
- `DISABLE_CITIES` : `Z`
- `DISABLE_CIVS_NAMES` : `Z`
- `DISABLE_INNER_BORDERS` : `F`
- `DISABLE_SEA_ARMIES` : `F`
- `drawCivNamesInCreateNewGame` : `Z`
- `lRegions_Civs` : `Ljava/util/List;`
- `lRegions_Civs_RegionsID` : `Ljava/util/List;`
- `oDrawMoveUnits` : `Lage/of/civilizations2/jakowski/lukasz/Game_Render$DrawMoveUnits;`
- `oRenderer` : `Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;`
- `oRenderer_CivRegionNames` : `Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer_CivRegionNames;`

## 方法（按簇）

### draw* (7)

- `draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawCivRegions_Names(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawInGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawInGame_MapDetails()Z`
- `drawInGame_WithoutScale_MapDetails()Z`
- `drawMapDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `drawWithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`

### update/check* (3)

- `updateRegionsInView()V`
- `updateRenderer()V`
- `updateRenderer_CivNames()V`

### army/move* (1)

- `updateDrawMoveUnits()V`

### fog* (1)

- `updateDrawCivRegionNames_FogOfWar()V`

### other (1)

- `access$000()V`

