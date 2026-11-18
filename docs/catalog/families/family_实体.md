# 类族：实体

顶层 **38**，含内部类合计 **232**。

| 类 | 内部? | KB | 方法 | 说明 | 关键方法 |
|---|---|---:|---:|---|---|
| `City` |  | 22.9 | 16 | 城市 | `draw`, `draw`, `draw`, `draw`, `drawCityImage_Level`, `drawInLine` …(+10) |
| `Civilization` |  | 717.2 | 390 | 单文明运行时实体 | `applyBonusChanges`, `applyBonusChanges_Expired`, `buildCivilizationRegion`, `initCivilization`, `removeCivRegionID`, `addArmyInAnotherProvince` …(+384) |
| `Civilization_ClosedEmbassy` |  | 0.9 | 0 | 文明子系统数据 | （无公开业务方法或仅构造） |
| `Civilization_Colonies` |  | 0.6 | 0 | 文明子系统数据 | （无公开业务方法或仅构造） |
| `Civilization_Color` |  | 0.5 | 0 | 文明子系统数据 | （无公开业务方法或仅构造） |
| `Civilization_Diplomacy_GameData` |  | 21.4 | 14 | 文明子系统数据｜含: 外交 | `addEmbeassyClosed`, `addImproveRelations`, `clearEmbassyClosed`, `getEmbassyClosed`, `getEmbassyClosedSize`, `getImproveRelation` …(+8) |
| `Civilization_Diplomacy_ImproveRelations_GameData` |  | 4.1 | 1 | 文明子系统数据｜含: 外交 | `action` |
| `Civilization_Friends_GameData` |  | 0.8 | 0 | 文明子系统数据 | （无公开业务方法或仅构造） |
| `Civilization_GameData` |  | 0.5 | 0 | 文明子系统数据 | （无公开业务方法或仅构造） |
| `Civilization_GameData3` |  | 3.6 | 8 | 文明子系统数据 | `getB`, `getCivTag`, `getG`, `getR`, `setB`, `setCivTag` …(+2) |
| `Civilization_Hated_GameData` |  | 0.6 | 0 | 文明子系统数据 | （无公开业务方法或仅构造） |
| `Civilization_Region` |  | 265.4 | 34 | 文明子系统数据 | `buildAvaragePoint`, `buildDrawData`, `buildMinMaxBounds`, `canBeUsedInPath`, `canDrawTextProperly`, `addProvince` …(+28) |
| `Civilization_Region_Active` |  | 7.6 | 6 | 文明子系统数据 | `addRegion`, `getActiveRegionsSize`, `getCivID`, `getRegionStyleID`, `isActive_RegionID`, `removeRegion` |
| `Civilization_Region_Style` |  | 1.0 | 1 | 文明子系统数据 | `updatePB` |
| `Civilization_SentMessages` |  | 1.4 | 0 | 文明子系统数据 | （无公开业务方法或仅构造） |
| `Civilization_ServiceRibbon_GameData` |  | 2.4 | 4 | 文明子系统数据 | `getColor`, `getColors`, `getSRTAG`, `setSRTAG` |
| `Province` |  | 819.9 | 286 | 单省运行时实体 | `getUpdateView_SetCivID`, `getWastelandColor`, `addArmy`, `addCity`, `addCiv`, `addDangerLevel` …(+280) |
| `Province$1` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$1` | `drawArmy` |
| `Province$10` | yes | 1.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$10` | `drawArmy` |
| `Province$100` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$100` | `drawArmy` |
| `Province$101` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$101` | `drawArmy` |
| `Province$102` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$102` | `drawArmy` |
| `Province$103` | yes | 1.9 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$103` | `drawArmy` |
| `Province$104` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$104` | `drawArmy` |
| `Province$105` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$105` | `drawArmy` |
| `Province$106` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$106` | `drawArmy` |
| `Province$107` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$107` | `drawArmy` |
| `Province$108` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$108` | `drawArmy` |
| `Province$109` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$109` | `drawArmy` |
| `Province$11` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$11` | `drawArmy` |
| `Province$110` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$110` | `drawArmy` |
| `Province$111` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$111` | `drawArmy` |
| `Province$112` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$112` | `drawArmy` |
| `Province$113` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$113` | `drawArmy` |
| `Province$114` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$114` | `drawArmy` |
| `Province$115` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$115` | `drawArmy` |
| `Province$116` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$116` | `drawArmy` |
| `Province$117` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$117` | `drawArmy` |
| `Province$118` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$118` | `drawArmy` |
| `Province$119` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$119` | `drawArmy` |
| `Province$12` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$12` | `drawArmy` |
| `Province$120` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$120` | `drawArmy` |
| `Province$121` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$121` | `drawArmy` |
| `Province$122` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$122` | `drawArmy` |
| `Province$123` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$123` | `drawArmy` |
| `Province$124` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$124` | `drawArmy` |
| `Province$125` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$125` | `drawArmy` |
| `Province$126` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$126` | `drawArmy` |
| `Province$127` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$127` | `drawArmy` |
| `Province$128` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$128` | `drawArmy` |
| `Province$129` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$129` | `drawArmy` |
| `Province$13` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$13` | `drawArmy` |
| `Province$130` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$130` | `drawArmy` |
| `Province$131` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$131` | `drawArmy` |
| `Province$132` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$132` | `drawArmy` |
| `Province$133` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$133` | `drawArmy` |
| `Province$134` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$134` | `drawArmy` |
| `Province$135` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$135` | `drawArmy` |
| `Province$136` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$136` | `drawArmy` |
| `Province$137` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$137` | `drawArmy` |
| `Province$138` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$138` | `drawArmy` |
| `Province$139` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$139` | `drawArmy` |
| `Province$14` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$14` | `drawArmy` |
| `Province$140` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$140` | `drawArmy` |
| `Province$141` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$141` | `drawArmy` |
| `Province$142` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$142` | `drawArmy` |
| `Province$143` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$143` | `drawArmy` |
| `Province$144` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$144` | `drawArmy` |
| `Province$145` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$145` | `drawArmy` |
| `Province$146` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$146` | `drawArmy` |
| `Province$147` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$147` | `drawArmy` |
| `Province$148` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$148` | `drawArmy` |
| `Province$149` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$149` | `drawArmy` |
| `Province$15` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$15` | `drawArmy` |
| `Province$150` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$150` | `drawArmy` |
| `Province$151` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$151` | `drawArmy` |
| `Province$152` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$152` | `drawArmy` |
| `Province$153` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$153` | `drawArmy` |
| `Province$154` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$154` | `drawArmy` |
| `Province$155` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$155` | `drawArmy` |
| `Province$156` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$156` | `drawArmy` |
| `Province$157` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$157` | `drawArmy` |
| `Province$158` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$158` | `drawArmy` |
| `Province$159` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$159` | `drawArmy` |
| `Province$16` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$16` | `drawArmy` |
| `Province$160` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$160` | `drawArmy` |
| `Province$161` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$161` | `drawArmy` |
| `Province$162` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$162` | `drawArmy` |
| `Province$163` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$163` | `drawArmy` |
| `Province$164` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$164` | `drawArmy` |
| `Province$165` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$165` | `drawArmy` |
| `Province$166` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$166` | `drawArmy` |
| `Province$167` | yes | 3.2 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$167` | `drawArmy` |
| `Province$168` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$168` | `drawArmy` |
| `Province$169` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$169` | `drawArmy` |
| `Province$17` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$17` | `drawArmy` |
| `Province$170` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$170` | `drawArmy` |
| `Province$18` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$18` | `drawArmy` |
| `Province$19` | yes | 1.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$19` | `drawArmy` |
| `Province$2` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$2` | `drawArmy` |
| `Province$20` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$20` | `drawArmy` |
| `Province$21` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$21` | `drawArmy` |
| `Province$22` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$22` | `drawArmy` |
| `Province$23` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$23` | `drawArmy` |
| `Province$24` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$24` | `drawArmy` |
| `Province$25` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$25` | `drawArmy` |
| `Province$26` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$26` | `drawArmy` |
| `Province$27` | yes | 1.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$27` | `drawArmy` |
| `Province$28` | yes | 3.7 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$28` | `drawArmy` |
| `Province$29` | yes | 2.6 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$29` | `drawArmy` |
| `Province$3` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$3` | `drawArmy` |
| `Province$30` | yes | 3.7 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$30` | `drawArmy` |
| `Province$31` | yes | 2.6 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$31` | `drawArmy` |
| `Province$32` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$32` | `drawArmy` |
| `Province$33` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$33` | `drawArmy` |
| `Province$34` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$34` | `drawArmy` |
| `Province$35` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$35` | `drawArmy` |
| `Province$36` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$36` | `drawArmy` |
| `Province$37` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$37` | `drawArmy` |
| `Province$38` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$38` | `drawArmy` |
| `Province$39` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$39` | `drawArmy` |
| `Province$4` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$4` | `drawArmy` |
| `Province$40` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$40` | `drawArmy` |
| `Province$41` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$41` | `drawArmy` |
| `Province$42` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$42` | `drawArmy` |
| `Province$43` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$43` | `drawArmy` |
| `Province$44` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$44` | `drawArmy` |
| `Province$45` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$45` | `drawArmy` |
| `Province$46` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$46` | `drawArmy` |
| `Province$47` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$47` | `drawArmy` |
| `Province$48` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$48` | `drawArmy` |
| `Province$49` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$49` | `drawArmy` |
| `Province$5` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$5` | `drawArmy` |
| `Province$50` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$50` | `drawArmy` |
| `Province$51` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$51` | `drawArmy` |
| `Province$52` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$52` | `drawArmy` |
| `Province$53` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$53` | `drawArmy` |
| `Province$54` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$54` | `drawArmy` |
| `Province$55` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$55` | `drawArmy` |
| `Province$56` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$56` | `drawArmy` |
| `Province$57` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$57` | `drawArmy` |
| `Province$58` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$58` | `drawArmy` |
| `Province$59` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$59` | `drawArmy` |
| `Province$6` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$6` | `drawArmy` |
| `Province$60` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$60` | `drawArmy` |
| `Province$61` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$61` | `drawArmy` |
| `Province$62` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$62` | `drawArmy` |
| `Province$63` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$63` | `drawArmy` |
| `Province$64` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$64` | `drawArmy` |
| `Province$65` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$65` | `drawArmy` |
| `Province$66` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$66` | `drawArmy` |
| `Province$67` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$67` | `drawArmy` |
| `Province$68` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$68` | `drawArmy` |
| `Province$69` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$69` | `drawArmy` |
| `Province$7` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$7` | `drawArmy` |
| `Province$70` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$70` | `drawArmy` |
| `Province$71` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$71` | `drawArmy` |
| `Province$72` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$72` | `drawArmy` |
| `Province$73` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$73` | `drawArmy` |
| `Province$74` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$74` | `drawArmy` |
| `Province$75` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$75` | `drawArmy` |
| `Province$76` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$76` | `drawArmy` |
| `Province$77` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$77` | `drawArmy` |
| `Province$78` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$78` | `drawArmy` |
| `Province$79` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$79` | `drawArmy` |
| `Province$8` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$8` | `drawArmy` |
| `Province$80` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$80` | `drawArmy` |
| `Province$81` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$81` | `drawArmy` |
| `Province$82` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$82` | `drawArmy` |
| `Province$83` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$83` | `drawArmy` |
| `Province$84` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$84` | `drawArmy` |
| `Province$85` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$85` | `drawArmy` |
| `Province$86` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$86` | `drawArmy` |
| `Province$87` | yes | 2.3 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$87` | `drawArmy` |
| `Province$88` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$88` | `drawArmy` |
| `Province$89` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$89` | `drawArmy` |
| `Province$9` | yes | 1.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$9` | `drawArmy` |
| `Province$90` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$90` | `drawArmy` |
| `Province$91` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$91` | `drawArmy` |
| `Province$92` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$92` | `drawArmy` |
| `Province$93` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$93` | `drawArmy` |
| `Province$94` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$94` | `drawArmy` |
| `Province$95` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$95` | `drawArmy` |
| `Province$96` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$96` | `drawArmy` |
| `Province$97` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$97` | `drawArmy` |
| `Province$98` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$98` | `drawArmy` |
| `Province$99` | yes | 2.0 | 1 | 内部类 → 外层 `Province`（单省运行时实体）｜本类 `Province$99` | `drawArmy` |
| `Province_Animation2` |  | 7.7 | 7 | 省份子系统/视图数据 | `getAlpha`, `getBackAnimation`, `getBorderAlpha`, `getColorStepID`, `getStepID`, `resetAnimationData` …(+1) |
| `Province_Animation_MoveUnits2` |  | 9.4 | 5 | 省份子系统/视图数据 | `getLineOffset`, `resetData`, `setLineOffsetInterval`, `update`, `updateColor` |
| `Province_Army` |  | 16.2 | 9 | 省份子系统/视图数据 | `getArmy`, `getArmyWidth`, `getCivID`, `setArmy`, `setCivID`, `updateArmyWidth` …(+3) |
| `Province_ArmyBox` |  | 1.5 | 4 | 省份子系统/视图数据 | `getEndPosX`, `getEndPosY`, `getStartPosX`, `getStartPosY` |
| `Province_Border` |  | 103.8 | 38 | 省份子系统/视图数据｜含: 边界 | `drawDashedBorder`, `drawDashedBorder_PercentageWidth`, `drawDashedBorder_PercentageWidth_Full_SeaBySea`, `drawDashedBorder_PercentageWidth_Full_Straight`, `drawDashedBorder_PercentageWidth_Full_Straight`, `drawInnerBorder` …(+32) |
| `Province_Border$1` | yes | 1.7 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$1` | `draw` |
| `Province_Border$10` | yes | 1.7 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$10` | `draw` |
| `Province_Border$11` | yes | 2.8 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$11` | `draw` |
| `Province_Border$12` | yes | 2.8 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$12` | `draw` |
| `Province_Border$13` | yes | 3.3 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$13` | `draw` |
| `Province_Border$14` | yes | 5.8 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$14` | `draw` |
| `Province_Border$15` | yes | 2.8 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$15` | `draw` |
| `Province_Border$16` | yes | 2.9 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$16` | `draw` |
| `Province_Border$17` | yes | 3.3 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$17` | `draw` |
| `Province_Border$18` | yes | 3.2 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$18` | `draw` |
| `Province_Border$19` | yes | 5.0 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$19` | `draw` |
| `Province_Border$2` | yes | 1.1 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$2` | `draw` |
| `Province_Border$20` | yes | 10.0 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$20` | `draw` |
| `Province_Border$21` | yes | 4.4 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$21` | `draw` |
| `Province_Border$22` | yes | 4.8 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$22` | `draw` |
| `Province_Border$23` | yes | 4.7 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$23` | `draw` |
| `Province_Border$3` | yes | 1.7 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$3` | `draw` |
| `Province_Border$4` | yes | 5.7 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$4` | `draw` |
| `Province_Border$5` | yes | 5.7 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$5` | `draw` |
| `Province_Border$6` | yes | 1.7 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$6` | `draw` |
| `Province_Border$7` | yes | 1.1 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$7` | `draw` |
| `Province_Border$8` | yes | 1.7 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$8` | `draw` |
| `Province_Border$9` | yes | 1.8 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$9` | `draw` |
| `Province_Border$DrawProvince_Border` | yes | 0.6 | 1 | 内部类 → 外层 `Province_Border`（省份子系统/视图数据｜含: 边界）｜本类 `Province_Border$DrawProvince_Border` | `draw` |
| `Province_Border_Draw` |  | 0.3 | 1 | 省份子系统/视图数据｜含: 边界 | `draw` |
| `Province_Border_GameData` |  | 2.7 | 3 | 省份子系统/视图数据｜含: 边界 | `getPointsX`, `getPointsY`, `getWithProvinceID` |
| `Province_Border_Line` |  | 2.2 | 4 | 省份子系统/视图数据｜含: 边界 | `getAngle`, `getPosX`, `getPosY`, `getWidth` |
| `Province_Core` |  | 18.9 | 17 | 省份子系统/视图数据｜含: 核心 | `getIsLargestGroup`, `addNewCore`, `clearData`, `getCivID`, `getCivsSize`, `getHaveACore` …(+11) |
| `Province_Cores_Civs_GameData` |  | 1.6 | 1 | 省份子系统/视图数据｜含: 核心 | `setPerc` |
| `Province_Cores_GameData` |  | 13.9 | 9 | 省份子系统/视图数据｜含: 核心 | `addCore`, `addCore`, `clearCoresData`, `clearUselessData`, `getPercOfPop`, `getProvincesSize` …(+3) |
| `Province_Cores_Provinces_GameData` |  | 18.4 | 5 | 省份子系统/视图数据｜含: 核心 | `addCore`, `getPercOfPop`, `removeCore`, `updateAfterRemove`, `updateCorePercOfPopulation` |
| `Province_DrawArmy` |  | 0.3 | 1 | 省份子系统/视图数据｜含: 战争 | `drawArmy` |
| `Province_FogofWar` |  | 0.8 | 2 | 省份子系统/视图数据｜含: 战争迷雾, 迷雾, 战争 | `getIsVisible`, `setVisible` |
| `Province_GameData2` |  | 8.0 | 6 | 省份子系统/视图数据 | `getLevelOfPort`, `getNeighboringProvinces`, `getNeighboringSeaProvinces`, `getPointsX`, `getPointsY`, `getProvinceBorder` |
| `Province_Info_GameData3` |  | 1.0 | 0 | 省份子系统/视图数据 | （无公开业务方法或仅构造） |
| `Province_Population` |  | 11.6 | 10 | 省份子系统/视图数据｜含: 人口 | `clearData`, `getCivID`, `getNational`, `getNationalitiesSize`, `getPopulation`, `getPopulationID` …(+4) |
| `Province_Population_Nationalities` |  | 1.3 | 3 | 省份子系统/视图数据｜含: 人口 | `getCivID`, `getPopulation`, `setPopulaton` |
| `Province_Port_Center` |  | 3.0 | 3 | 省份子系统/视图数据｜含: 港口 | `draw`, `getShiftX`, `getShiftY` |
| `Province_SupportRebels` |  | 0.8 | 0 | 省份子系统/视图数据｜含: 叛军, 港口 | （无公开业务方法或仅构造） |
| `Province_SupportRebels_Help` |  | 0.6 | 0 | 省份子系统/视图数据｜含: 叛军, 港口 | （无公开业务方法或仅构造） |
