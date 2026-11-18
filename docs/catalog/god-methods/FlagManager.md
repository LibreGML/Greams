# `FlagManager` 方法索引

- 文件: `.../lukasz/FlagManager.smali`
- 大小: **136.5 KB**
- 分组: 旗帜
- 说明: 旗帜管理
- 方法数: **28**；字段数: **9**
- super: `Ljava/lang/Object;`

## 字段（摘录）

- `FLAG_HEIGHT` : `I`
- `FLAG_HEIGHT_MIN` : `I`
- `FLAG_WIDTH` : `I`
- `FLAG_WIDTH_MIN` : `I`
- `divisionLayers` : `Ljava/util/List;`
- `flagEdit` : `Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;`
- `lDivisions` : `Ljava/util/List;`
- `lOverlays` : `Ljava/util/List;`
- `lOverlaysImages` : `Ljava/util/List;`

## 方法（按簇）

### draw* (9)

- `drawDivision(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V`
- `drawDivision(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V`
- `drawDivisionBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V`
- `drawDivision_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V`
- `drawDivision_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V`
- `drawFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V`
- `drawFlag_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V`
- `drawOverlay(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V`
- `drawOverlay_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V`

### load/save* (7)

- `loadData()V`
- `loadDivision()V`
- `loadDivisions()V`
- `loadFlagEdit()V`
- `loadOverlayImage(I)V`
- `loadOverlays()V`
- `saveFlagTexture(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`

### other (6)

- `addOverlay()V`
- `beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V`
- `beginClip_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V`
- `clearData()V`
- `endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V`
- `initFlagEdit()V`

### army/move* (3)

- `moveOverlayUp(I)V`
- `removeOverlay(I)V`
- `tryRemoveOverlay(I)V`

### update/check* (2)

- `updateDivision(Z)V`
- `updateOverlay(IZ)V`

### get* (1)

- `getOverlay(I)Lage/of/civilizations2/jakowski/lukasz/Image;`

