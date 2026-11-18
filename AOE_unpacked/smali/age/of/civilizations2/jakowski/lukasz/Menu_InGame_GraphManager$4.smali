.class final Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_GraphManager$4;
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
    .locals 8

    :try_start_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_GraphManager;->iActiveGraphID:I

    const/16 v1, 0x6a

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_GraphManager$4;->lData:Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-direct {v4, v1, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/GraphData;-><init>(ILjava/util/List;I)V

    invoke-interface {v3, p1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_GraphManager$4;->lData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->setDrawData(Z)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_GraphManager$4;->updateMoveable()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_GraphManager$4;->buildGraph()V

    goto/16 :goto_5

    :cond_2
    const/4 v2, -0x1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    if-ge v1, v3, :cond_4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_GraphManager$4;->lData:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v5

    if-le v4, v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, -0x1

    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-ltz v1, :cond_5

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v4, v1

    :goto_4
    if-ge v4, v3, :cond_5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_GraphManager$4;->lData:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_GraphManager$4;->lData:Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_GraphManager$4;->lData:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v5

    invoke-direct {v4, v5, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/GraphData;-><init>(ILjava/util/List;I)V

    invoke-interface {v3, p1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_GraphManager$4;->lData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->setDrawData(Z)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_GraphManager$4;->updateMoveable()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_GraphManager$4;->buildGraph()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_5
    return-void
.end method
