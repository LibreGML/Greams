# `SaveManager` 方法索引

- 文件: `.../lukasz/SaveManager.smali`
- 大小: **195.6 KB**
- 分组: 存档
- 说明: 存档读写管理器
- 方法数: **8**；字段数: **6**
- super: `Ljava/lang/Object;`

## 字段（摘录）

- `forceShowNextPlayerTurnView` : `Z`
- `gameCanBeContinued` : `Z`
- `gameSaved` : `Z`
- `iTurnsSinceLastSave` : `I`
- `saveRequest` : `Z`
- `saveTag` : `Ljava/lang/String;`

## 方法（按簇）

### other (5)

- `deleteSavedGame(I)V`
- `gameWillBeSavedInNextTurn()Z`
- `gameWillBeSavedInThisTurn()Z`
- `newGame()V`
- `trySaveGame()V`

### load/save* (3)

- `saveGame()V`
- `saveGame_OLD()V`
- `saveSave_Info()V`

