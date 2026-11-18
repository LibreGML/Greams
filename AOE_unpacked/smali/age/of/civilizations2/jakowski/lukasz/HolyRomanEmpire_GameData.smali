.class public Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;
.super Ljava/lang/Object;
.source "HolyRomanEmpire_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iElectorsSize:I

.field private iEmperorAuthority:I

.field private iEmperorID:I

.field private iNextElectionsIn:I

.field private iPrincesSize:I

.field private iProvincesSize:I

.field private lElectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lPrinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected lVotesFor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lProvinces:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iProvincesSize:I

    const/4 v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorAuthority:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lElectors:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iElectorsSize:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iPrincesSize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lVotesFor:Ljava/util/List;

    const/16 v0, 0x1e

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iNextElectionsIn:I

    return-void
.end method


# virtual methods
.method protected final addElector(I)V
    .locals 2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElectorsSize()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lElectors:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lElectors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iElectorsSize:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->buildVotesFor()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final addPrince(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iPrincesSize:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setIsPartOfHolyRomanEmpire(Z)V

    return-void
.end method

.method protected final addProvince(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getProvinces(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iProvincesSize:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setIsPartOfHolyRomanEmpire(Z)V

    return v0
.end method

.method protected final addStrongestPrinceAsElector()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getIsElector(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getIsEmperor(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countPopulation()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countPopulation()I

    move-result v4

    if-le v3, v4, :cond_2

    move v2, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->addElector(I)V

    :cond_4
    return-void
.end method

.method protected final buildVotesFor()V
    .locals 4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lVotesFor:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lVotesFor:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lVotesFor:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElectorsSize()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lVotesFor:Ljava/util/List;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElector(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lVotesFor:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lVotesFor:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lVotesFor:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :goto_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElectorsSize()I

    move-result v2

    if-ge v1, v2, :cond_4

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElector(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lVotesFor:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lVotesFor:Ljava/util/List;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElector(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lVotesFor:Ljava/util/List;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElector(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method protected final getElector(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lElectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getElectorsSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iElectorsSize:I

    return v0
.end method

.method protected final getEmperor()I
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected final getEmperorAuthority()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorAuthority:I

    return v0
.end method

.method protected final getIsElector(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElectorsSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElector(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

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

.method protected getIsEmperor(I)Z
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorID:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected final getIsImperialProvince(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getProvinces(I)I

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

.method protected final getIsPrince(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

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

.method protected final getNextElectionsIn()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iNextElectionsIn:I

    return v0
.end method

.method protected final getPrince(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getPrincesSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iPrincesSize:I

    return v0
.end method

.method protected final getPrincesSize_True()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected final getProvinces(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getProvincesSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iProvincesSize:I

    return v0
.end method

.method protected final randomNextElections()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iNextElectionsIn:I

    return-void
.end method

.method protected final removeElector(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElectorsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lElectors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lElectors:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lElectors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iElectorsSize:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->buildVotesFor()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final removePrince(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v2

    if-ne v2, p1, :cond_5

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setIsPartOfHolyRomanEmpire(Z)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->removeElector(I)V

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iPrincesSize:I

    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElectorsSize()I

    move-result v2

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lElectors:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v1, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lElectors:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorID:I

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElectorsSize()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getElector(I)I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorID:I

    goto :goto_2

    :cond_2
    const/4 p1, -0x1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorID:I

    goto :goto_2

    :cond_3
    if-le p1, v1, :cond_4

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorID:I

    :cond_4
    :goto_2
    return-void

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method protected final removePrinceID(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->removePrince(I)V

    return-void
.end method

.method protected final removeProvince(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getProvinces(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setIsPartOfHolyRomanEmpire(Z)V

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iProvincesSize:I

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final setElectorID(I)V
    .locals 1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getIsElector(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->removeElector(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->addElector(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected final setEmperor(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorID:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->removeElector(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final setEmperorAuthority(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorAuthority:I

    return-void
.end method

.method protected final setEmperorID(I)V
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorID:I

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorID:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iEmperorID:I

    :goto_1
    return-void
.end method

.method protected final setNextElectionsIn(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->iNextElectionsIn:I

    return-void
.end method

.method protected final updateHRE_AfterRemoveCivilization(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->removePrince(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v1

    if-le v1, p1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->lPrinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
