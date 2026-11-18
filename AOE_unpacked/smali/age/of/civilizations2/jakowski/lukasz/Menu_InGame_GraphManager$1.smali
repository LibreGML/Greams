.class final Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_GraphManager$1;
.super Lage/of/civilizations2/jakowski/lukasz/Graph;
.source "Menu_InGame_GraphManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_GraphManager;->setActiveGraphID(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIZLjava/util/List;I)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lage/of/civilizations2/jakowski/lukasz/Graph;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZLjava/util/List;I)V

    return-void
.end method


# virtual methods
.method protected loadData(I)V
    .locals 6

    :try_start_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_GraphManager;->iActiveGraphID:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    const/4 v0, -0x1

    const/4 v1, 0x0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPlayers_Income:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPlayers_Income:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    if-le v3, v4, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-ltz v0, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPlayers_Income:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v0

    :goto_2
    if-ge v3, v2, :cond_2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPlayers_Income:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_GraphManager$1;->lData:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-direct {v3, v4, v1, v0}, Lage/of/civilizations2/jakowski/lukasz/GraphData;-><init>(ILjava/util/List;I)V

    invoke-interface {v2, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_GraphManager$1;->lData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->setDrawData(Z)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_GraphManager$1;->updateMoveable()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_GraphManager$1;->buildGraph()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    return-void
.end method
