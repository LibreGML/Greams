.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;
.super Lage/of/civilizations2/jakowski/lukasz/Graph;
.source "Menu_InGame_FlagAction_Bot_Right_Left.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;Ljava/lang/String;Ljava/lang/String;IIIIZLjava/util/List;I)V
    .locals 11

    move-object v10, p0

    move-object v0, p1

    iput-object v0, v10, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Graph;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZLjava/util/List;I)V

    return-void
.end method


# virtual methods
.method protected loadData(I)V
    .locals 7

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->iViewMode:I

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Graph;->loadData(I)V

    goto/16 :goto_9

    :cond_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->iViewMode:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;->lData:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v5

    if-le v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-ltz v1, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v4, v1

    :goto_2
    if-ge v4, v2, :cond_3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lPopulation:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;->lData:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;->lData:Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;->lData:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v5

    invoke-direct {v4, v5, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/GraphData;-><init>(ILjava/util/List;I)V

    invoke-interface {v2, p1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;->lData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->setDrawData(Z)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;->updateMoveable()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;->buildGraph()V

    goto/16 :goto_9

    :cond_4
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->iViewMode:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lTechnologyLevel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_6

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lTechnologyLevel:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;->lData:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v5

    if-le v4, v5, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, -0x1

    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-ltz v1, :cond_7

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lTechnologyLevel:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v4, v1

    :goto_5
    if-ge v4, v2, :cond_7

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lTechnologyLevel:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;->lData:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;->lData:Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;->lData:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v5

    invoke-direct {v4, v5, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/GraphData;-><init>(ILjava/util/List;I)V

    invoke-interface {v2, p1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;->lData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->setDrawData(Z)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;->updateMoveable()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;->buildGraph()V

    goto/16 :goto_9

    :cond_8
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->iViewMode:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_c

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lRank:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_6
    if-ge v1, v0, :cond_a

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lRank:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;->lData:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v5

    if-le v4, v5, :cond_9

    goto :goto_7

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    const/4 v1, -0x1

    :goto_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-ltz v1, :cond_b

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lRank:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v4, v1

    :goto_8
    if-ge v4, v2, :cond_b

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lRank:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;->lData:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;->lData:Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;->lData:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->getCivID()I

    move-result v5

    invoke-direct {v4, v5, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/GraphData;-><init>(ILjava/util/List;I)V

    invoke-interface {v2, p1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;->lData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/GraphData;

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/GraphData;->setDrawData(Z)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;->updateMoveable()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;->buildGraph()V

    :cond_c
    :goto_9
    return-void
.end method
