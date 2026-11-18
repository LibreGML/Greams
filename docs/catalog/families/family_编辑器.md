# 类族：编辑器

顶层 **13**，含内部类合计 **13**。

| 类 | 内部? | KB | 方法 | 说明 | 关键方法 |
|---|---|---:|---:|---|---|
| `Editor_Colors` |  | 34.4 | 2 | 编辑器逻辑 | `keyDown`, `toString` |
| `Editor_Continents` |  | 15.5 | 5 | 编辑器逻辑 | `actionSave`, `addUndo`, `popUndo`, `keyDown`, `toString` |
| `Editor_GrowthRate` |  | 16.9 | 5 | 编辑器逻辑 | `actionSave`, `addUndo`, `popUndo`, `keyDown`, `toString` |
| `Editor_LevelOfPort` |  | 12.3 | 2 | 编辑器逻辑｜含: 港口 | `keyDown`, `toString` |
| `Editor_MapRegions` |  | 15.4 | 5 | 编辑器逻辑 | `actionSave`, `addUndo`, `popUndo`, `keyDown`, `toString` |
| `Editor_NeighboringProvinces` |  | 144.2 | 3 | 编辑器逻辑 | `updateProvince`, `keyDown`, `toString` |
| `Editor_ProvinceTexture` |  | 160.9 | 7 | 编辑器逻辑 | `dragged`, `keyDown`, `setInUse`, `toString`, `touchDown`, `touchDragged` …(+1) |
| `Editor_Regions` |  | 41.9 | 6 | 编辑器逻辑 | `actionUpdateRegionID`, `addUndo`, `popUndo`, `saveRegions`, `keyDown`, `toString` |
| `Editor_ShiftArmy` |  | 8.1 | 3 | 编辑器逻辑 | `saveArmyPosition`, `keyDown`, `toString` |
| `Editor_ShiftPort` |  | 11.3 | 3 | 编辑器逻辑｜含: 港口 | `savePortPosition`, `keyDown`, `toString` |
| `Editor_TerrainType` |  | 14.8 | 5 | 编辑器逻辑 | `actionSave`, `addUndo`, `popUndo`, `keyDown`, `toString` |
| `Editor_Wasteland` |  | 9.8 | 3 | 编辑器逻辑｜含: 荒地 | `actionSave`, `keyDown`, `toString` |
| `Undo_AssignProvinceCiv` |  | 0.9 | 2 | 撤销 | `getCivID`, `getProvinceID` |
