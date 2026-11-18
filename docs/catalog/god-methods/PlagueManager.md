# `PlagueManager` 方法索引

- 文件: `.../lukasz/PlagueManager.smali`
- 大小: **59.6 KB**
- 分组: 疾病
- 说明: 瘟疫/疾病运行时
- 方法数: **10**；字段数: **6**
- super: `Ljava/lang/Object;`

## 字段（摘录）

- `OUTBREAK_MODIFY` : `I`
- `OUTBREAK_RANDOM` : `I`
- `PLAGUE_PAUSE_FOR_X_TURNS` : `I`
- `iPlaguesSize` : `I`
- `lPlagues` : `Ljava/util/List;`
- `lPlagues_INGAME` : `Ljava/util/List;`

## 方法（按簇）

### get* (6)

- `getPlague(I)Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;`
- `getPlagueColor(IF)Lcom/badlogic/gdx/graphics/Color;`
- `getPlagueColor_InGame(IF)Lcom/badlogic/gdx/graphics/Color;`
- `getPlagueColor_InGame(IIF)Lcom/badlogic/gdx/graphics/Color;`
- `getPlague_InGame(I)Lage/of/civilizations2/jakowski/lukasz/Plague_GameData;`
- `getPlaguesSize()I`

### other (3)

- `runPlagues()V`
- `startDisease()V`
- `startDisease(I)V`

### load/save* (1)

- `loadPlagues()V`

