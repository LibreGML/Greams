.class Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;
.super Ljava/lang/Object;
.source "RandomGame_Manager.java"


# instance fields
.field private iCivilizationsSize:I

.field private iNeutralArmy:I

.field private lPlayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->iCivilizationsSize:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->iNeutralArmy:I

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->lPlayers:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->lPlayers:Ljava/util/List;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->lPlayers:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected final addPlayer()V
    .locals 4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->lPlayers:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final checkCapitals()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayersSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getCapitalProvinceID()I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v1, -0x1

    :try_start_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v2

    if-ltz v2, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->setCapitalProvinceID(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->setCapitalProvinceID(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected final getCivilizationsSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->iCivilizationsSize:I

    return v0
.end method

.method protected final getNeutralArmy()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->iNeutralArmy:I

    return v0
.end method

.method protected final getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->lPlayers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    return-object p1
.end method

.method protected final getPlayersSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->lPlayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final isTagTaken(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayersSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->lPlayers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->lPlayers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final removePlayer(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->lPlayers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final setCivilizationsSize(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->iCivilizationsSize:I

    return-void
.end method

.method protected final setNeutralArmy(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->iNeutralArmy:I

    return-void
.end method
