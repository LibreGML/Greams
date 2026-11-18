.class Lage/of/civilizations2/jakowski/lukasz/CivPlans;
.super Ljava/lang/Object;
.source "CivPlans.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iWarPreparationsSize:I

.field protected lArmiesMissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;",
            ">;"
        }
    .end annotation
.end field

.field protected warPreparations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->iWarPreparationsSize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final addNewArmyMission(ILage/of/civilizations2/jakowski/lukasz/CivArmyMission;)Z
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;->iProvinceID:I

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method protected final addNewWarPreparations(IIII)V
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->isPreparingForTheWar(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->updatePreparationsTime(II)V

    return-void

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Plans: addNewWarPreparations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "AoC"

    invoke-interface {v0, v1, p2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p3, v1, p4}, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;-><init>(IIZI)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->iWarPreparationsSize:I

    :cond_1
    return-void
.end method

.method protected final checkArmyMissions(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;->iProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final checkWarPreparations(I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;->onCivID:I

    invoke-virtual {v2, p1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->iWarPreparationsSize:I

    move v1, v4

    :cond_0
    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method protected final getPreparationsTime(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;->onCivID:I

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;->iNumOfTurnsLeft:I

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final getPreparations_LeaderCivID(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;->onCivID:I

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;->iLeaderCivID:I

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final haveMission(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;->iProvinceID:I

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final haveMission_Army(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;->iProvinceID:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;->iArmy:I

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected final haveMission_Army_ToProvinceID(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;->toProvinceID:I

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;->iArmy:I

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final isPreparingForTheWar()Z
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final isPreparingForTheWar(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;->onCivID:I

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final isPreparingForTheWar(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;->onCivID:I

    if-ne v2, p2, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;->iLeaderCivID:I

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final removeMission(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;->iProvinceID:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final updateObsolateMissions()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;->iObsolate:I

    add-int/lit8 v3, v2, -0x1

    iput v3, v1, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;->iObsolate:I

    if-gtz v2, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->lArmiesMissions:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final updatePreparationsTime(II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;->onCivID:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->warPreparations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;

    iput p2, p1, Lage/of/civilizations2/jakowski/lukasz/AI_WarPreparations;->iNumOfTurnsLeft:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
