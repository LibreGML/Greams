.class Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;
.super Ljava/lang/Object;
.source "Graph_Vertical_Data.java"


# static fields
.field private static final ANIMATION_TIME:I = 0x2d5


# instance fields
.field private iCivID:I

.field private inView:Z

.field private lTime:J

.field private lValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->inView:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lTime:J

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    return-void
.end method


# virtual methods
.method protected final buildArmiesData()V
    .locals 5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfUnits()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProvinceSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProvince(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_PopulationAllAroundTheWorld;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v2, v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_PopulationAllAroundTheWorld;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final buildArmyByProvincesData()V
    .locals 4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_PopulationByProvinces;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v2, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_PopulationByProvinces;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    return-void
.end method

.method protected final buildArmyPerCapitaData()V
    .locals 7

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfUnits()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v2, v4, :cond_0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProvinceSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProvince(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v3, v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_ArmyPerCapita;

    int-to-float v0, v0

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v0, v0, v4

    int-to-float v3, v3

    div-float/2addr v0, v3

    mul-float v0, v0, v4

    float-to-int v0, v0

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v2, v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_ArmyPerCapita;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final buildConqueredProvincesData()V
    .locals 4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_PopulationByProvinces;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfConqueredProvinces:I

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_PopulationByProvinces;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final buildConstructedBuildingsData()V
    .locals 4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_PopulationByProvinces;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_PopulationByProvinces;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final buildContintentData()V
    .locals 8

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getContinentsSize()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_2
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getContinentsSize()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_Continent;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_Continent;-><init>(II)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    const/4 v3, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getValue()I

    move-result v5

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getValue()I

    move-result v6

    if-ge v5, v6, :cond_4

    move v3, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    return-void
.end method

.method protected final buildEconomyByProvincesData()V
    .locals 4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_PopulationByProvinces;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_PopulationByProvinces;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    return-void
.end method

.method protected final buildEconomyData()V
    .locals 5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_Population;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v2, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_Population;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final buildHeights(II)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getValue()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    int-to-float v3, p1

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->setHeight(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final buildPopulationByProvincesData()V
    .locals 4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_PopulationByProvinces;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_PopulationByProvinces;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    return-void
.end method

.method protected final buildPopulationData()V
    .locals 9

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    :goto_2
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNationalitiesSize()I

    move-result v4

    if-ge v3, v4, :cond_1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_3
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    if-eq v2, v4, :cond_3

    move v3, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_4
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v5

    if-ge v2, v5, :cond_6

    if-eq v2, v3, :cond_5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    if-eq v2, v5, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_Population;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_Population;-><init>(II)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_Population;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v5, v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_Population;-><init>(II)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_Population;

    invoke-direct {v2, v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_Population;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final buildPopulationOfCivByNationalitiesData(I)V
    .locals 4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_Population;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_Population;-><init>(II)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final buildPopulationOfCivilizationAllAroundTheWorldData(I)V
    .locals 5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_PopulationAllAroundTheWorld;

    invoke-direct {v2, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_PopulationAllAroundTheWorld;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final buildTechnologyLevelsByProvincesData()V
    .locals 4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_PopulationByProvinces;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_PopulationByProvinces;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    return-void
.end method

.method protected final buildTechnologyLevelsData()V
    .locals 4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_TechnologyLevels;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value_TechnologyLevels;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final drawData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p6

    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lTime:J

    :cond_0
    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lTime:J

    const-wide/16 v3, 0x2d5

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-lez v6, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    int-to-float v1, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lTime:J

    sub-long/2addr v2, v6

    long-to-float v2, v2

    const v3, 0x44354000    # 725.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v12, v1

    move v15, v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_5

    :try_start_0
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    add-int v4, p3, p5

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getHeight()I

    move-result v2

    if-lt v15, v2, :cond_2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getHeight()I

    move-result v2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, v15

    :goto_2
    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getDataTypeID()I

    move-result v2

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move v6, v14

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    add-int v4, p3, p5

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getHeight()I

    move-result v2

    if-lt v15, v2, :cond_3

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getHeight()I

    move-result v2

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v15

    :goto_3
    sget-object v8, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move v6, v14

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILcom/badlogic/gdx/graphics/Color;)V

    :goto_4
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getHeight()I

    move-result v1

    add-int/2addr v14, v1

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getHeight()I

    move-result v1

    sub-int/2addr v15, v1

    if-gtz v15, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_5
    :goto_5
    const/4 v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    goto :goto_8

    :cond_6
    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_6
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_7

    :try_start_1
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    add-int v4, p3, p5

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getDataTypeID()I

    move-result v2

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move v6, v12

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    add-int v4, p3, p5

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move v6, v12

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V

    :goto_7
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getHeight()I

    move-result v1

    add-int/2addr v12, v1

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_7
    :goto_8
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    div-int/lit8 v1, p4, 0x2

    add-int/2addr v1, v10

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v4, v2

    float-to-int v2, v4

    sub-int v4, v1, v2

    add-int v7, p3, p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v5, v7, v1

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ee66666    # 0.45f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v8, v8, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/high16 v11, 0x42b40000    # 90.0f

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v11

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :try_start_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sub-int v2, v7, v12

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sub-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v4, v2, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sub-int v2, v7, v12

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sub-int v4, v2, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_9
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sub-int/2addr v7, v12

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v7, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sub-int/2addr v7, v2

    invoke-virtual {v1, v9, v10, v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method protected final drawData_ONLY_SPLTTED(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p6

    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lTime:J

    :cond_0
    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lTime:J

    const-wide/16 v3, 0x2d5

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-lez v6, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    int-to-float v1, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lTime:J

    sub-long/2addr v2, v6

    long-to-float v2, v2

    const v3, 0x44354000    # 725.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v12, v1

    move v15, v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_5

    :try_start_0
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    add-int v4, p3, p5

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getHeight()I

    move-result v2

    if-lt v15, v2, :cond_2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getHeight()I

    move-result v2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, v15

    :goto_2
    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getDataTypeID()I

    move-result v2

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move v6, v14

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    add-int v4, p3, p5

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getHeight()I

    move-result v2

    if-lt v15, v2, :cond_3

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getHeight()I

    move-result v2

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v15

    :goto_3
    sget-object v8, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move v6, v14

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILcom/badlogic/gdx/graphics/Color;)V

    :goto_4
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getHeight()I

    move-result v1

    add-int/2addr v14, v1

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getHeight()I

    move-result v1

    sub-int/2addr v15, v1

    if-gtz v15, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_5
    :goto_5
    const/4 v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    goto :goto_8

    :cond_6
    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_6
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_7

    :try_start_1
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    add-int v4, p3, p5

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getDataTypeID()I

    move-result v2

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move v6, v12

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    add-int v4, p3, p5

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move v6, v12

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V

    :goto_7
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getHeight()I

    move-result v1

    add-int/2addr v12, v1

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_7
    :goto_8
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->getValue()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    div-int/lit8 v1, p4, 0x2

    add-int/2addr v1, v10

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v4, v2

    float-to-int v2, v4

    sub-int v4, v1, v2

    add-int v7, p3, p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v5, v7, v1

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ee66666    # 0.45f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v8, v8, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/high16 v11, 0x42b40000    # 90.0f

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v11

    invoke-static/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sub-int/2addr v7, v12

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v2, v7, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sub-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v4, v2, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v7, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sub-int/2addr v7, v2

    invoke-virtual {v1, v9, v10, v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method protected final getCivID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->iCivID:I

    return v0
.end method

.method protected final getInView()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->inView:Z

    return v0
.end method

.method protected final getValue()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getValue()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected final getValue(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getValue()I

    move-result p1

    return p1
.end method

.method protected final getValueDataTypeID(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->getDataTypeID()I

    move-result p1

    return p1
.end method

.method protected final getValuesSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final resetAnimation()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->lTime:J

    return-void
.end method

.method protected final setInView(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data;->inView:Z

    return-void
.end method
