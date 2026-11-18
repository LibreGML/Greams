.class Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;
.super Ljava/lang/Object;
.source "Terrain_GameData3.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private fBaseDevelopmentLevel:F

.field private fBuildCostModifier:F

.field private fDefensiveModifier:F

.field private fEconomyGrowthModifier:F

.field private fMilitaryUpkeepModifier:F

.field private fMovementCost:F

.field private fPopulationGrowthModifier:F

.field private iBaseProvinceValue:I

.field private oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field private sIconName:Ljava/lang/String;

.field private sName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->sName:Ljava/lang/String;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->sIconName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fMovementCost:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fDefensiveModifier:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fMilitaryUpkeepModifier:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fPopulationGrowthModifier:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fEconomyGrowthModifier:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fBuildCostModifier:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fBaseDevelopmentLevel:F

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->iBaseProvinceValue:I

    return-void
.end method


# virtual methods
.method protected final getBaseDevelopmentLevel()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fBaseDevelopmentLevel:F

    return v0
.end method

.method protected final getBaseProvinceValue()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->iBaseProvinceValue:I

    return v0
.end method

.method protected final getBuildCostModifier()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fBuildCostModifier:F

    return v0
.end method

.method protected final getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    return-object v0
.end method

.method protected final getDefensiveModifier()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fDefensiveModifier:F

    return v0
.end method

.method protected final getEconomyGrowthModifier()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fEconomyGrowthModifier:F

    return v0
.end method

.method protected final getIconName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->sIconName:Ljava/lang/String;

    return-object v0
.end method

.method protected final getMilitaryUpkeepModifier()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fMilitaryUpkeepModifier:F

    return v0
.end method

.method protected final getMovementCost()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fMovementCost:F

    return v0
.end method

.method protected final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->sName:Ljava/lang/String;

    return-object v0
.end method

.method protected final getPopulationGrowthModifier()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fPopulationGrowthModifier:F

    return v0
.end method

.method protected final setBaseDevelopmentLevel(F)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fBaseDevelopmentLevel:F

    return-void
.end method

.method protected final setBaseProvinceValue(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->iBaseProvinceValue:I

    return-void
.end method

.method protected final setBuildCostModifier(F)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fBuildCostModifier:F

    return-void
.end method

.method protected final setColor(Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    return-void
.end method

.method protected final setDefensiveModifier(F)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fDefensiveModifier:F

    return-void
.end method

.method protected final setEconomyGrowthModifier(F)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fEconomyGrowthModifier:F

    return-void
.end method

.method protected final setIconName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->sIconName:Ljava/lang/String;

    return-void
.end method

.method protected final setMilitaryUpkeepModifier(F)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fMilitaryUpkeepModifier:F

    return-void
.end method

.method protected final setMovementCost(F)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fMovementCost:F

    return-void
.end method

.method protected final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->sName:Ljava/lang/String;

    return-void
.end method

.method protected final setPopulationGrowthModifier(F)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->fPopulationGrowthModifier:F

    return-void
.end method
