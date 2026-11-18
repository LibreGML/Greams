# `AoCGame` 方法索引

- 文件: `.../lukasz/AoCGame.smali`
- 大小: **227.0 KB**
- 分组: 入口
- 说明: LibGDX Game 主循环
- 方法数: **26**；字段数: **40**
- super: `Lcom/badlogic/gdx/ApplicationAdapter;`

## 字段（摘录）

- `DEFAULT_SCROLL` : `I`
- `DEFAULT_SCROLL_MAP` : `I`
- `FPS_LIMIT` : `I`
- `LEFT` : `I`
- `RIGHT` : `I`
- `STEAM_BUILD` : `Z`
- `TOP` : `I`
- `TYPE_NUMBER` : `I`
- `TYPE_NUMBER_RESET_TIME` : `I`
- `TYPE_NUMER_TIME` : `J`
- `blackWhiteShader` : `Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;`
- `camera` : `Lcom/badlogic/gdx/graphics/OrthographicCamera;`
- `defaultShader` : `Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;`
- `drawFPS` : `Z`
- `mLinkHandler` : `Lage/of/civilizations2/jakowski/lukasz/LinkHandler;`
- `nextPlayerTurnShader` : `Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;`
- `screenShotMode` : `Z`
- `shaderAlpha` : `Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;`
- `shaderAlpha2` : `Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;`
- `steamGame` : `Lage/of/civilizations2/jakowski/lukasz/Steam_Game;`
- `viewport` : `Lcom/badlogic/gdx/utils/viewport/Viewport;`
- `MAP_MOVE_BOT` : `Z`
- `MAP_MOVE_LEFT` : `Z`
- `MAP_MOVE_RIGHT` : `Z`
- `MAP_MOVE_TOP` : `Z`
- `VERTEX` : `Ljava/lang/String;`
- `fragmentShader` : `Ljava/lang/String;`
- `iNumOfFPS` : `I`
- `iScroll` : `I`
- `iScroll_MAP` : `F`
- `iScroll_MAPY` : `F`
- `lScrollTime` : `J`
- `lScrollTime_MAP` : `J`
- `lScrollTime_MAPY` : `J`
- `lTimeFPS` : `J`
- `oSB` : `Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;`
- `renderStart` : `J`
- `requestRendering` : `Lage/of/civilizations2/jakowski/lukasz/AoCGame$RequestRendering;`
- `touch` : `Lage/of/civilizations2/jakowski/lukasz/Touch;`
- `vertexShader` : `Ljava/lang/String;`

## 方法（按簇）

### other (16)

- `countFPS()V`
- `create()V`
- `dispose()V`
- `keyDown(I)Z`
- `keyTyped(C)Z`
- `keyUp(I)Z`
- `pause()V`
- `render()V`
- `resetTypeNumber()V`
- `resize(II)V`
- `resume()V`
- `scrolled(I)Z`
- `touchDown(IIII)Z`
- `touchDragged(III)Z`
- `touchUp(IIII)Z`
- `typeNumber(I)V`

### update/check* (5)

- `update()V`
- `updateRequestRendering(Z)V`
- `updateScroll()V`
- `updateScroll_Map()V`
- `updateScroll_MapY()V`

### army/move* (3)

- `mouseMoved(II)Z`
- `updateArmyFontSize()V`
- `updateMoveMap()V`

### get* (1)

- `getScrolled_ScaleUpdate()F`

### load/save* (1)

- `loadCursor(Z)V`

