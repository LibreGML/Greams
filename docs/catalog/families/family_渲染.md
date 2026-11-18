# 类族：渲染

顶层 **3**，含内部类合计 **120**。

| 类 | 内部? | KB | 方法 | 说明 | 关键方法 |
|---|---|---:|---:|---|---|
| `Game_Cities` |  | 12.8 | 2 | 城市绘制数据 | `readCities`, `loadCities` |
| `Game_Cities$Config` | yes | 0.9 | 1 | 内部类 → 外层 `Game_Cities`（城市绘制数据）｜本类 `Game_Cities$Config` |  …(+1) |
| `Game_Cities$GameCity` | yes | 0.7 | 0 | 内部类 → 外层 `Game_Cities`（城市绘制数据）｜本类 `Game_Cities$GameCity` | （无公开业务方法或仅构造） |
| `Game_Render` |  | 133.2 | 13 | 地图/UI 渲染子系统 | `draw`, `drawCivRegions_Names`, `drawInGame`, `drawInGame_MapDetails`, `drawInGame_WithoutScale_MapDetails`, `drawMapDetails` …(+7) |
| `Game_Render$1` | yes | 5.9 | 2 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$1` | `drawMoveUnits`, `drawMoveUnits_WithoutScale` |
| `Game_Render$10` | yes | 0.9 | 2 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$10` | `draw`, `update` |
| `Game_Render$11` | yes | 7.4 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$11` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$12` | yes | 7.2 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$12` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$13` | yes | 3.8 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$13` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$14` | yes | 3.7 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$14` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$15` | yes | 1.2 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$15` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$16` | yes | 9.9 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$16` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$17` | yes | 9.8 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$17` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$18` | yes | 10.3 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$18` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$19` | yes | 10.2 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$19` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$2` | yes | 4.3 | 2 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$2` | `drawMoveUnits`, `drawMoveUnits_WithoutScale` |
| `Game_Render$20` | yes | 7.4 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$20` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$21` | yes | 7.3 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$21` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$22` | yes | 10.3 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$22` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$23` | yes | 10.2 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$23` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$24` | yes | 9.1 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$24` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$25` | yes | 9.0 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$25` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$26` | yes | 8.6 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$26` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$27` | yes | 8.5 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$27` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$28` | yes | 3.8 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$28` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$29` | yes | 3.8 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$29` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$3` | yes | 4.3 | 2 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$3` | `drawMoveUnits`, `drawMoveUnits_WithoutScale` |
| `Game_Render$30` | yes | 5.0 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$30` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$31` | yes | 5.0 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$31` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$32` | yes | 1.5 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$32` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$33` | yes | 1.5 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$33` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$34` | yes | 10.0 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$34` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$35` | yes | 7.3 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$35` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$36` | yes | 9.7 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$36` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$37` | yes | 3.3 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$37` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$38` | yes | 6.0 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$38` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$39` | yes | 5.2 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$39` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$4` | yes | 0.9 | 2 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$4` | `drawMoveUnits`, `drawMoveUnits_WithoutScale` |
| `Game_Render$40` | yes | 6.4 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$40` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$41` | yes | 1.8 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$41` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$42` | yes | 1.9 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$42` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$43` | yes | 5.1 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$43` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$44` | yes | 3.6 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$44` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$45` | yes | 4.5 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$45` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$46` | yes | 6.1 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$46` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$47` | yes | 7.0 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$47` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$48` | yes | 4.2 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$48` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$49` | yes | 4.3 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$49` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$5` | yes | 4.3 | 2 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$5` | `drawMoveUnits`, `drawMoveUnits_WithoutScale` |
| `Game_Render$50` | yes | 1.0 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$50` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$51` | yes | 5.2 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$51` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$52` | yes | 4.0 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$52` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$53` | yes | 4.2 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$53` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$54` | yes | 4.0 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$54` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$55` | yes | 5.4 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$55` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$56` | yes | 4.3 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$56` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$57` | yes | 4.3 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$57` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$58` | yes | 4.3 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$58` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$59` | yes | 4.1 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$59` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$6` | yes | 4.3 | 2 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$6` | `drawMoveUnits`, `drawMoveUnits_WithoutScale` |
| `Game_Render$60` | yes | 5.1 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$60` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$61` | yes | 2.0 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$61` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$62` | yes | 1.2 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$62` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$63` | yes | 1.0 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$63` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$64` | yes | 1.0 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$64` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$65` | yes | 4.3 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$65` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$66` | yes | 4.6 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$66` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$67` | yes | 4.3 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$67` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$68` | yes | 4.3 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$68` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$69` | yes | 7.0 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$69` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$7` | yes | 4.3 | 2 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$7` | `drawMoveUnits`, `drawMoveUnits_WithoutScale` |
| `Game_Render$70` | yes | 4.5 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$70` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$71` | yes | 4.3 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$71` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$72` | yes | 1.9 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$72` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$73` | yes | 3.8 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$73` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$74` | yes | 3.8 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$74` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$75` | yes | 3.8 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$75` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$76` | yes | 3.8 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$76` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$77` | yes | 3.1 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$77` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$78` | yes | 2.9 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$78` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$79` | yes | 3.7 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$79` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$8` | yes | 4.3 | 2 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$8` | `drawMoveUnits`, `drawMoveUnits_WithoutScale` |
| `Game_Render$9` | yes | 1.1 | 2 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$9` | `draw`, `update` |
| `Game_Render$DrawMoveUnits` | yes | 0.6 | 2 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$DrawMoveUnits` | `drawMoveUnits`, `drawMoveUnits_WithoutScale` |
| `Game_Render$Renderer` | yes | 0.7 | 3 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$Renderer` | `draw`, `drawMapDetails`, `drawWithoutScale` |
| `Game_Render$Renderer_CivRegionNames` | yes | 0.6 | 2 | 内部类 → 外层 `Game_Render`（地图/UI 渲染子系统）｜本类 `Game_Render$Renderer_CivRegionNames` | `draw`, `update` |
| `Game_Render_Province` |  | 538.6 | 62 | 地图/UI 渲染子系统 | `drawLandProvincesBorder`, `drawOccupiedProvinces`, `drawOccupiedProvinces_FogOfWar`, `drawProvinces`, `drawProvincesBorder`, `drawProvincesBorderInStartGame` …(+56) |
| `Game_Render_Province$1` | yes | 17.0 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$1` | `draw` |
| `Game_Render_Province$10` | yes | 23.3 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$10` | `draw` |
| `Game_Render_Province$11` | yes | 23.3 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$11` | `draw` |
| `Game_Render_Province$12` | yes | 8.5 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$12` | `draw` |
| `Game_Render_Province$13` | yes | 0.8 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$13` | `draw` |
| `Game_Render_Province$14` | yes | 10.6 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$14` | `draw` |
| `Game_Render_Province$15` | yes | 2.8 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$15` | `draw` |
| `Game_Render_Province$16` | yes | 2.8 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$16` | `draw` |
| `Game_Render_Province$17` | yes | 3.6 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$17` | `draw` |
| `Game_Render_Province$18` | yes | 5.3 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$18` | `draw` |
| `Game_Render_Province$19` | yes | 4.0 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$19` | `draw` |
| `Game_Render_Province$2` | yes | 13.9 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$2` | `draw` |
| `Game_Render_Province$20` | yes | 5.8 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$20` | `draw` |
| `Game_Render_Province$21` | yes | 3.1 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$21` | `draw` |
| `Game_Render_Province$22` | yes | 3.1 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$22` | `draw` |
| `Game_Render_Province$23` | yes | 0.8 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$23` | `draw` |
| `Game_Render_Province$24` | yes | 3.3 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$24` | `draw` |
| `Game_Render_Province$25` | yes | 2.8 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$25` | `draw` |
| `Game_Render_Province$26` | yes | 2.9 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$26` | `draw` |
| `Game_Render_Province$27` | yes | 2.9 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$27` | `draw` |
| `Game_Render_Province$28` | yes | 2.8 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$28` | `draw` |
| `Game_Render_Province$29` | yes | 2.0 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$29` | `draw` |
| `Game_Render_Province$3` | yes | 16.7 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$3` | `draw` |
| `Game_Render_Province$30` | yes | 2.5 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$30` | `draw` |
| `Game_Render_Province$31` | yes | 3.2 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$31` | `draw` |
| `Game_Render_Province$32` | yes | 10.3 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$32` | `draw` |
| `Game_Render_Province$4` | yes | 13.5 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$4` | `draw` |
| `Game_Render_Province$5` | yes | 14.7 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$5` | `draw` |
| `Game_Render_Province$6` | yes | 11.5 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$6` | `draw` |
| `Game_Render_Province$7` | yes | 27.3 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$7` | `draw` |
| `Game_Render_Province$8` | yes | 24.8 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$8` | `draw` |
| `Game_Render_Province$9` | yes | 23.3 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$9` | `draw` |
| `Game_Render_Province$DrawProvinces` | yes | 0.6 | 1 | 内部类 → 外层 `Game_Render_Province`（地图/UI 渲染子系统）｜本类 `Game_Render_Province$DrawProvinces` | `draw` |
