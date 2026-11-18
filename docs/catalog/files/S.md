# 类文件目录 — S

条目: **94**

| 类 | KB | 分组 | 方法数 | 说明 | 关键方法 |
|---|---:|---|---:|---|---|
| `Save_Civ_GameData` | 41.8 | 存档 | 3 | 存档分片/文明外交序列化 | `addGift_Received`, `setLeader`, `updateGift_Received` |
| `Save_CivDiplo_GameData` | 16.2 | 存档 | 0 | 存档分片/文明外交序列化 | （无公开业务方法或仅构造） |
| `Save_CivDiploInfo_GameData` | 0.8 | 存档 | 0 | 存档分片/文明外交序列化 | （无公开业务方法或仅构造） |
| `Save_GameData` | 22.0 | 存档 | 1 | 存档分片/文明外交序列化 | `buildData` |
| `Save_GameData2` | 0.7 | 存档 | 1 | 存档分片/文明外交序列化 | `buildData` |
| `Save_GameData_1` | 10.2 | 存档 | 1 | 存档分片/文明外交序列化 | `buildData` |
| `Save_GameData_10` | 1.2 | 存档 | 1 | 存档分片/文明外交序列化 | `buildData` |
| `Save_GameData_11` | 1.1 | 存档 | 1 | 存档分片/文明外交序列化 | `buildData` |
| `Save_GameData_2` | 2.0 | 存档 | 1 | 存档分片/文明外交序列化 | `buildData` |
| `Save_GameData_3` | 1.8 | 存档 | 1 | 存档分片/文明外交序列化 | `buildData` |
| `Save_GameData_4` | 2.0 | 存档 | 1 | 存档分片/文明外交序列化 | `buildData` |
| `Save_GameData_5` | 2.0 | 存档 | 1 | 存档分片/文明外交序列化 | `buildData` |
| `Save_GameData_6` | 1.8 | 存档 | 1 | 存档分片/文明外交序列化 | `buildData` |
| `Save_GameData_7` | 1.8 | 存档 | 1 | 存档分片/文明外交序列化 | `buildData` |
| `Save_GameData_8` | 2.0 | 存档 | 1 | 存档分片/文明外交序列化 | `buildData` |
| `Save_GameData_9` | 2.0 | 存档 | 1 | 存档分片/文明外交序列化 | `buildData` |
| `Save_Player_GameData` | 1.2 | 存档 | 0 | 存档分片/文明外交序列化 | （无公开业务方法或仅构造） |
| `Save_Provinces_GameData` | 8.2 | 存档 | 1 | 存档分片/文明外交序列化 | `resetData` |
| `SaveActiveMap_GameData` | 0.7 | 其他 | 0 | 待归类；按类名 tokens 推断｜含: 存档 | （无公开业务方法或仅构造） |
| `SaveActiveMap_Status_GameData` | 0.6 | 其他 | 0 | 待归类；按类名 tokens 推断｜含: 存档 | （无公开业务方法或仅构造） |
| `SaveManager` | 195.6 | 存档 | 8 | 存档读写管理器 | `deleteSavedGame`, `gameWillBeSavedInNextTurn`, `gameWillBeSavedInThisTurn`, `newGame`, `saveGame`, `saveGame_OLD`, `saveSave_Info`, `trySaveGame` |
| `SaveManager$ConfigSaveInfo` | 0.7 | 存档 | 0 | 内部类 → 外层 `SaveManager`（存档读写管理器）｜本类 `SaveManager$ConfigSaveInfo` | （无公开业务方法或仅构造） |
| `SaveManager$Data_Save_Info` | 0.7 | 存档 | 0 | 内部类 → 外层 `SaveManager`（存档读写管理器）｜本类 `SaveManager$Data_Save_Info` | （无公开业务方法或仅构造） |
| `Scenario_GameData` | 27.9 | 剧本 | 26 | 剧本数据块 | `addCampaingCivsIDs`, `buildData`, `getActivePalletOfColors_TAG`, `getCivCapital`, `getCivSize`, `getCivTag`, `getColonization`, `getDiseasesDeathRate_Modifier`, `getEconomyGrowthRate_Modifier`, `getHappiness` …(+16) |
| `Scenario_GameData_Armies` | 11.1 | 剧本 | 1 | 剧本数据块 | `buildData` |
| `Scenario_GameData_Army` | 1.4 | 剧本 | 3 | 剧本数据块 | `getArmy`, `getCivID`, `getProvinceID` |
| `Scenario_GameData_Diplomacy2` | 22.4 | 剧本 | 9 | 剧本数据块｜含: 外交 | `buildData`, `getAlliances`, `getDefensivePacts`, `getGuarantee`, `getMilitaryAccess`, `getPacts`, `getRelations`, `getTruces`, `getVassals` |
| `Scenario_GameData_Diplomacy_AlliancesData` | 3.4 | 剧本 | 6 | 剧本数据块｜含: 同盟, 外交 | `addCiv`, `getCivs`, `getColor`, `getName`, `setColor`, `setName` |
| `Scenario_GameData_Diplomacy_Data` | 2.0 | 剧本 | 6 | 剧本数据块｜含: 外交 | `getCivA`, `getCivB`, `getValue`, `setCivA`, `setCivB`, `setValue` |
| `Scenario_GameData_Diplomacy_VassalsData` | 1.6 | 剧本 | 4 | 剧本数据块｜含: 附庸, 外交 | `getCivID`, `getCivLordID`, `setCivID`, `setCivLordID` |
| `Scenario_GameData_Province2` | 2.7 | 剧本 | 2 | 剧本数据块 | `buildProvinceOwners`, `getProvinceOwners` |
| `Scenario_GameData_Technology` | 1.5 | 剧本 | 4 | 剧本数据块｜含: 科技 | `getContinentID`, `getPercentage`, `setContinentID`, `setPercentage` |
| `Scenario_WastelandProvinces_GameData` | 1.9 | 剧本 | 2 | 剧本数据块｜含: 荒地 | `getWastelandProvinceID`, `getWastelandProvincesSize` |
| `ScenarioExport` | 20.2 | 注入 | 7 | 剧本导出（注入）｜含: 港口 | `activeMapPath`, `appendExportIndex`, `exportAllLocal`, `exportCurrent`, `exportTag`, `toast`, `writePackHelp` |
| `Selected_Provinces` | 28.9 | 其他 | 18 | 待归类；按类名 tokens 推断 | `addProvince`, `canAddArmy`, `canBeReleasedAsVassal`, `checkIfExists`, `clearSelectedProvinces`, `draw`, `draw_CreateAVassal`, `draw_HolyRomanEmpire`, `getProvince`, `getProvinces` …(+8) |
| `ServiceRibbon_GameData` | 2.4 | 绶带 | 4 | 绶带 | `addServiceRibbonOverlay`, `getServiceRibbon_Overlay`, `getSize`, `removeServiceRibbon_Overlay` |
| `ServiceRibbon_Manager` | 57.0 | 绶带 | 25 | 绶带 | `loadSRImages`, `check_RequestTurns`, `check_Request_ConquredProvinces`, `drawSR`, `drawSR`, `drawSRLevel`, `drawSROver`, `drawSROverlay`, `getRequestProvinces`, `getRequestProvinces_Level` …(+15) |
| `ServiceRibbon_Overlay_GameData` | 2.0 | 绶带 | 6 | 绶带 | `getPosX`, `getReflected`, `getWidth`, `setPosX`, `setReflected`, `setWidth` |
| `SettingsManager` | 9.8 | 其他 | 1 | 待归类；按类名 tokens 推断 | `updateCitiesFontScale` |
| `Shaft` | 31.9 | 其他 | 11 | 待归类；按类名 tokens 推断 | `buildShaft`, `canBuildShaft`, `constructShaft`, `destroyShaft`, `getShaft_Bonus`, `getShaft_BuildCost`, `getShaft_BuildMovementCost`, `getShaft_Construction`, `getShaft_MaxLevel`, `getShaft_Name` …(+1) |
| `Skills_GameData` | 5.5 | 其他 | 1 | 待归类；按类名 tokens 推断 | `getPointsLeft` |
| `SkillsManager` | 89.4 | 其他 | 30 | 待归类；按类名 tokens 推断 | `add_Administration`, `add_AttackBonus`, `add_Colonization`, `add_DefenseBonus`, `add_EcoGrowth`, `add_Education`, `add_IncomeProduction`, `add_IncomeTaxation`, `add_Infrastructure`, `add_Medicine` …(+20) |
| `Slide` | 6.6 | 其他 | 1 | 待归类；按类名 tokens 推断 | `draw` |
| `Slider` | 45.9 | 其他 | 24 | 待归类；按类名 tokens 推断 | `updateCurrentPosX`, `draw`, `drawSliderBG`, `drawSliderBG_UpdateAnimation`, `drawSliderBorder`, `drawSliderText`, `getColorLEFT`, `getColorRIGHT`, `getCurrent`, `getDrawText` …(+14) |
| `Slider_Age` | 15.0 | UI-滑条 | 2 | 滑条控件 | `drawSliderBG`, `getColorLEFT` |
| `Slider_BG` | 1.9 | UI-滑条 | 1 | 滑条控件 | `draw` |
| `Slider_BG_CNG` | 24.0 | UI-滑条 | 4 | 滑条控件 | `draw`, `drawSliderBG`, `drawSliderText`, `getColor` |
| `Slider_BG_CNG_Pact` | 10.8 | UI-滑条 | 2 | 滑条控件｜含: 条约 | `buildElementHover`, `drawSliderBG` |
| `Slider_BG_ZeroInMiddle` | 15.8 | UI-滑条 | 3 | 滑条控件 | `draw`, `getColorLEFT`, `getColorRIGHT` |
| `Slider_CrossTheBorder` | 74.6 | UI-滑条 | 8 | 滑条控件｜含: 边界 | `draw`, `getColor`, `getColorLEFT`, `getImageScale`, `getSliderHeight`, `isNuclear`, `setNuclear`, `updateSlider` |
| `Slider_Defensive` | 19.1 | UI-滑条 | 3 | 滑条控件 | `buildElementHover`, `draw`, `drawSliderText` |
| `Slider_FlagAction` | 81.4 | UI-滑条 | 7 | 滑条控件｜含: 旗帜 | `draw`, `getColor`, `getColorLEFT`, `getDrawText`, `getImageScale`, `getSliderHeight`, `setCurrent` |
| `Slider_FlagAction_Clear` | 71.0 | UI-滑条 | 5 | 滑条控件｜含: 旗帜 | `draw`, `getColor`, `getColorLEFT`, `getDrawText`, `getSliderHeight` |
| `Slider_FlagAction_Clear_Adm` | 1.8 | UI-滑条 | 1 | 滑条控件｜含: 旗帜 | `getTextLeft` |
| `Slider_FlagAction_Clear_Flag` | 84.7 | UI-滑条 | 6 | 滑条控件｜含: 旗帜 | `getImageScale`, `draw`, `getColor`, `getColorLEFT`, `getDrawText`, `getSliderHeight` |
| `Slider_FlagAction_Clear_Flag_Tribute` | 105.2 | UI-滑条 | 9 | 滑条控件｜含: 旗帜 | `getImageScale`, `actionElement`, `draw`, `getColor`, `getColorLEFT`, `getDrawText`, `getImageScale`, `getSliderHeight` …(+1) |
| `Slider_FlagAction_Clear_Laws` | 83.7 | UI-滑条 | 7 | 滑条控件｜含: 旗帜 | `draw`, `getClickable`, `getColor`, `getColorLEFT`, `getDrawText`, `getSliderHeight`, `getTextLeft` |
| `Slider_FlagAction_Clear_Tech` | 83.7 | UI-滑条 | 7 | 滑条控件｜含: 旗帜 | `draw`, `getClickable`, `getColor`, `getColorLEFT`, `getDrawText`, `getSliderHeight`, `getTextLeft` |
| `Slider_FlagAction_Date` | 81.4 | UI-滑条 | 8 | 滑条控件｜含: 旗帜 | `draw`, `getColor`, `getColorLEFT`, `getDrawText`, `getSliderHeight`, `setCurrent`, `updateSlider`, `updateTexts` |
| `Slider_FlagAction_Gold` | 76.9 | UI-滑条 | 6 | 滑条控件｜含: 旗帜 | `draw`, `getColor`, `getColorLEFT`, `getDrawText`, `getImageScale`, `getSliderHeight` |
| `Slider_FlagAction_Goods` | 27.8 | UI-滑条 | 4 | 滑条控件｜含: 旗帜 | `draw`, `draw`, `getSliderHeight`, `setCurrent` |
| `Slider_FlagAction_Investments` | 24.5 | UI-滑条 | 2 | 滑条控件｜含: 投资, 旗帜 | `draw`, `setCurrent` |
| `Slider_FlagAction_Military` | 70.7 | UI-滑条 | 7 | 滑条控件｜含: 旗帜 | `getImageScale`, `draw`, `getColor`, `getColorLEFT`, `getDrawText`, `getSliderHeight`, `setCurrent` |
| `Slider_FlagAction_Res` | 75.6 | UI-滑条 | 6 | 滑条控件｜含: 旗帜 | `draw`, `getColor`, `getColorLEFT`, `getDrawText`, `getImageScale`, `getSliderHeight` |
| `Slider_FlagAction_Taxes` | 99.8 | UI-滑条 | 8 | 滑条控件｜含: 旗帜 | `getImageScale`, `draw`, `getColor`, `getColorLEFT`, `getDrawText`, `getSliderHeight`, `setMax`, `setText` |
| `Slider_Guarantee` | 19.1 | UI-滑条 | 3 | 滑条控件 | `buildElementHover`, `draw`, `drawSliderText` |
| `Slider_InGame` | 26.7 | UI-滑条 | 4 | 滑条控件 | `sliderHeight`, `drawSliderBG`, `drawSliderBorder`, `drawSliderText` |
| `Slider_LR` | 4.7 | UI-滑条 | 1 | 滑条控件 | `drawSliderText` |
| `Slider_LR_Flag` | 8.3 | UI-滑条 | 1 | 滑条控件｜含: 旗帜 | `drawSliderText` |
| `Slider_LR_Perc` | 5.6 | UI-滑条 | 1 | 滑条控件 | `drawSliderBG` |
| `Slider_MilitartAccess` | 19.4 | UI-滑条 | 3 | 滑条控件｜含: 通行权 | `buildElementHover`, `draw`, `drawSliderText` |
| `Slider_Pact` | 17.7 | UI-滑条 | 3 | 滑条控件｜含: 条约 | `buildElementHover`, `draw`, `drawSliderText` |
| `Slider_Perc` | 5.5 | UI-滑条 | 1 | 滑条控件 | `drawSliderBG` |
| `Slider_Relations` | 40.2 | UI-滑条 | 2 | 滑条控件 | `draw`, `drawSliderText` |
| `Slider_Relations2` | 40.3 | UI-滑条 | 2 | 滑条控件 | `draw`, `drawSliderText` |
| `Slider_Truce` | 17.7 | UI-滑条 | 3 | 滑条控件｜含: 停战 | `buildElementHover`, `draw`, `drawSliderText` |
| `SliderMenu` | 94.2 | 其他 | 75 | 待归类；按类名 tokens 推断 | `getMenuElementIsInView`, `getMenuElementIsInView_X`, `resetScrollINFO`, `actionClose`, `actionElement`, `beginClip`, `draw`, `draw`, `drawBackgroundMode`, `drawCloseButton` …(+65) |
| `SliderMenuTitle` | 9.0 | 其他 | 11 | 待归类；按类名 tokens 推断 | `draw`, `drawText`, `getHeight`, `getMoveable`, `getResizable`, `getText`, `getTextHeight`, `getTextWidth`, `setText`, `setTextHeight` …(+1) |
| `SoundsManager` | 59.8 | 其他 | 27 | 待归类；按类名 tokens 推断 | `getSend`, `addSound`, `dispose`, `disposeCurrentMusic`, `getCurrentMusicTittle`, `getLastMusicTittle`, `getMasterVolume`, `getMusicCurrent`, `getMusicVolume`, `getNextMusicTittle` …(+17) |
| `SoundsManager$1` | 1.3 | 其他 | 1 | 内部类 → 外层 `SoundsManager`（待归类；按类名 tokens 推断）｜本类 `SoundsManager$1` | `onCompletion` |
| `SoundsManager$2` | 1.3 | 其他 | 1 | 内部类 → 外层 `SoundsManager`（待归类；按类名 tokens 推断）｜本类 `SoundsManager$2` | `onCompletion` |
| `SoundsManager$3` | 1.3 | 其他 | 1 | 内部类 → 外层 `SoundsManager`（待归类；按类名 tokens 推断）｜本类 `SoundsManager$3` | `onCompletion` |
| `SoundsManager$4` | 1.3 | 其他 | 1 | 内部类 → 外层 `SoundsManager`（待归类；按类名 tokens 推断）｜本类 `SoundsManager$4` | `onCompletion` |
| `SoundsManager$5` | 1.3 | 其他 | 1 | 内部类 → 外层 `SoundsManager`（待归类；按类名 tokens 推断）｜本类 `SoundsManager$5` | `onCompletion` |
| `Space` | 1.1 | 其他 | 0 | 待归类；按类名 tokens 推断 | （无公开业务方法或仅构造） |
| `Start_The_Game_Data` | 17.8 | 其他 | 7 | 待归类；按类名 tokens 推断 | `getCapitalsAlpha`, `getDashedLinePercentage`, `getIsDone`, `getProvincesAlpha`, `getStraightLinePercentage`, `getWastelandAlpha`, `updateData` |
| `Statistics_Civ_GameData` | 8.5 | 其他 | 30 | 待归类；按类名 tokens 推断 | `getBiggestEconomy`, `getConqueredProvinces`, `getGamesWon`, `getLargestArmy`, `getLargestPopulation`, `getRecruitedArmy`, `getTurns`, `getiBuiltArmories`, `getiBuiltFarms`, `getiBuiltForts` …(+20) |
| `Steam_Game` | 40.1 | 平台 | 8 | Steam 相关（移动端可能残留） | `checkAchievement`, `checkFormableAchievement`, `checkGovermentAchievement`, `uploadAlliance`, `uploadScore`, `uploadScore_OnSave`, `uploadUnions`, `uploadVassals` |
| `Steam_Game$1` | 1.4 | 平台 | 3 | 内部类 → 外层 `Steam_Game`（Steam 相关（移动端可能残留））｜本类 `Steam_Game$1` | `onEncryptedAppTicket`, `onMicroTxnAuthorization`, `onValidateAuthTicket` |
| `Steam_Game$2` | 29.5 | 平台 | 8 | 内部类 → 外层 `Steam_Game`（Steam 相关（移动端可能残留））｜本类 `Steam_Game$2` | `onGlobalStatsReceived`, `onLeaderboardFindResult`, `onLeaderboardScoreUploaded`, `onLeaderboardScoresDownloaded`, `onUserAchievementStored`, `onUserStatsReceived`, `onUserStatsStored`, `onUserStatsUnloaded` |
| `Steam_Game$3` | 2.4 | 平台 | 9 | 内部类 → 外层 `Steam_Game`（Steam 相关（移动端可能残留））｜本类 `Steam_Game$3` | `onDownloadUGCResult`, `onFileReadAsyncComplete`, `onFileShareResult`, `onFileWriteAsyncComplete`, `onPublishFileResult`, `onPublishedFileDeleted`, `onPublishedFileSubscribed`, `onPublishedFileUnsubscribed`, `onUpdatePublishedFileResult` |
| `Steam_Game$4` | 3.2 | 平台 | 14 | 内部类 → 外层 `Steam_Game`（Steam 相关（移动端可能残留））｜本类 `Steam_Game$4` | `onCreateItem`, `onDeleteItem`, `onDownloadItemResult`, `onGetUserItemVote`, `onRequestUGCDetails`, `onSetUserItemVote`, `onStartPlaytimeTracking`, `onStopPlaytimeTracking`, `onStopPlaytimeTrackingForAllItems`, `onSubmitItemUpdate` …(+4) |
| `Steam_Game$5` | 2.0 | 平台 | 8 | 内部类 → 外层 `Steam_Game`（Steam 相关（移动端可能残留））｜本类 `Steam_Game$5` | `onAvatarImageLoaded`, `onFriendRichPresenceUpdate`, `onGameLobbyJoinRequested`, `onGameOverlayActivated`, `onGameRichPresenceJoinRequested`, `onGameServerChangeRequested`, `onPersonaStateChange`, `onSetPersonaNameResponse` |
| `SupportRebels_Data` | 2.1 | 其他 | 0 | 待归类；按类名 tokens 推断｜含: 叛军, 港口 | （无公开业务方法或仅构造） |
