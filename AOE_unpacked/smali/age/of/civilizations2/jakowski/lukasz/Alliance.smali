.class Lage/of/civilizations2/jakowski/lukasz/Alliance;
.super Ljava/lang/Object;
.source "Alliance.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private allianceColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field private iCivilizationsSize:I

.field private iFormationTurnID:I

.field private lCivilizations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sAllianceName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->iFormationTurnID:I

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->sAllianceName:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->iCivilizationsSize:I

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRandomColorGameData()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object p1

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->allianceColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    return-void
.end method


# virtual methods
.method protected final addCivilization(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->iCivilizationsSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->iCivilizationsSize:I

    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->iCivilizationsSize:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v3

    const/high16 v4, 0x42820000    # 65.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->setCivRelation_OfCivB(IIF)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, p1, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->setCivRelation_OfCivB(IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInNextPlayerTurn()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->steamGame:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    if-eqz p1, :cond_4

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->steamGame:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->uploadAlliance()V

    :cond_4
    return-void
.end method

.method protected final countEconomy()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilizationsSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countEconomy()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected final countPopulation()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilizationsSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countPopulation()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected final countProvinces()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilizationsSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected final getAllianceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->sAllianceName:Ljava/lang/String;

    return-object v0
.end method

.method protected final getCivilization(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getCivilizationsSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->iCivilizationsSize:I

    return v0
.end method

.method protected final getColorOfAlliance()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->allianceColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    return-object v0
.end method

.method protected final getFormationTurnID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->iFormationTurnID:I

    return v0
.end method

.method protected final moveDown(I)V
    .locals 4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final moveUp(I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final removeCivilization(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->iCivilizationsSize:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->iCivilizationsSize:I

    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->iCivilizationsSize:I

    if-ge v0, v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->setCivRelation_OfCivB(IIF)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, p1, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->setCivRelation_OfCivB(IIF)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected final setAllianceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->sAllianceName:Ljava/lang/String;

    return-void
.end method

.method protected final setColorOfAlliance(Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->allianceColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    return-void
.end method

.method protected final setFormationTurnID(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->iFormationTurnID:I

    return-void
.end method

.method protected final updateCivilizationID(II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-boolean p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz p2, :cond_0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected final updateCivsIDs_AfterRemoveCiv(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilizationsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v1

    if-le v1, p1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Alliance;->lCivilizations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
