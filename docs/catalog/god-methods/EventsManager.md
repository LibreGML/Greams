# `EventsManager` 方法索引

- 文件: `.../lukasz/EventsManager.smali`
- 大小: **138.3 KB**
- 分组: 事件
- 说明: 事件管理器
- 方法数: **16**；字段数: **11**
- super: `Ljava/lang/Object;`

## 字段（摘录）

- `eSelectCivAction` : `Lage/of/civilizations2/jakowski/lukasz/Event_SelectCivAction;`
- `eventsGD` : `Lage/of/civilizations2/jakowski/lukasz/Events_GameData;`
- `iCreateEvent_Age` : `I`
- `iCreateEvent_Day` : `I`
- `iCreateEvent_EditConditionID` : `I`
- `iCreateEvent_EditEventID` : `I`
- `iCreateEvent_EditTriggerID` : `I`
- `iCreateEvent_Month` : `I`
- `iCreateEvent_Year` : `I`
- `lCreateScenario_Event` : `Lage/of/civilizations2/jakowski/lukasz/Event_GameData;`
- `setSinceDate` : `Z`

## 方法（按簇）

### other (8)

- `addEvent(Lage/of/civilizations2/jakowski/lukasz/Event_GameData;)V`
- `clearEvents()V`
- `runEvent_Tag(Ljava/lang/String;)V`
- `selectCivAction(I)V`
- `selectCivBack()V`
- `sortEventsByDate()V`
- `swapIDsOfCivs(II)V`
- `tryRunEvent(I)V`

### get* (3)

- `getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;`
- `getEventTypeText(Lage/of/civilizations2/jakowski/lukasz/Event_Type;)Ljava/lang/String;`
- `getEventsSize()I`

### army/move* (2)

- `removeEvent(I)V`
- `updateEventsAferRemoveCiv(I)V`

### update/check* (2)

- `checkCondtsitionsAndTryRun(I)V`
- `checkEvents()V`

### set* (1)

- `setEvent(ILage/of/civilizations2/jakowski/lukasz/Event_GameData;)V`

