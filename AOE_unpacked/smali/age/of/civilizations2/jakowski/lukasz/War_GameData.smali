.class Lage/of/civilizations2/jakowski/lukasz/War_GameData;
.super Ljava/lang/Object;
.source "War_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final WAR_SCORE_MODIFIER:F = 0.7f

.field protected static final WAR_SCORE_MODIFIER2:F = 0.2f

.field private static final serialVersionUID:J


# instance fields
.field protected WAR_TAG:Ljava/lang/String;

.field protected iLastFight_InTunrs:I

.field protected iLastTurn_ConqueredProvince:I

.field private iWarTurnID:I

.field private lAggressors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;",
            ">;"
        }
    .end annotation
.end field

.field private lDefenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;",
            ">;"
        }
    .end annotation
.end field

.field protected wasAnyAttack:Z


# direct methods
.method protected constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lAggressors:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lDefenders:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iWarTurnID:I

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastFight_InTunrs:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastTurn_ConqueredProvince:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->wasAnyAttack:Z

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->addAggressor(I)V

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->addDefender(I)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iWarTurnID:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iWarTurnID:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->WAR_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final addAggressor(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lAggressors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lAggressors:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    invoke-direct {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    const/high16 v4, -0x3d380000    # -100.0f

    invoke-virtual {v2, p1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->setCivRelation_OfCivB(IIF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3, p1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->setCivRelation_OfCivB(IIF)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastFight_InTunrs:I

    sget p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastTurn_ConqueredProvince:I

    return-void
.end method

.method protected final addCasualties(II)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastFight_InTunrs:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->wasAnyAttack:Z

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object p1

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addCasualties(I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object p1

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addCasualties(I)V

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected final addCivilianEconomicLosses(III)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastFight_InTunrs:I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object p1

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addCivilianDeaths(I)V

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object p1

    invoke-virtual {p1, p3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addEconomicLosses(I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object p1

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addCivilianDeaths(I)V

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object p1

    invoke-virtual {p1, p3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addEconomicLosses(I)V

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected final addConqueredProvinces(I)V
    .locals 3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastTurn_ConqueredProvince:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addConqueredProvinces()V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addConqueredProvinces()V

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected final addDefender(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lDefenders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lDefenders:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    invoke-direct {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    const/high16 v4, -0x3d380000    # -100.0f

    invoke-virtual {v2, p1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->setCivRelation_OfCivB(IIF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3, p1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->setCivRelation_OfCivB(IIF)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastFight_InTunrs:I

    sget p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iLastTurn_ConqueredProvince:I

    return-void
.end method

.method protected final getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lAggressors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    return-object p1
.end method

.method protected final getAggressorID_ByCivID(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected final getAggressorsSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lAggressors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getAggressors_ProvincesLost(ILjava/util/List;Ljava/util/List;)Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;"
        }
    .end annotation

    new-instance p3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v0

    invoke-direct {p3, v0}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;-><init>(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-object p3
.end method

.method protected final getCasualties_Aggressors()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCasualties()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivilianDeaths()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected final getCasualties_Defenders()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCasualties()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivilianDeaths()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected final getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lDefenders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    return-object p1
.end method

.method protected final getDefenderID_ByCivID(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected final getDefendersSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lDefenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getDefenders_ProvincesLost(ILjava/util/List;Ljava/util/List;)Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;"
        }
    .end annotation

    new-instance p2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v0

    invoke-direct {p2, v0}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;-><init>(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->lProvincesLost:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-object p2
.end method

.method protected final getIsAggressor(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final getIsDefender(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final getIsInAggressors(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final getIsInDefenders(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final getParticipation_AggressorID(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCasualties()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/16 p1, 0x64

    return p1

    :cond_1
    const/high16 v0, 0x42c80000    # 100.0f

    if-nez p1, :cond_2

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCasualties()I

    move-result p1

    int-to-float p1, p1

    int-to-float v1, v1

    div-float/2addr p1, v1

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCasualties()I

    move-result p1

    int-to-float p1, p1

    int-to-float v1, v1

    div-float/2addr p1, v1

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :goto_1
    double-to-int p1, v0

    return p1
.end method

.method protected final getParticipation_DefenderID(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCasualties()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/16 p1, 0x64

    return p1

    :cond_1
    const/high16 v0, 0x42c80000    # 100.0f

    if-nez p1, :cond_2

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCasualties()I

    move-result p1

    int-to-float p1, p1

    int-to-float v1, v1

    div-float/2addr p1, v1

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCasualties()I

    move-result p1

    int-to-float p1, p1

    int-to-float v1, v1

    div-float/2addr p1, v1

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :goto_1
    double-to-int p1, v0

    return p1
.end method

.method protected final getProvinces_Aggressor_Own(I)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v3

    if-ge v1, v3, :cond_4

    move v3, v2

    const/4 v2, 0x0

    :goto_2
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v5

    if-ne v4, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    :cond_4
    return v2
.end method

.method protected final getProvinces_Aggressor_OwnTotal(I)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v4

    if-ne v3, v4, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_0
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v5

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method protected final getProvinces_Defender_Own(I)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v3

    if-ge v1, v3, :cond_4

    move v3, v2

    const/4 v2, 0x0

    :goto_2
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v5

    if-ne v4, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    :cond_4
    return v2
.end method

.method protected final getProvinces_Defender_OwnTotal(I)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v4

    if-ne v3, v4, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_0
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v5

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method protected final getWarScore()I
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v4

    if-ge v1, v4, :cond_4

    move v4, v3

    move v3, v2

    const/4 v2, 0x0

    :goto_1
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v5

    if-ge v2, v5, :cond_3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v6

    if-ne v5, v6, :cond_0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_3

    :cond_0
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v7

    if-ne v6, v7, :cond_1

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move v3, v4

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v6

    if-ge v1, v6, :cond_9

    move v6, v5

    move v5, v4

    const/4 v4, 0x0

    :goto_5
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v7

    if-ge v4, v7, :cond_8

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v8

    if-ne v7, v8, :cond_5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v7

    add-int/2addr v5, v7

    goto :goto_7

    :cond_5
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v8

    if-ge v7, v8, :cond_7

    invoke-virtual {p0, v7}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v9

    if-ne v8, v9, :cond_6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_7

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    :cond_8
    add-int/lit8 v1, v1, 0x1

    move v4, v5

    move v5, v6

    goto/16 :goto_4

    :cond_9
    int-to-float v0, v3

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    int-to-float v1, v4

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-float v4, v5

    add-int/2addr v2, v3

    add-int/2addr v2, v5

    int-to-float v2, v2

    div-float/2addr v4, v2

    mul-float v4, v4, v1

    float-to-int v1, v4

    neg-int v0, v0

    add-int/2addr v0, v1

    return v0
.end method

.method protected final getWarScore_AggressorsInProvinceValue()I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v3

    if-ge v1, v3, :cond_4

    move v3, v2

    const/4 v2, 0x0

    :goto_1
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_3

    :cond_0
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v6

    if-ne v5, v6, :cond_1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v3

    if-ge v1, v3, :cond_9

    move v3, v2

    const/4 v2, 0x0

    :goto_5
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v2, v4, :cond_8

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v5

    if-ne v4, v5, :cond_5

    goto :goto_7

    :cond_5
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v5

    if-ge v4, v5, :cond_7

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v6

    if-ne v5, v6, :cond_6

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_7

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_8
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto/16 :goto_4

    :cond_9
    return v2
.end method

.method protected final getWarScore_AggressorsInProvinceValue(I)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v5

    if-ne v4, v5, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v3

    if-ge v1, v3, :cond_7

    move v3, v2

    const/4 v2, 0x0

    :goto_4
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v2, v4, :cond_6

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v5

    if-ne v4, v5, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v5

    if-ne v4, v5, :cond_5

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v4

    sub-int/2addr v3, v4

    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto/16 :goto_3

    :cond_7
    return v2
.end method

.method protected final getWarScore_AggressorsInProvinceValue_OnlyPositive(ILjava/util/List;Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/War_Points;-><init>(I)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_5

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v5

    if-ne v4, v5, :cond_3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v4

    if-le v4, v2, :cond_2

    move v2, v4

    :cond_2
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->addPoints(I)V

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_5
    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_4
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge p2, v3, :cond_7

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    if-ne v3, v4, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_7
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    const/4 v3, 0x1

    sub-int/2addr p2, v3

    :goto_5
    if-ltz p2, :cond_c

    int-to-float v4, v1

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40200000    # 2.5f

    mul-float v5, v5, v6

    cmpl-float v5, v4, v5

    if-gez v5, :cond_b

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_b

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iNumOfLostProvinces:I

    if-gt v5, v6, :cond_8

    goto/16 :goto_7

    :cond_8
    const v5, 0x3f333333    # 0.7f

    :try_start_0
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v6

    const/4 v7, 0x3

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v6, v7, :cond_9

    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v7

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float/2addr v8, v6

    mul-float v8, v8, v4

    add-float/2addr v8, v5

    move v5, v8

    goto/16 :goto_6

    :cond_9
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v6

    const v7, 0x3eb33333    # 0.35f

    const v9, 0x3dcccccd    # 0.1f

    const v10, 0x3e4ccccd    # 0.2f

    if-ge v1, v6, :cond_a

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iNumOfLostProvinces:I

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v11

    div-int/2addr v6, v11

    int-to-float v6, v6

    mul-float v6, v6, v9

    add-float/2addr v6, v10

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v4, v9

    sub-float v4, v8, v4

    mul-float v4, v4, v10

    add-float/2addr v6, v4

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v9

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v4, v9

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float/2addr v8, v4

    mul-float v8, v8, v7

    add-float/2addr v6, v8

    move v5, v6

    goto :goto_6

    :cond_a
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iNumOfLostProvinces:I

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v6

    div-int/2addr v4, v6

    int-to-float v4, v4

    mul-float v4, v4, v9

    add-float/2addr v4, v10

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v9

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    sub-float/2addr v8, v5

    mul-float v8, v8, v7

    add-float/2addr v4, v8

    move v5, v4

    goto :goto_6

    :catch_0
    move-exception v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_6
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iPoints:I

    int-to-float v4, v4

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iMinScore:I

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v4, v4

    goto :goto_8

    :cond_b
    :goto_7
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iPoints:I

    :goto_8
    add-int/2addr v0, v4

    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_5

    :cond_c
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method protected final getWarScore_DefendersInProvinceValue()I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v3

    if-ge v1, v3, :cond_4

    move v3, v2

    const/4 v2, 0x0

    :goto_1
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_3

    :cond_0
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v6

    if-ne v5, v6, :cond_1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v3

    if-ge v1, v3, :cond_9

    move v3, v2

    const/4 v2, 0x0

    :goto_5
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v2, v4, :cond_8

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v5

    if-ne v4, v5, :cond_5

    goto :goto_7

    :cond_5
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v5

    if-ge v4, v5, :cond_7

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v6

    if-ne v5, v6, :cond_6

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_7

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_8
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto/16 :goto_4

    :cond_9
    return v2
.end method

.method protected final getWarScore_DefendersInProvinceValue(I)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v3

    if-ge v1, v3, :cond_3

    move v3, v2

    const/4 v2, 0x0

    :goto_1
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v5

    if-ne v4, v5, :cond_1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v4

    sub-int/2addr v3, v4

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_3
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_7

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v4

    if-ne v3, v4, :cond_4

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v5

    if-ne v4, v5, :cond_5

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_7
    return v2
.end method

.method protected final getWarScore_DefendersInProvinceValue_OnlyPositive(ILjava/util/List;Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/War_Points;-><init>(I)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_5

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v5

    if-ne v4, v5, :cond_3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v4

    if-le v4, v2, :cond_2

    move v2, v4

    :cond_2
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->addPoints(I)V

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_5
    const/4 p3, 0x0

    const/4 v1, 0x0

    :goto_4
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge p3, v3, :cond_7

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, p3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v4

    if-ne v3, v4, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v3, 0x1

    sub-int/2addr p3, v3

    :goto_5
    if-ltz p3, :cond_c

    int-to-float v4, v1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40200000    # 2.5f

    mul-float v5, v5, v6

    cmpl-float v5, v4, v5

    if-gez v5, :cond_b

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_b

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iNumOfLostProvinces:I

    if-gt v5, v6, :cond_8

    goto/16 :goto_7

    :cond_8
    const v5, 0x3f333333    # 0.7f

    :try_start_0
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v6

    const/4 v7, 0x3

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v6, v7, :cond_9

    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v7

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float/2addr v8, v6

    mul-float v8, v8, v4

    add-float/2addr v8, v5

    move v5, v8

    goto/16 :goto_6

    :cond_9
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v6

    const v7, 0x3eb33333    # 0.35f

    const v9, 0x3dcccccd    # 0.1f

    const v10, 0x3e4ccccd    # 0.2f

    if-ge v1, v6, :cond_a

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iNumOfLostProvinces:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v11

    div-int/2addr v6, v11

    int-to-float v6, v6

    mul-float v6, v6, v9

    add-float/2addr v6, v10

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v4, v9

    sub-float v4, v8, v4

    mul-float v4, v4, v10

    add-float/2addr v6, v4

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v9

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v4, v9

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float/2addr v8, v4

    mul-float v8, v8, v7

    add-float/2addr v6, v8

    move v5, v6

    goto :goto_6

    :cond_a
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iNumOfLostProvinces:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/War_Points;->getNumOfProvincesTotal()I

    move-result v6

    div-int/2addr v4, v6

    int-to-float v4, v4

    mul-float v4, v4, v9

    add-float/2addr v4, v10

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getConqueredProvinces()I

    move-result v9

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    sub-float/2addr v8, v5

    mul-float v8, v8, v7

    add-float/2addr v4, v8

    move v5, v4

    goto :goto_6

    :catch_0
    move-exception v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_6
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iPoints:I

    int-to-float v4, v4

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iMinScore:I

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v4, v4

    goto :goto_8

    :cond_b
    :goto_7
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/War_Points;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/War_Points;->iPoints:I

    :goto_8
    add-int/2addr v0, v4

    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_5

    :cond_c
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method protected final getWarScore_PeaceTreaty()I
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    move v4, v3

    move v3, v2

    const/4 v2, 0x0

    :goto_1
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v5

    if-ge v2, v5, :cond_3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v6

    if-ne v5, v6, :cond_0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_3

    :cond_0
    const/4 v5, 0x0

    :goto_2
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v7

    if-ne v6, v7, :cond_1

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move v3, v4

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_9

    move v6, v5

    move v5, v4

    const/4 v4, 0x0

    :goto_5
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v7

    if-ge v4, v7, :cond_8

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v8

    if-ne v7, v8, :cond_5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v7

    add-int/2addr v5, v7

    goto :goto_7

    :cond_5
    const/4 v7, 0x0

    :goto_6
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Aggressors:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v9

    if-ne v8, v9, :cond_6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->peaceTreatyGameData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_GameData;->lCivsData_Defenders:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Civs;->iCivID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceValue(I)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_7

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    :cond_8
    add-int/lit8 v1, v1, 0x1

    move v4, v5

    move v5, v6

    goto/16 :goto_4

    :cond_9
    int-to-float v0, v3

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    int-to-float v1, v4

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-float v4, v5

    add-int/2addr v2, v3

    add-int/2addr v2, v5

    int-to-float v2, v2

    div-float/2addr v4, v2

    mul-float v4, v4, v1

    float-to-int v1, v4

    neg-int v0, v0

    add-int/2addr v0, v1

    return v0
.end method

.method protected final getWarTurnID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iWarTurnID:I

    return v0
.end method

.method protected final removeAggressor(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lAggressors:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final removeDefender(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefendersSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->lDefenders:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final setWarTurnID(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->iWarTurnID:I

    return-void
.end method

.method protected final updateAfterUnion(II)V
    .locals 3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsAggressor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsAggressor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID_ByCivID(I)I

    move-result p1

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID_ByCivID(I)I

    move-result v0

    if-ltz p1, :cond_3

    if-ltz v0, :cond_3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivilianDeaths()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addCivilianDeaths(I)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCasualties()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addCasualties(I)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object p1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getEconomicLosses()I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addEconomicLosses(I)V

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->removeAggressor(I)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsDefender(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsDefender(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID_ByCivID(I)I

    move-result p1

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID_ByCivID(I)I

    move-result v0

    if-ltz p1, :cond_3

    if-ltz v0, :cond_3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCivilianDeaths()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addCivilianDeaths(I)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getCasualties()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addCasualties(I)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object p1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->getEconomicLosses()I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->addEconomicLosses(I)V

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->removeDefender(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsAggressor(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsDefender(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID_ByCivID(I)I

    move-result p2

    if-ltz p2, :cond_3

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getAggressorID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object p2

    invoke-virtual {p2, p1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->setCivID(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsDefender(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsAggressor(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID_ByCivID(I)I

    move-result p2

    if-ltz p2, :cond_3

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getDefenderID(I)Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;

    move-result-object p2

    invoke-virtual {p2, p1}, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->setCivID(I)V

    :cond_3
    :goto_0
    return-void
.end method
