# `Game_Calendar` 方法索引

- 文件: `.../lukasz/Game_Calendar.smali`
- 大小: **70.4 KB**
- 分组: 核心
- 说明: 日历与全局回合参数（含侵略度）
- 方法数: **22**；字段数: **16**
- super: `Ljava/lang/Object;`

## 字段（摘录）

- `AI_AGGRESSIVNESS` : `F`
- `COLONIZATION_ENABLED_SINCE_AGE_ID` : `I`
- `COLONIZATION_TECH_LEVEL` : `F`
- `CURRENT_AGEID` : `I`
- `ENABLE_COLONIZATION` : `Z`
- `ENABLE_COLONIZATION_NEUTRAL_PROVINCES` : `Z`
- `GAME_SPEED` : `F`
- `GAME_SPEED_MAX` : `F`
- `GAME_SPEED_MIN` : `F`
- `NUM_OF_DAYS_IN_MONTH` : `[I`
- `NUM_OF_MONTHS` : `I`
- `TURNS_SINCE_LAST_WAR` : `I`
- `TURN_ID` : `I`
- `currentDay` : `I`
- `currentMonth` : `I`
- `currentYear` : `I`

## 方法（按簇）

### get* (9)

- `getCurrentDate()Ljava/lang/String;`
- `getCurrentDate_CreateEvent()Ljava/lang/String;`
- `getCurrentDate_Simple()Ljava/lang/String;`
- `getDate_ByTurnID(I)Ljava/lang/String;`
- `getMonthName(I)Ljava/lang/String;`
- `getNumOfDates_ByTurnID(I)Ljava/lang/String;`
- `getNumOfDates_ByTurnID(Ljava/util/List;)Ljava/util/List;`
- `getNumOfDaysInMonth(I)I`
- `getYear()Ljava/lang/String;`

### other (8)

- `addYears(I)V`
- `backwardsDays(Ljava/util/List;I)Ljava/util/List;`
- `forwardDays(Ljava/util/List;I)Ljava/util/List;`
- `minusMonth()V`
- `minusMonth_CreateEvent()V`
- `nextDays(I)V`
- `plusMonth()V`
- `plusMonth_CreateEvent()V`

### update/check* (3)

- `updateAge()V`
- `updateAge(Z)V`
- `updateDateNextTurn()V`

### colonize/neutral* (2)

- `getCanColonize_TechLevel(I)Z`
- `getColonizationOfWastelandIsEnabled()Z`

