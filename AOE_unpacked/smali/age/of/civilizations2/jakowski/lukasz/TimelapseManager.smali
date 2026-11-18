.class Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;
.super Ljava/lang/Object;
.source "TimelapseManager.java"


# static fields
.field protected static final MAX_SPEED:I = 0x6

.field protected static PAUSE:Z

.field protected static SOURCE:I

.field protected static SPEED:I

.field protected static TIME_LAST_UPDATE:J

.field protected static TIME_PAST:J

.field protected static final TIME_REQUIRED_TO_ACTION:[I


# instance fields
.field protected iTimelineTurnID:I

.field protected timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;

.field protected timelapseOwnersGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Owners_GameData;

.field protected timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

.field protected timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

.field protected timelineOwners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected timelineOwners_Capitals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

.field protected timelineOwners_IsOccupied:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->TIME_REQUIRED_TO_ACTION:[I

    const/4 v0, 0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->SPEED:I

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->PAUSE:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->TIME_PAST:J

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->TIME_LAST_UPDATE:J

    return-void

    :array_0
    .array-data 4
        0x1
        0x7d0
        0x5dc
        0x3e8
        0x2ee
        0x1f4
        0xfa
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Owners_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Owners_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseOwnersGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Owners_GameData;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_IsOccupied:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Capitals:Ljava/util/List;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->iTimelineTurnID:I

    return-void
.end method

.method private final timePasted()Z
    .locals 5

    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->TIME_PAST:J

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->getRequiredTime()I

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


# virtual methods
.method protected final addChange(IIZ)V
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;->iProvinceID:I

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;

    iput p2, p1, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;->iToCivID:I

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;

    iput-boolean p3, p1, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;->isOccupied:Z

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;

    invoke-direct {v1, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;-><init>(IIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final buildTimeline()V
    .locals 12

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->clearTimeline()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->iTimelineTurnID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->resetTime()V

    const/4 v2, 0x1

    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->PAUSE:Z

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseOwnersGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Owners_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Owners_GameData;->lProvinceOwnersAtBeginning:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseOwnersGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Owners_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Owners_GameData;->lProvinceOwnersAtBeginning:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_IsOccupied:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Capitals;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->iTimelineTurnID:I

    add-int/2addr v5, v2

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Capitals;->getCapitalID(I)I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v1, 0x1

    if-ne v5, v6, :cond_2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Capitals:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Capitals:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_4
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseOwnersGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Owners_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Owners_GameData;->lProvinceOwnersAtBeginning:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners:Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseOwnersGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Owners_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Owners_GameData;->lProvinceOwnersAtBeginning:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_IsOccupied:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_5
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Capitals;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->iTimelineTurnID:I

    add-int/2addr v5, v2

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Capitals;->getCapitalID(I)I

    move-result v3

    if-ltz v3, :cond_5

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v1, 0x1

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Capitals:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Capitals:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/SaveManager;->saveTag:Ljava/lang/String;

    if-eqz v1, :cond_a

    :try_start_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->readLocalFiles()Z

    move-result v1
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "Age_of_Civilizations"

    const-string v4, "TURN/"

    const-string v5, "TS/"

    const-string v6, "/"

    const-string v7, "saves/games/"

    if-eqz v1, :cond_7

    :try_start_1
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/SaveManager;->saveTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    goto :goto_7

    :cond_7
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/SaveManager;->saveTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    :goto_7
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_a

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->readLocalFiles()Z

    move-result v3
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "_"

    const-string v9, "_C"

    if-eqz v3, :cond_8

    :try_start_2
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/SaveManager;->saveTag:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/SaveManager;->saveTag:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    goto :goto_9

    :cond_8
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/SaveManager;->saveTag:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/SaveManager;->saveTag:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    :goto_9
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    const/4 v8, 0x0

    :goto_a
    iget-object v9, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_9

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget-object v10, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :catch_0
    move-exception v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_1
    move-exception v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_2
    move-exception v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_a
    :goto_b
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_b
    return-void
.end method

.method protected final clearTimeline()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_IsOccupied:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Capitals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected final clearTimeline_Statistics()V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lRank:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lTechnologyLevel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPlayers_Income:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPlayers_Balance:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPlayers_MilitarySpendings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lHistory:Ljava/util/List;

    return-void
.end method

.method protected final getNumOfProvinces(I)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    :cond_1
    return v0
.end method

.method protected final getPlayerIncome(II)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPlayers_Income:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :try_start_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPlayers_Income:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object p2, p2, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPlayers_Income:Ljava/util/List;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPlayers_Income:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final getRequiredTime()I
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->TIME_REQUIRED_TO_ACTION:[I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->SPEED:I

    aget v0, v0, v1

    return v0
.end method

.method protected final getTimePerc()F
    .locals 2

    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->TIME_PAST:J

    long-to-float v0, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->getRequiredTime()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method protected final loadNextTurn()V
    .locals 8

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->iTimelineTurnID:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_8

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Capitals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v1, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->iTimelineTurnID:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->iTimelineTurnID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;->iProvinceID:I

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners:Ljava/util/List;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->iTimelineTurnID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;->iProvinceID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->iTimelineTurnID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;->iToCivID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_IsOccupied:Ljava/util/List;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->iTimelineTurnID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;->iProvinceID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->iTimelineTurnID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;

    iget-boolean v6, v6, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;->isOccupied:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Capitals;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->iTimelineTurnID:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Capitals;->getCapitalID(I)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v5, v4, 0x1

    if-ne v1, v5, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Capitals:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Capitals:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->iTimelineTurnID:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners:Ljava/util/List;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->iTimelineTurnID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;->iProvinceID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->iTimelineTurnID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;->iToCivID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_IsOccupied:Ljava/util/List;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->iTimelineTurnID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;->iProvinceID:I

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->iTimelineTurnID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;

    iget-boolean v6, v6, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges;->isOccupied:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Capitals;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->iTimelineTurnID:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Capitals;->getCapitalID(I)I

    move-result v0

    if-ltz v0, :cond_5

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v5, v4, 0x1

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Capitals:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Capitals:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->iTimelineTurnID:I

    add-int/2addr v0, v2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->iTimelineTurnID:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Timeline()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Timeline_UpdateLanguage()V

    goto :goto_6

    :cond_7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInVictory()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Victory_UpdateLanguage()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToCivilizationBox_Timeline(IZ)V

    goto :goto_6

    :cond_8
    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->PAUSE:Z

    :cond_9
    :goto_6
    return-void
.end method

.method protected final newGame()V
    .locals 7

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseOwnersGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Owners_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Owners_GameData;->lProvinceOwnersAtBeginning:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->clearTimeline()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->clearTimeline_Statistics()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseOwnersGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Owners_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Owners_GameData;->lProvinceOwnersAtBeginning:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseOwnersGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Owners_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Owners_GameData;->lProvinceOwnersAtBeginning:Ljava/util/List;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseOwnersGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Owners_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Owners_GameData;->lProvinceOwnersAtBeginning:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_2
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Capitals;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v5

    invoke-direct {v4, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Capitals;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v5

    if-ge v0, v5, :cond_4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countPopulation()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfUnits()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRankScore()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->addProvinces(Ljava/util/List;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->addPopulation(Ljava/util/List;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->addRank(Ljava/util/List;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->addTechLevel(Ljava/util/List;)V

    return-void
.end method

.method protected final newTurn()V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseTurnChanges:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->updateTurnStatistics()V

    return-void
.end method

.method protected pauseUnpause()V
    .locals 2

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->PAUSE:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->PAUSE:Z

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->PAUSE:Z

    if-nez v0, :cond_2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->iTimelineTurnID:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners_Changes:Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse_TurnChanges_GameData;->lTurnChanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->buildTimeline()V

    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->PAUSE:Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Timeline()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Timeline_UpdateLanguage()V

    goto :goto_0

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInVictory()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Victory_UpdateLanguage()V

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->TIME_LAST_UPDATE:J

    :cond_2
    return-void
.end method

.method protected final resetTime()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->TIME_PAST:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->TIME_LAST_UPDATE:J

    return-void
.end method

.method protected updateSpeed(I)V
    .locals 2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->getTimePerc()F

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->SPEED:I

    add-int/2addr v1, p1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->SPEED:I

    sget p1, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->SPEED:I

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    sput v1, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->SPEED:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x6

    if-le p1, v1, :cond_1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->SPEED:I

    :cond_1
    :goto_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->TIME_REQUIRED_TO_ACTION:[I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->SPEED:I

    aget p1, p1, v1

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-long v0, p1

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->TIME_PAST:J

    return-void
.end method

.method protected final updateTime()V
    .locals 6

    :try_start_0
    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->TIME_PAST:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->TIME_LAST_UPDATE:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->TIME_PAST:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->TIME_LAST_UPDATE:J

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timePasted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->TIME_PAST:J

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->loadNextTurn()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected final updateTurnStatistics()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Capitals;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Capitals;->updateCapital(II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    :goto_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseGameData:Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_GameData;->lCivsCapitals:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Capitals;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Capitals;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v6

    if-ge v5, v6, :cond_1

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countPopulation()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfUnits()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRankScore()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v6

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->addProvinces(Ljava/util/List;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->addPopulation(Ljava/util/List;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->addRank(Ljava/util/List;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->addTechLevel(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_3
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v5

    if-ge v3, v5, :cond_2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->taxInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->prodInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getMilitaryUpkeep_Total(I)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getIncome(I)F
    move-result v5
    float-to-int v5, v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getExpenses(I)F
    move-result v6
    float-to-int v6, v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPlayers_Income:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPlayers_Balance:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPlayers_MilitarySpendings:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPlayers_Income:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->GRAPH_DATA_LIMIT_PLAYER_DATA:I

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPlayers_Income:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPlayers_Balance:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->GRAPH_DATA_LIMIT_PLAYER_DATA:I

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPlayers_Balance:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPlayers_MilitarySpendings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->GRAPH_DATA_LIMIT_PLAYER_DATA:I

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPlayers_MilitarySpendings:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    return-void
.end method
