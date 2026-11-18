.class Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;
.super Ljava/lang/Object;
.source "Game_Calendar.java"


# static fields
.field protected static AI_AGGRESSIVNESS:F = 0.0f

.field protected static final COLONIZATION_ENABLED_SINCE_AGE_ID:I = 0x4

.field protected static COLONIZATION_TECH_LEVEL:F = 0.0f

.field protected static CURRENT_AGEID:I = 0x0

.field protected static ENABLE_COLONIZATION:Z = false

.field protected static ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z = false

.field protected static GAME_SPEED:F = 0.0f

.field protected static GAME_SPEED_MAX:F = 0.0f

.field protected static GAME_SPEED_MIN:F = 0.0f

.field private static final NUM_OF_DAYS_IN_MONTH:[I

.field private static final NUM_OF_MONTHS:I = 0xc

.field protected static TURNS_SINCE_LAST_WAR:I

.field protected static TURN_ID:I

.field protected static currentDay:I

.field protected static currentMonth:I

.field protected static currentYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sput v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURNS_SINCE_LAST_WAR:I

    sput v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    const/16 v0, 0x7de

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->GAME_SPEED:F

    const/high16 v0, 0x3e000000    # 0.125f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->GAME_SPEED_MIN:F

    const/high16 v0, 0x41200000    # 10.0f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->GAME_SPEED_MAX:F

    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->AI_AGGRESSIVNESS:F

    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION:Z

    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION_NEUTRAL_PROVINCES:Z

    const v0, 0x3f4ccccd    # 0.8f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->COLONIZATION_TECH_LEVEL:F

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->NUM_OF_DAYS_IN_MONTH:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static addYears(I)V
    .locals 1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    add-int/2addr v0, p0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->updateAge()V

    return-void
.end method

.method private static backwardsDays(Ljava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    const/4 v4, 0x3

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_TurnDays(I)I

    move-result v3

    :goto_1
    if-lez v3, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p0, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v2, :cond_1

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p0, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p0, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAgeOfYear(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v3, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->NUM_OF_DAYS_IN_MONTH:[I

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v2

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p0, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p0
.end method

.method private static forwardDays(Ljava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    const/4 v5, 0x3

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_TurnDays(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->NUM_OF_DAYS_IN_MONTH:[I

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v2

    aget v4, v4, v6

    if-le v3, v4, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->NUM_OF_DAYS_IN_MONTH:[I

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v2

    aget v4, v4, v6

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xc

    if-le v3, v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAgeOfYear(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p0
.end method

.method protected static getCanColonize_TechLevel(I)Z
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result p0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->COLONIZATION_TECH_LEVEL:F

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static getColonizationOfWastelandIsEnabled()Z
    .locals 1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->ENABLE_COLONIZATION:Z

    return v0
.end method

.method protected static final getCurrentDate()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getMonthName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getYear(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static final getCurrentDate_CreateEvent()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Month:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getMonthName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Year:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getYear(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static final getCurrentDate_Simple()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getYear(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static final getDate_ByTurnID(I)Ljava/lang/String;
    .locals 7

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    if-ne p0, v0, :cond_0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getCurrentDate()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, " "

    if-le p0, v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sub-int/2addr p0, v6

    invoke-static {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->forwardDays(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getMonthName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getYear(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sub-int/2addr v6, p0

    invoke-static {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->backwardsDays(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getMonthName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getYear(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static final getMonthName(I)Ljava/lang/String;
    .locals 2

    const-string v0, "January"

    const-string v1, "December"

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v0, "November"

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v0, "October"

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v0, "August"

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v0, "September"

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v0, "July"

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v0, "June"

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v0, "May"

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v0, "April"

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v0, "March"

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v0, "February"

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static final getNumOfDates_ByTurnID(I)Ljava/lang/String;
    .locals 10

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    const-string v1, "DaysX"

    const/4 v2, 0x0

    if-ne p0, v0, :cond_0

    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {p0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, " "

    const-string v6, ""

    if-le p0, v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sub-int/2addr p0, v1

    invoke-static {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->forwardDays(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getMonthName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getYear(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    sub-int/2addr v7, p0

    invoke-static {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->backwardsDays(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getNumOfDates_ByTurnID(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v9, "YearsX"

    invoke-virtual {v8, v9, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v6

    goto :goto_1

    :cond_3
    :goto_0
    move-object v3, v5

    :goto_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v6

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v8, "MonthsX"

    invoke-virtual {v7, v8, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_5

    goto :goto_3

    :cond_5
    move-object v5, v6

    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_6
    move-object v3, v6

    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_7

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v3, v1, p0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    :cond_7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNumOfDates_ByTurnID(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    const/4 v4, 0x2

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    if-ne v5, v6, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    if-le v5, v6, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->NUM_OF_DAYS_IN_MONTH:[I

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v7, v3

    aget v6, v6, v7

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr v6, p0

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gez p0, :cond_6

    const/16 p0, 0xb

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v3, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v4, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gez p0, :cond_6

    invoke-interface {v0, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr v6, p0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    if-ge v2, v5, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    if-le v2, v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->NUM_OF_DAYS_IN_MONTH:[I

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v3

    aget v3, v4, v5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr v3, p0

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    rsub-int/lit8 v4, v4, 0xc

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    if-le v2, v4, :cond_5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->NUM_OF_DAYS_IN_MONTH:[I

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v3

    aget v3, v4, v5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr v3, p0

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_0
    return-object v0
.end method

.method protected static final getNumOfDaysInMonth(I)I
    .locals 1

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->NUM_OF_DAYS_IN_MONTH:[I

    add-int/lit8 p0, p0, -0x1

    aget p0, v0, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/16 p0, 0x1c

    return p0
.end method

.method protected static final getYear()Ljava/lang/String;
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getYear(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static minusMonth()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    sub-int/2addr v1, v0

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    if-ge v1, v0, :cond_0

    const/16 v1, 0xc

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    :cond_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->NUM_OF_DAYS_IN_MONTH:[I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    sub-int/2addr v3, v0

    aget v2, v2, v3

    if-le v1, v2, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->NUM_OF_DAYS_IN_MONTH:[I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    sub-int/2addr v2, v0

    aget v1, v1, v2

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    :cond_1
    :goto_0
    return-void
.end method

.method protected static minusMonth_CreateEvent()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Month:I

    sub-int/2addr v2, v0

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Month:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Month:I

    if-ge v1, v0, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    const/16 v2, 0xc

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Month:I

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Day:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->NUM_OF_DAYS_IN_MONTH:[I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Month:I

    sub-int/2addr v3, v0

    aget v2, v2, v3

    if-le v1, v2, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->NUM_OF_DAYS_IN_MONTH:[I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Month:I

    sub-int/2addr v3, v0

    aget v2, v2, v3

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Day:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Month:I

    :cond_1
    :goto_0
    return-void
.end method

.method protected static nextDays(I)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    add-int/2addr v1, p0

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    :cond_0
    :goto_0
    sget p0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->NUM_OF_DAYS_IN_MONTH:[I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    sub-int/2addr v2, v0

    aget v1, v1, v2

    if-le p0, v1, :cond_1

    sget p0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->NUM_OF_DAYS_IN_MONTH:[I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    sub-int/2addr v2, v0

    aget v1, v1, v2

    sub-int/2addr p0, v1

    sput p0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    sget p0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    add-int/2addr p0, v0

    sput p0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    const/16 v1, 0xc

    if-le p0, v1, :cond_0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    sget p0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    add-int/2addr p0, v0

    sput p0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    :cond_1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->updateAge()V

    return-void
.end method

.method protected static plusMonth()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    add-int/2addr v1, v0

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    const/16 v2, 0xc

    if-le v1, v2, :cond_0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    :cond_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->NUM_OF_DAYS_IN_MONTH:[I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    sub-int/2addr v3, v0

    aget v2, v2, v3

    if-le v1, v2, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->NUM_OF_DAYS_IN_MONTH:[I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    sub-int/2addr v2, v0

    aget v1, v1, v2

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    :cond_1
    :goto_0
    return-void
.end method

.method protected static plusMonth_CreateEvent()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Month:I

    add-int/2addr v2, v0

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Month:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Month:I

    const/16 v2, 0xc

    if-le v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Month:I

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Day:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->NUM_OF_DAYS_IN_MONTH:[I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Month:I

    sub-int/2addr v3, v0

    aget v2, v2, v3

    if-le v1, v2, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->NUM_OF_DAYS_IN_MONTH:[I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Month:I

    sub-int/2addr v3, v0

    aget v2, v2, v3

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Day:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_Month:I

    :cond_1
    :goto_0
    return-void
.end method

.method protected static updateAge()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->updateAge(Z)V

    return-void
.end method

.method protected static updateAge(Z)V
    .locals 5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAgeOfYear(I)I

    move-result v0

    if-eqz p0, :cond_0

    sget p0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v1

    if-ge p0, v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Message_Age;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Message_Age;-><init>(I)V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    return-void
.end method

.method protected static updateDateNextTurn()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_TurnDays(I)I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->nextDays(I)V

    return-void
.end method
