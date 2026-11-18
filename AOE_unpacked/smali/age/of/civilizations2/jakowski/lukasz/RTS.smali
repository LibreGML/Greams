.class Lage/of/civilizations2/jakowski/lukasz/RTS;
.super Ljava/lang/Object;
.source "RTS.java"


# static fields
.field protected static final MAX_SPEED:I = 0x6

.field protected static PAUSE:Z = true

.field protected static PAUSED_BY_NEXT_TURN:Z = false

.field protected static final SHOW_REPORT:[Z

.field protected static SOURCE:I = 0x0

.field protected static SPEED:I = 0x1

.field protected static TIME_LAST_UPDATE:J

.field protected static TIME_PAST:J

.field protected static final TIME_REQUIRED_TO_ACTION:[I

.field protected static final TIME_REQUIRED_TO_ACTION_LOADAI:[I

.field protected static final TIME_REQUIRED_TO_ACTION_MOVEUNITS:[I

.field protected static final TIME_REQUIRED_TO_ACTION_REPORT:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_REQUIRED_TO_ACTION:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_REQUIRED_TO_ACTION_MOVEUNITS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_REQUIRED_TO_ACTION_REPORT:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_REQUIRED_TO_ACTION_LOADAI:[I

    new-array v0, v0, [Z

    fill-array-data v0, :array_4

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->SHOW_REPORT:[Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_PAST:J

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_LAST_UPDATE:J

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1964
        0xfa0
        0xbb8
        0x7d0
        0x4e2
        0xfa
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x6d6
        0x4e2
        0x3e8
        0x3e8
        0x2ee
        0x1f4
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x8ca
        0x7d0
        0x6d6
        0x672
        0x5dc
        0x1f4
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2ee
        0x1f4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final addTime()Z
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getActiveTurnState()Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    if-ne v0, v1, :cond_4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView_Options()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView_EndOfGame()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-nez v0, :cond_4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveViewID()I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveView()Lage/of/civilizations2/jakowski/lukasz/View_Type;

    move-result-object v0

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->canMoveArmy:Z

    if-nez v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveViewID()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_DISEASES_MODE:I

    if-ne v0, v2, :cond_2

    :cond_1
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chooseProvinceMode:Z

    if-nez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceMoveUnits_Visible()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Visible()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRegroupArmy_Visible()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceDisband_Visible()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceBuild_Visible()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceChooseProvince_Visible()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_FlagAction()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_Budget()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisibleInGame_Event()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    return v1

    :cond_3
    :goto_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->resetTime()V

    return v1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method protected static final getRequiredTime()I
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getActiveTurnState()Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    if-ne v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_REQUIRED_TO_ACTION:[I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    aget v0, v0, v1

    return v0

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getActiveTurnState()Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->TURN_ACTIONS:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    if-ne v0, v1, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_REQUIRED_TO_ACTION_MOVEUNITS:[I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    aget v0, v0, v1

    return v0

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_REQUIRED_TO_ACTION_REPORT:[I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    aget v0, v0, v1

    return v0

    :cond_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getActiveTurnState()Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->LOAD_AI_RTO:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    if-eq v0, v1, :cond_4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getActiveTurnState()Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->LOADING_NEXT_TURN:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_REQUIRED_TO_ACTION:[I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    aget v0, v0, v1

    return v0

    :cond_4
    :goto_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_REQUIRED_TO_ACTION_LOADAI:[I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    aget v0, v0, v1

    return v0
.end method

.method protected static final getTimePerc()F
    .locals 2

    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_PAST:J

    long-to-float v0, v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->getRequiredTime()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method protected static isEnabled()Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected static pauseUnpause()V
    .locals 3

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSE:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSE:Z

    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSED_BY_NEXT_TURN:Z

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSE:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_LAST_UPDATE:J

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSE:Z

    if-eqz v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Paused"

    goto :goto_0

    :cond_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Unpaused"

    :goto_0
    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    return-void
.end method

.method protected static final reset()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSE:Z

    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSED_BY_NEXT_TURN:Z

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->resetTime()V

    return-void
.end method

.method protected static final resetTime()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_PAST:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_LAST_UPDATE:J

    return-void
.end method

.method protected static final showReport()Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->SHOW_REPORT:[Z

    sget v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    aget-boolean v0, v0, v1

    return v0
.end method

.method private static final timePasted()Z
    .locals 5

    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_PAST:J

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->getRequiredTime()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static updateSpeed(I)V
    .locals 3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->getTimePerc()F

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    add-int/2addr v1, p0

    sput v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    sget p0, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    const/4 v1, 0x1

    if-ge p0, v1, :cond_0

    sput v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x6

    if-le p0, v1, :cond_1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    :cond_1
    :goto_0
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_REQUIRED_TO_ACTION:[I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    aget p0, p0, v1

    int-to-float p0, p0

    mul-float p0, p0, v0

    float-to-long v0, p0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_PAST:J

    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Speed"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    return-void
.end method

.method protected static final updateTime()V
    .locals 6

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->addTime()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_PAST:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_LAST_UPDATE:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_PAST:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_LAST_UPDATE:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_LAST_UPDATE:J

    :goto_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->timePasted()Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_PAST:J

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getActiveTurnState()Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    if-ne v0, v1, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->tryToTakeNexTurn()V

    goto :goto_1

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getActiveTurnState()Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->TURN_ACTIONS:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    if-ne v0, v1, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->tryToTakeNexTurn()V

    goto :goto_1

    :cond_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getActiveTurnState()Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->LOAD_AI_RTO:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    if-eq v0, v1, :cond_3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getActiveTurnState()Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->LOADING_NEXT_TURN:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    if-ne v0, v1, :cond_4

    :cond_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceInfo()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->tryToTakeNexTurn()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->resetTime()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected static updateTimePast_AfterAction(F)V
    .locals 4

    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_PAST:J

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_REQUIRED_TO_ACTION:[I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/RTS;->SPEED:I

    aget v2, v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p0

    float-to-int p0, v2

    int-to-long v2, p0

    sub-long/2addr v0, v2

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_PAST:J

    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_PAST:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    sput-wide v2, Lage/of/civilizations2/jakowski/lukasz/RTS;->TIME_PAST:J

    :cond_0
    return-void
.end method
