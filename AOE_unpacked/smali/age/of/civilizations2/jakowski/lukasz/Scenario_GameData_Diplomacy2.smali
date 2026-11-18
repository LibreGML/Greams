.class Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;
.super Ljava/lang/Object;
.source "Scenario_GameData_Diplomacy2.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private lAlliances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;",
            ">;"
        }
    .end annotation
.end field

.field private lDefensivePacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;",
            ">;"
        }
    .end annotation
.end field

.field private lGuarantee:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;",
            ">;"
        }
    .end annotation
.end field

.field private lMilitaryAccess:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;",
            ">;"
        }
    .end annotation
.end field

.field private lPacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;",
            ">;"
        }
    .end annotation
.end field

.field private lRelations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;",
            ">;"
        }
    .end annotation
.end field

.field private lTruces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;",
            ">;"
        }
    .end annotation
.end field

.field private lVassals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final buildData()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lAlliances:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lRelations:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lPacts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lVassals:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lMilitaryAccess:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lDefensivePacts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lGuarantee:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lTruces:Ljava/util/List;

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliancesSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lAlliances:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getAllianceName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getColorOfAlliance()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getColorOfAlliance()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getColorOfAlliance()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;-><init>(FFF)V

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;-><init>(Ljava/lang/String;Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilizationsSize()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lAlliances:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;->addCiv(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_7

    const/4 v2, 0x1

    :goto_3
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_5

    if-eq v1, v2, :cond_4

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lRelations:Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v4, v1, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;-><init>(III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGuarantee(II)I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lGuarantee:Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGuarantee(II)I

    move-result v5

    invoke-direct {v4, v1, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;-><init>(III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getMilitaryAccess(II)I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lMilitaryAccess:Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getMilitaryAccess(II)I

    move-result v5

    invoke-direct {v4, v1, v2, v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;-><init>(III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v3

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lVassals:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_7
    const/4 v1, 0x1

    :goto_4
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_c

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    :goto_5
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v4

    if-ge v3, v4, :cond_b

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivNonAggressionPact(II)I

    move-result v4

    if-lez v4, :cond_8

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lPacts:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivNonAggressionPact(II)I

    move-result v6

    invoke-direct {v5, v1, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;-><init>(III)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getDefensivePact(II)I

    move-result v4

    if-lez v4, :cond_9

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lDefensivePacts:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getDefensivePact(II)I

    move-result v6

    invoke-direct {v5, v1, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;-><init>(III)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivTruce(II)I

    move-result v4

    if-lez v4, :cond_a

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lTruces:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivTruce(II)I

    move-result v6

    invoke-direct {v5, v1, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;-><init>(III)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    move v1, v2

    goto :goto_4

    :cond_c
    return-void
.end method

.method protected final getAlliances()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_AlliancesData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lAlliances:Ljava/util/List;

    return-object v0
.end method

.method protected final getDefensivePacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lDefensivePacts:Ljava/util/List;

    return-object v0
.end method

.method protected final getGuarantee()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lGuarantee:Ljava/util/List;

    return-object v0
.end method

.method protected final getMilitaryAccess()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lMilitaryAccess:Ljava/util/List;

    return-object v0
.end method

.method protected final getPacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lPacts:Ljava/util/List;

    return-object v0
.end method

.method protected final getRelations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lRelations:Ljava/util/List;

    return-object v0
.end method

.method protected final getTruces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lTruces:Ljava/util/List;

    return-object v0
.end method

.method protected final getVassals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy2;->lVassals:Ljava/util/List;

    return-object v0
.end method
