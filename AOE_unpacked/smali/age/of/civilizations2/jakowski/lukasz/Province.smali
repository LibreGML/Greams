.class Lage/of/civilizations2/jakowski/lukasz/Province;
.super Ljava/lang/Object;
.source "Province.java"


# static fields
.field protected static final MAX_DEFENSIVE_POSITION:I = 0x32

.field protected static final STABILITY_ARMY:F = 0.65f

.field protected static final STABILITY_CORE:F = 0.05f

.field protected static final STABILITY_DISEASE:F = 0.2f

.field protected static final STABILITY_HAPPINESS:F = 0.3f

.field protected static final STABILITY_HAPPINESS_MIN:F = 0.5f

.field protected static final STABILITY_HAPPINESS_MIN_LOWER_STABILITY:F = -0.55f

.field protected static final STABILITY_LARGEST_GROUP:F = 0.215f

.field protected static final STABILITY_OCCUPIED:F = 0.45f

.field protected static final STABILITY_PERC_OF_TOTAL:F = 1.275f

.field protected static final STABILITY_REV_RISK:F = 0.2f


# instance fields
.field private belowZeroPosX:Z

.field private bordersWithEnemy:Z

.field private drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

.field private drawCities:Z

.field private drawNuclearExplosion:Z

.field private drawProvince:Z

.field protected fPopulationGrowthRate:F

.field private fProvinceStability:F

.field protected iAdministrationCost:F

.field private iArmyWasRecruited:B

.field private iBasin:I

.field private iCenterX:I

.field private iCenterY:I

.field private iCitiesSize:I

.field private iCivRegionID:I

.field private iContinentID:I

.field private iDangerLevel:I

.field private iDangerLevel_WithArmy:I

.field private iFromCivID:I

.field protected iIncome_Production:F

.field protected iIncome_Taxation:F

.field private iMaxX:I

.field private iMaxY:I

.field private iMinX:I

.field private iMinY:I

.field private iNeighboringProvincesSize:I

.field private iNeighboringSeaProvincesSize:I

.field private iNumOfNeighboringNeutralProvinces:B

.field private iPointsSize:I

.field private iPotential:I

.field private iProvinceBordersLandByLandSize:I

.field private iProvinceBordersLandBySeaSize:I

.field private iProvinceBordersSeaBySeaSize:I

.field private iProvinceID:I

.field private iRecruitableArmyPoints:I

.field private iRegionID:I

.field private iShiftX:I

.field private iShiftY:I

.field private iTerrainTypeID:I

.field private iTranslateProvincePosX:I

.field private iWondersSize:I

.field private lCities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/City;",
            ">;"
        }
    .end annotation
.end field

.field private lColorTime:J

.field private lMountains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Mountain;",
            ">;"
        }
    .end annotation
.end field

.field private lNeighboringProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private lNeighboringSeaProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private lPointsX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private lPointsY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private lProvinceBordersLandByLand:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_Border;",
            ">;"
        }
    .end annotation
.end field

.field private lProvinceBordersLandBySea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_Border;",
            ">;"
        }
    .end annotation
.end field

.field private lProvinceBordersSeaBySea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_Border;",
            ">;"
        }
    .end annotation
.end field

.field private lProvince_ArmyBoxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;",
            ">;"
        }
    .end annotation
.end field

.field private lWonders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Wonder;",
            ">;"
        }
    .end annotation
.end field

.field private provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

.field private provincePort:Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;

.field private sProvinceName:Ljava/lang/String;

.field protected saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

.field private seaProvince:Z

.field private updateColorTime:Z

.field protected viewBool:Z

.field protected was:Z


# direct methods
.method protected constructor <init>(ILage/of/civilizations2/jakowski/lukasz/Province_GameData2;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    const/4 v1, 0x0

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->sProvinceName:Ljava/lang/String;

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->seaProvince:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawCities:Z

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iCitiesSize:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iWondersSize:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iDangerLevel:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iDangerLevel_WithArmy:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iRecruitableArmyPoints:I

    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iArmyWasRecruited:B

    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iNumOfNeighboringNeutralProvinces:B

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->bordersWithEnemy:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringProvinces:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    const/4 v3, -0x1

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iBasin:I

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandBySeaSize:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersSeaBySeaSize:I

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iCivRegionID:I

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsX:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsY:Ljava/util/List;

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvince_ArmyBoxes:Ljava/util/List;

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->belowZeroPosX:Z

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawProvince:Z

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;

    invoke-direct {v4, v0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;-><init>(II)V

    iput-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provincePort:Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iFromCivID:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lColorTime:J

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->updateColorTime:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->viewBool:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iIncome_Taxation:F

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iIncome_Production:F

    const/4 v2, 0x0

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iAdministrationCost:F

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    invoke-direct {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;-><init>()V

    iput-object v4, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->oPopulation:Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getNeighboringProvinces()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getNeighboringProvinces()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iNeighboringProvincesSize:I

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getNeighboringSeaProvinces()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getNeighboringSeaProvinces()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iNeighboringSeaProvincesSize:I

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsX()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMaxX:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsY()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMaxY:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsX()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_6

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsX:Ljava/util/List;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsX()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsY:Ljava/util/List;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsY()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsX()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    if-le v5, v6, :cond_2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsX()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    :cond_2
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMaxX:I

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsX()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsX()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMaxX:I

    :cond_3
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsY()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    if-le v5, v6, :cond_4

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsY()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    :cond_4
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMaxY:I

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsY()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    if-ge v5, v6, :cond_5

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsY()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMaxY:I

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_6
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsX:Ljava/util/List;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsX()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsX()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsY:Ljava/util/List;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsY()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getPointsY()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsX:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPointsSize:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMaxX:I

    add-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    int-to-short v4, v4

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iCenterX:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMaxY:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-short v4, v4

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iCenterY:I

    if-gez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->belowZeroPosX:Z

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game;->MAX_BELOW_ZERO_POINT_X:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    if-le v2, v4, :cond_8

    sput v4, Lage/of/civilizations2/jakowski/lukasz/Game;->MAX_BELOW_ZERO_POINT_X:I

    :cond_8
    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getLevelOfPort()I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfPort(I)V

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getLevelOfPort()I

    move-result v2

    if-ge v2, v3, :cond_9

    iput-boolean v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->seaProvince:Z

    :cond_9
    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_15

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_11

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iPort:I

    if-ge v4, v3, :cond_a

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->getWithProvinceID()I

    move-result v7

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->getPointsX()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->getPointsY()Ljava/util/List;

    move-result-object v9

    invoke-direct {v5, v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;-><init>(ILjava/util/List;Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_a
    const/4 v4, 0x0

    :goto_5
    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iNeighboringProvincesSize:I

    if-ge v4, v5, :cond_c

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->getWithProvinceID()I

    move-result v7

    if-ne v5, v7, :cond_b

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->getWithProvinceID()I

    move-result v7

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->getPointsX()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->getPointsY()Ljava/util/List;

    move-result-object v9

    invoke-direct {v5, v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;-><init>(ILjava/util/List;Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_6

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_d

    goto/16 :goto_9

    :cond_d
    const/4 v5, 0x0

    :goto_7
    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iNeighboringSeaProvincesSize:I

    if-ge v5, v7, :cond_f

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->getWithProvinceID()I

    move-result v8

    if-ne v7, v8, :cond_e

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->getWithProvinceID()I

    move-result v7

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->getPointsX()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->getPointsY()Ljava/util/List;

    move-result-object v9

    invoke-direct {v5, v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;-><init>(ILjava/util/List;Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_8

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_f
    :goto_8
    if-eqz v4, :cond_10

    goto :goto_9

    :cond_10
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PROVINCE BORDER CONNECTION ERROR: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->getProvinceBorder()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Border_GameData;->getWithProvinceID()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Province CONSTRUCTOR"

    invoke-interface {v4, v7, v5}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_11
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_12

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    goto :goto_a

    :cond_12
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    :goto_a
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_13

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    goto :goto_b

    :cond_13
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandBySeaSize:I

    :goto_b
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_14

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    goto :goto_c

    :cond_14
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersSeaBySeaSize:I

    :cond_15
    :goto_c
    iget-object p1, p2, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->provinceInfo:Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->loadProvinceInfo(Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lCities:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lMountains:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lWonders:Ljava/util/List;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provincePort:Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;

    iget v1, p2, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iPort_ShiftX:I

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapDefaultScale(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->iShiftX:I

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provincePort:Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;

    iget p2, p2, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iPort_ShiftY:I

    int-to-float p2, p2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v1

    int-to-float v1, v1

    mul-float p2, p2, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapDefaultScale(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p1, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->iShiftY:I

    invoke-virtual {p0, v0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->addCiv(II)V

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Province;)I
    .locals 0

    iget p0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    return p0
.end method

.method private final getUpdateView_SetCivID(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    if-eq v2, v3, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v3

    if-eq v2, v3, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    if-eq v2, v3, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    if-eq v2, p1, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v3

    if-eq v2, v3, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v2

    if-eq v2, p1, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v2

    if-lez v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v3

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method

.method private final getWastelandColor(F)Lcom/badlogic/gdx/graphics/Color;
    .locals 6

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_BG_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3d8068dc    # 0.0627f

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_BG_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3d58adac    # 0.0529f

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_BG_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3d3573eb    # 0.0443f

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method


# virtual methods
.method protected final addArmy(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->addCiv(II)V

    return-void
.end method

.method protected final addCity(Lage/of/civilizations2/jakowski/lukasz/City;)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lCities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lCities:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iCitiesSize:I

    return-void
.end method

.method protected final addCiv(II)V
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v2

    invoke-direct {v1, p1, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iCivsSize:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    if-lez p2, :cond_2

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v0

    invoke-virtual {p2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addArmyInAnotherProvince(I)V

    const/4 p2, 0x0

    :goto_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v0

    if-ge p2, v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->isPlayerAlly_FogOfWarCheck(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateFogOfWar(I)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateDrawArmy()V

    :cond_2
    return-void
.end method

.method protected final addDangerLevel(I)V
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iDangerLevel:I

    add-int/2addr v0, p1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iDangerLevel:I

    return-void
.end method

.method protected final addMountain(Lage/of/civilizations2/jakowski/lukasz/Mountain;)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lMountains:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final addNeighboringProvince(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringProvinces:Ljava/util/List;

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iNeighboringProvincesSize:I

    return-void
.end method

.method protected final addNeighboringSeaProvince(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iNeighboringSeaProvincesSize:I

    return-void
.end method

.method protected final addPotential(I)V
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    add-int/2addr v0, p1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    return-void
.end method

.method protected final addProvinceBorder(ILjava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v2

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandBySeaSize:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v2

    if-ne p1, v2, :cond_2

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_4

    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    :cond_6
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-direct {v1, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;-><init>(ILjava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->updateDrawProvinceBorder(I)V

    return-void
.end method

.method protected final addSupportRebels(Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;)Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels_Help;
    .locals 5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iSupportRebelsSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/16 v2, 0x23

    if-ltz v0, :cond_2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iByCivID:I

    iget v4, p1, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iByCivID:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    iget v4, p1, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    iget v4, p1, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    add-int/2addr v3, v4

    if-le v3, v2, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    rsub-int/lit8 p1, p1, 0x23

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels_Help;

    invoke-direct {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels_Help;-><init>(IZ)V

    return-object v0

    :cond_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    iget v3, p1, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    add-int/2addr v2, v3

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels_Help;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    invoke-direct {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels_Help;-><init>(IZ)V

    return-object v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iSupportRebelsSize:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels_Help;

    iget v3, p1, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    if-lt p1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-direct {v0, v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels_Help;-><init>(IZ)V

    return-object v0
.end method

.method protected final addWonder(Lage/of/civilizations2/jakowski/lukasz/Wonder;)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lWonders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lWonders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iWondersSize:I

    return-void
.end method

.method protected final buildProvinceBG(Z)V
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "map/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "data/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "scales/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "provinces/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Age_of_Civilizations"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_0
    array-length v10, v2

    if-ge v9, v10, :cond_0

    aget-object v10, v2, v9

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ge v2, v9, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v11

    if-ne v9, v11, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_2
    const/4 v9, 0x0

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_4

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v10, :cond_3

    const/4 v9, 0x0

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x1

    :goto_4
    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v9, :cond_6

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v9

    invoke-virtual {v2, v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v2

    if-eq v2, v10, :cond_6

    const-string v2, "1"

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v2, 0x0

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_1d

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v11

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Map;->setMapScale(II)I

    const-string v9, "/"

    if-nez p1, :cond_7

    sget-object v11, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v11

    invoke-virtual {v11}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v11

    if-eqz v11, :cond_7

    move/from16 v17, v1

    const/16 v16, 0x1

    goto/16 :goto_12

    :cond_7
    new-instance v11, Lcom/badlogic/gdx/graphics/Pixmap;

    iget v12, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMaxX:I

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v13

    mul-int v12, v12, v13

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v14

    mul-int v13, v13, v14

    sub-int/2addr v12, v13

    iget v13, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMaxY:I

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v14

    mul-int v13, v13, v14

    iget v14, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v15

    mul-int v14, v14, v15

    sub-int/2addr v13, v14

    sget-object v14, Lcom/badlogic/gdx/graphics/Pixmap$Format;->LuminanceAlpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v11, v12, v13, v14}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    new-instance v12, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v12, v13, v13, v13, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v13

    if-ge v12, v13, :cond_1c

    const/4 v13, 0x0

    :goto_7
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v14

    if-ge v13, v14, :cond_1b

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v15, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v16

    add-int v8, v16, v13

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v16

    add-int v10, v16, v12

    invoke-virtual {v14, v15, v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->pathContains(III)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x0

    const/4 v10, 0x1

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v14

    if-ge v8, v14, :cond_a

    iget v14, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v15

    if-le v14, v15, :cond_8

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v16

    move/from16 v17, v1

    add-int v1, v16, v13

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v16

    move-object/from16 v18, v9

    add-int v9, v16, v12

    invoke-virtual {v14, v15, v1, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->pathContains(III)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v10, 0x0

    goto :goto_9

    :cond_8
    move/from16 v17, v1

    move-object/from16 v18, v9

    :cond_9
    :goto_9
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v17

    move-object/from16 v9, v18

    goto :goto_8

    :cond_a
    move/from16 v17, v1

    move-object/from16 v18, v9

    if-eqz v10, :cond_b

    invoke-virtual {v11, v13, v12}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(II)V

    :cond_b
    :goto_a
    const/16 v16, 0x1

    goto/16 :goto_11

    :cond_c
    move/from16 v17, v1

    move-object/from16 v18, v9

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v8, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v9

    add-int/2addr v9, v13

    const/4 v10, 0x1

    add-int/2addr v9, v10

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v10

    add-int/2addr v10, v12

    invoke-virtual {v1, v8, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->pathContains(III)Z

    move-result v10

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v8, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v9

    add-int/2addr v9, v13

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v14

    add-int/2addr v14, v12

    const/4 v15, 0x1

    add-int/2addr v14, v15

    invoke-virtual {v1, v8, v9, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->pathContains(III)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v10, 0x1

    :cond_d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v8, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v9

    add-int/2addr v9, v13

    sub-int/2addr v9, v15

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v14

    add-int/2addr v14, v12

    invoke-virtual {v1, v8, v9, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->pathContains(III)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v10, 0x1

    :cond_e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v8, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v9

    add-int/2addr v9, v13

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v14

    add-int/2addr v14, v12

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    invoke-virtual {v1, v8, v9, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->pathContains(III)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v10, 0x1

    :cond_f
    if-nez v10, :cond_10

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v8

    if-ge v1, v8, :cond_12

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v10

    add-int/2addr v10, v13

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v14

    add-int/2addr v14, v12

    invoke-virtual {v8, v9, v10, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->pathContains(III)Z

    move-result v8

    if-eqz v8, :cond_11

    const/4 v1, 0x1

    goto :goto_c

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_13

    goto/16 :goto_a

    :cond_13
    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v9

    if-ge v1, v9, :cond_19

    iget v9, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v10

    if-le v9, v10, :cond_14

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v14

    add-int/2addr v14, v13

    const/4 v15, 0x1

    add-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v15

    add-int/2addr v15, v12

    invoke-virtual {v9, v10, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->pathContains(III)Z

    move-result v9

    if-eqz v9, :cond_15

    :goto_e
    const/4 v8, 0x1

    :cond_14
    const/16 v16, 0x1

    goto :goto_10

    :cond_15
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v14

    add-int/2addr v14, v13

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v15

    add-int/2addr v15, v12

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v9, v10, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->pathContains(III)Z

    move-result v9

    if-eqz v9, :cond_16

    :goto_f
    const/4 v8, 0x1

    goto :goto_10

    :cond_16
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v14

    add-int/2addr v14, v13

    add-int/lit8 v14, v14, -0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v15

    add-int/2addr v15, v12

    invoke-virtual {v9, v10, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->pathContains(III)Z

    move-result v9

    if-eqz v9, :cond_17

    goto :goto_e

    :cond_17
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v14

    add-int/2addr v14, v13

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v15

    add-int/2addr v15, v12

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v9, v10, v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->pathContains(III)Z

    move-result v9

    if-eqz v9, :cond_18

    goto :goto_f

    :cond_18
    :goto_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_19
    const/16 v16, 0x1

    if-eqz v8, :cond_1a

    invoke-virtual {v11, v13, v12}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(II)V

    :cond_1a
    :goto_11
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v17

    move-object/from16 v9, v18

    const/4 v10, 0x1

    goto/16 :goto_7

    :cond_1b
    move/from16 v17, v1

    move-object/from16 v18, v9

    const/16 v16, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x1

    goto/16 :goto_6

    :cond_1c
    move/from16 v17, v1

    move-object/from16 v18, v9

    const/16 v16, 0x1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v9, v18

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/badlogic/gdx/graphics/PixmapIO;->writeCIM(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-- PROVINCE DATA GENERATED "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " --"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    :goto_12
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v17

    const/4 v10, 0x1

    goto/16 :goto_5

    :cond_1d
    move/from16 v17, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v2

    move/from16 v3, v17

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->setMapScale(II)I

    return-void
.end method

.method protected final buildProvinceCore()V
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    const/4 v1, 0x0

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->oProvinceCore:Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;-><init>()V

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->oProvinceCore:Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->oProvinceCore:Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->addNewCore(II)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->oProvinceCore:Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->increaseOwnership(II)V

    :cond_0
    return-void
.end method

.method protected final buildRecruitableArmyPoints()V
    .locals 3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getRecruitableArmy(II)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iRecruitableArmyPoints:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iRecruitableArmyPoints:I

    int-to-float v0, v0

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iRecruitableArmyPoints:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iRecruitableArmyPoints:I

    :cond_2
    :goto_1
    return-void
.end method

.method protected final build_ArmyInAnotherProvince()V
    .locals 3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v0

    if-ge v1, v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addArmyInAnotherProvince(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final checkLandBySeaProvinceBorders()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v0, v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandBySeaSize:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected final checkSeaBySeaProvinceBorders()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandBySeaSize:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersSeaBySeaSize:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected final civSupportsRebels(I)Z
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iSupportRebelsSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iByCivID:I

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected final clearCities()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lCities:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iCitiesSize:I

    return-void
.end method

.method protected final disposeProvinceBG()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v0

    int-to-float p5, p5

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p5, v1

    invoke-virtual {p0, p1, v0, p5}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivilizationProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    add-int/2addr p2, v0

    int-to-float v0, v0

    mul-float v0, v0, p4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr p2, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    sub-int/2addr p2, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    add-int/2addr p3, v0

    int-to-float v0, v0

    mul-float v0, v0, p4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr p3, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    sub-int/2addr p3, v0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p4

    float-to-int v0, v0

    add-int/2addr p3, v0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p5, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    return-void
.end method

.method protected final drawArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    invoke-interface {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;->drawArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    return-void
.end method

.method protected final drawArmyOptimizationRegions(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_BG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvince_OptimizationRegions(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    return-void
.end method

.method protected final drawArmyPosition(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_BG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvince_ArmyPosition(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    return-void
.end method

.method protected final drawArmyPositionSea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_BG_SEA:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_TEXT_SEA:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvince_ArmyPosition(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    return-void
.end method

.method protected final drawArmyPosition_Active(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_BG_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvince_ArmyPosition(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    return-void
.end method

.method protected final drawArmySeaProvincesLevels(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_BG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvince_SeaProvincesLevels(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    return-void
.end method

.method protected final drawArmy_SetUpArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 12

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v0

    if-lez v0, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_BG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    move-object v2, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_BG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    move-object v7, p1

    move v11, p2

    invoke-virtual/range {v6 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmyWithFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected final drawArmy_SetUpArmy_Sea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 8

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v6, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v7, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_TEXT_SEA:Lcom/badlogic/gdx/graphics/Color;

    move-object v2, p1

    move v5, p2

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmy_Sea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;FII)V

    return-void
.end method

.method protected final drawBuildings(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int p2, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v1, p1, v0, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceBuildings(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    return-void
.end method

.method protected final drawDanger(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_BG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvince_Danger(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    return-void
.end method

.method protected final drawGrowthRate(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_BG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvince_GrowthRate(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    return-void
.end method

.method protected final drawHappiness(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_BG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvince_Happiness(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    return-void
.end method

.method protected final drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v3

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v4

    mul-int v3, v3, v4

    add-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method protected final drawNuclearExplosion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 5

    const/high16 v1, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawNuclearExplosion:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->nuclear_boom:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_0
    return-void
.end method

.method protected final drawOccupiedProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 7

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->OCCUPIED_PROVINCE_ALPHA:I

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->OCCUPIED_STRIPES_SIZE:F

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->patt2:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->patt2:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v1, v1, v2

    const-string v2, "u_maskScale"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->patt3:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v3

    mul-int v2, v2, v3

    add-int v3, v0, v2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v4

    mul-int v2, v2, v4

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->patt3:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw3(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    return-void
.end method

.method protected final drawPotential(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_BG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvince_Potential(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    return-void
.end method

.method protected final drawProvinceBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected final drawProvinceBorderInStartGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getIsCivilizationBorder()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->startTheGameData:Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->getStraightLinePercentage()F

    move-result v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    goto :goto_1

    :cond_0
    const v2, 0x3f20a0a1

    const v3, 0x3d23d70a    # 0.04f

    invoke-virtual {p1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32:I

    const/4 v6, 0x0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->startTheGameData:Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->getDashedLinePercentage()F

    move-result v7

    iget v8, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const v1, 0x3f733333    # 0.95f

    const v2, 0x3d8f5c29    # 0.07f

    const v3, 0x3f70a3d7    # 0.94f

    invoke-virtual {p1, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    :goto_2
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->startTheGameData:Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->getStraightLinePercentage()F

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final drawProvinceBorderInStartGame_Wasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getIsCivilizationBorder()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->startTheGameData:Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->getStraightLinePercentage()F

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final drawProvinceBorder_CivilizationView(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getIsCivilizationBorder()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivilizationView;->iCivID:I

    if-ne v2, v3, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivilizationView;->iCivID:I

    if-eq v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected final drawProvinceBorder_ContinentMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    if-ne v2, v3, :cond_0

    const v2, 0x3ec8c8c9

    const v3, 0x3d23d70a    # 0.04f

    invoke-virtual {p1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32:I

    const/4 v8, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v9, v2, v4

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_1

    :cond_0
    const v2, 0x3f0ccccd    # 0.55f

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float/2addr v3, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const v1, 0x3f733333    # 0.95f

    const v2, 0x3d8f5c29    # 0.07f

    const v3, 0x3f70a3d7    # 0.94f

    invoke-virtual {p1, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    :goto_2
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final drawProvinceBorder_ContinentModeWasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getIsCivilizationBorder()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    if-ne v2, v3, :cond_0

    const v2, 0x3ec8c8c9

    const v3, 0x3d23d70a    # 0.04f

    invoke-virtual {p1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32:I

    const/4 v8, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v9, v2, v4

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_1

    :cond_0
    const v2, 0x3f0ccccd    # 0.55f

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float/2addr v3, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const v1, 0x3f733333    # 0.95f

    const v2, 0x3d8f5c29    # 0.07f

    const v3, 0x3f70a3d7    # 0.94f

    invoke-virtual {p1, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    :goto_2
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final drawProvinceBorder_ContinentMode_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v2

    const v3, 0x3ec8c8c9

    const/high16 v4, 0x42c80000    # 100.0f

    const v5, 0x3d23d70a    # 0.04f

    if-eqz v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v6

    invoke-virtual {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v2

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getContinent()I

    move-result v6

    if-ne v2, v6, :cond_0

    invoke-virtual {p1, v5, v5, v5, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32:I

    const/4 v8, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v9, v2, v4

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_1

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v6

    invoke-virtual {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v6

    invoke-virtual {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v5, v5, v5, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32:I

    const/4 v8, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v9, v2, v4

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_1

    :cond_1
    const v2, 0x3f0ccccd    # 0.55f

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float/2addr v3, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    const v1, 0x3f733333    # 0.95f

    const v2, 0x3d8f5c29    # 0.07f

    const v3, 0x3f70a3d7    # 0.94f

    invoke-virtual {p1, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    :goto_2
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final drawProvinceBorder_CreateRandomGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    if-eq v2, v3, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    if-eq v2, v3, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v2

    if-ltz v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3, v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final drawProvinceBorder_CreateRandomGameWasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getIsCivilizationBorder()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final drawProvinceBorder_LoadAI_RTO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getIsCivilizationBorder()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected final drawProvinceBorder_LoadAI_RTO_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getIsCivilizationBorder()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    if-ne v2, v3, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected final drawProvinceBorder_NextPlayerTurn(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getIsCivilizationBorder()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    if-ne v2, v3, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected final drawProvinceBorder_OnlyCivilizationBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getIsCivilizationBorder()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final drawProvinceBorder_OnlyCivilizationBorder_Capitals(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getIsCivilizationBorder()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    if-eq v2, v3, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_33:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3, v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method protected final drawProvinceBorder_OnlyCivilizationBorder_Capitals_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_6

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getIsCivilizationBorder()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    if-eq v2, v3, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    if-nez v2, :cond_5

    :cond_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_33:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3, v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawProvince_Border:Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-interface {v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    goto :goto_2

    :cond_3
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_33:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3, v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_2

    :cond_4
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method protected final drawProvinceBorder_OnlyCivilizationBorder_Capitals_FogOfWarDiscoveryWasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getIsCivilizationBorder()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    if-eq v2, v3, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_33:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3, v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_33:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3, v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method protected final drawProvinceBorder_PeaceTreaty(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    if-ne v2, v3, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getDashedImage()I

    move-result v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3, v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_1

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final drawProvinceBorder_PeaceTreaty_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_5

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    if-ne v2, v3, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getDashedImage()I

    move-result v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3, v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto/16 :goto_2

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v2

    if-gez v2, :cond_4

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v2

    if-ltz v2, :cond_2

    goto :goto_1

    :cond_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_33:I

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3, v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_2

    :cond_3
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method protected final drawProvinceBorder_PeaceTreaty_FogOfWarDiscovery_Only_CivilizationBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v0, v1, :cond_5

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    if-ne v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v1

    if-gez v1, :cond_4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v1

    if-ltz v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method protected final drawProvinceBorder_PeaceTreaty_Only_CivilizationBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final drawProvinceBorder_PeaceTreaty_Wasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v2

    if-ltz v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v2

    if-ltz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v2

    if-gez v2, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v2

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->drawProvinceOwners:Ljava/util/List;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_DrawData;->iCivID:I

    if-ne v2, v3, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getDashedImage()I

    move-result v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3, v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_2

    :cond_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method protected final drawProvinceBorder_PrintAMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandBySeaSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final drawProvinceBorder_RegionMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    if-ne v2, v3, :cond_0

    const v2, 0x3ec8c8c9

    const v3, 0x3d23d70a    # 0.04f

    invoke-virtual {p1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32:I

    const/4 v8, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v9, v2, v4

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_1

    :cond_0
    const v2, 0x3f0ccccd    # 0.55f

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float/2addr v3, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const v1, 0x3f733333    # 0.95f

    const v2, 0x3d8f5c29    # 0.07f

    const v3, 0x3f70a3d7    # 0.94f

    invoke-virtual {p1, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    :goto_2
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final drawProvinceBorder_RegionModeWasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getIsCivilizationBorder()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    if-ne v2, v3, :cond_0

    const v2, 0x3ec8c8c9

    const v3, 0x3d23d70a    # 0.04f

    invoke-virtual {p1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32:I

    const/4 v8, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v9, v2, v4

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_1

    :cond_0
    const v2, 0x3f0ccccd    # 0.55f

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float/2addr v3, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const v1, 0x3f733333    # 0.95f

    const v2, 0x3d8f5c29    # 0.07f

    const v3, 0x3f70a3d7    # 0.94f

    invoke-virtual {p1, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    :goto_2
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final drawProvinceBorder_RegionMode_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v2

    const v3, 0x3ec8c8c9

    const/high16 v4, 0x42c80000    # 100.0f

    const v5, 0x3d23d70a    # 0.04f

    if-eqz v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v6

    invoke-virtual {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v2

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRegion()I

    move-result v6

    if-ne v2, v6, :cond_0

    invoke-virtual {p1, v5, v5, v5, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32:I

    const/4 v8, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v9, v2, v4

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_1

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v6

    invoke-virtual {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v6

    invoke-virtual {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v5, v5, v5, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32:I

    const/4 v8, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v9, v2, v4

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_1

    :cond_1
    const v2, 0x3f0ccccd    # 0.55f

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float/2addr v3, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    const v1, 0x3f733333    # 0.95f

    const v2, 0x3d8f5c29    # 0.07f

    const v3, 0x3f70a3d7    # 0.94f

    invoke-virtual {p1, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    :goto_2
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final drawProvinceBorder_TerrainMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTerrainTypeID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    if-ne v2, v3, :cond_0

    const v2, 0x3ec8c8c9

    const v3, 0x3d23d70a    # 0.04f

    invoke-virtual {p1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32:I

    const/4 v8, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float v9, v2, v4

    iget v10, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_1

    :cond_0
    const v2, 0x3f0ccccd    # 0.55f

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fTerrainMode_LinePercentage:F

    div-float/2addr v3, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder_PercentageWidth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const v1, 0x3f733333    # 0.95f

    const v2, 0x3d8f5c29    # 0.07f

    const v3, 0x3f70a3d7    # 0.94f

    invoke-virtual {p1, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    :goto_2
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final drawProvinceBorder_Timeline(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners:Ljava/util/List;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getDashedImage()I

    move-result v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3, v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_1

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final drawProvinceBorder_Timeline_Only_CivilizationBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelineOwners:Ljava/util/List;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    invoke-virtual {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final drawProvinceFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->defaultShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    :cond_0
    return-void
.end method

.method protected final drawProvinceFlag_CreateRandomGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .locals 2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->randomGameManager:Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Manager;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/RandomGame_Player;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object p2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v0, 0x84c0

    invoke-interface {p2, v0}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->defaultShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    :cond_0
    return-void
.end method

.method protected final drawProvinceInfo(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->drawProvincePort(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    return-void
.end method

.method protected final drawProvincePort(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provincePort:Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int v1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p2

    float-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    :cond_0
    return-void
.end method

.method protected final drawProvince_ActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 5

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iContinentID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getOceanContinentID()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    add-int/2addr v1, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v3

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    sub-int/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    add-int/2addr v2, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v4

    mul-int v3, v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v4

    mul-int v3, v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :goto_0
    return-void
.end method

.method protected final drawStartingMoney(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_BG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvince_StartingMoney(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    return-void
.end method

.method protected final drawTechnologyLevels(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_ARMY_BG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvince_TechnologyLevels(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    return-void
.end method

.method protected final drawWasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .locals 2

    int-to-float p5, p5

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p5, v0

    invoke-direct {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    add-int/2addr p2, v0

    int-to-float v0, v0

    mul-float v0, v0, p4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr p2, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    sub-int/2addr p2, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    add-int/2addr p3, v0

    int-to-float v0, v0

    mul-float v0, v0, p4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr p3, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    sub-int/2addr p3, v0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p4

    float-to-int v0, v0

    add-int/2addr p3, v0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p5, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    return-void
.end method

.method protected final drawWastelandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA_WASTELAND:F

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v3

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v4

    mul-int v3, v3, v4

    add-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method protected final drawWastelandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 4

    invoke-direct {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v2

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v3

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p2, p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method protected final drawWastelandProvince_PeaceTreaty(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA_WASTELAND:F

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float v0, v0, v1

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWastelandColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v3

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v4

    mul-int v3, v3, v4

    add-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method protected final draw_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v0

    int-to-float v1, p5

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivilizationProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    add-int/2addr v1, p2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    int-to-float v2, v2

    mul-float v2, v2, p4

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    sub-int/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    add-int/2addr v2, p3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    int-to-float v3, v3

    mul-float v3, v3, p4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p4

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2, p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Province;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected final getArmy(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getArmy()I

    move-result p1

    return p1
.end method

.method protected final getArmyCanRetreat(I)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iCivsSize:I

    if-ge v2, v4, :cond_0

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    if-eq v1, p1, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v2

    if-eq v2, p1, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v2

    if-eq v2, v1, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAreAllied(II)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getMilitaryAccess(II)I

    move-result v2

    if-gtz v2, :cond_3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :cond_3
    return v3
.end method

.method protected final getArmyCivID(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iCivsSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getArmy()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final getArmySize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getArmyWasRecruited()I
    .locals 1

    iget-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iArmyWasRecruited:B

    return v0
.end method

.method protected final getArmyWidth(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getArmyWidth()I

    move-result p1

    return p1
.end method

.method protected final getArmy_Obj(I)Lage/of/civilizations2/jakowski/lukasz/Province_Army;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    return-object p1
.end method

.method protected final getBalance_LastTurn()I
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iIncome_Taxation:F

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iIncome_Production:F

    add-float/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iAdministrationCost:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected final getBasinID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iBasin:I

    return v0
.end method

.method protected final getBelowZero()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->belowZeroPosX:Z

    return v0
.end method

.method protected final getBordersWithEnemy()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->bordersWithEnemy:Z

    return v0
.end method

.method protected final getCenterX()I
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iCenterX:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method protected final getCenterX_Real()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iCenterX:I

    return v0
.end method

.method protected final getCenterY()I
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iCenterY:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method protected final getCenterY_Real()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iCenterY:I

    return v0
.end method

.method protected final getCitiesSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iCitiesSize:I

    return v0
.end method

.method protected final getCity(I)Lage/of/civilizations2/jakowski/lukasz/City;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lCities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/City;

    return-object p1
.end method

.method protected final getCivID()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    return v0
.end method

.method protected final getCivID(I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final getCivRegionID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iCivRegionID:I

    return v0
.end method

.method protected final getCivsSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iCivsSize:I

    return v0
.end method

.method protected final getContinent()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iContinentID:I

    return v0
.end method

.method protected final getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->oProvinceCore:Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    return-object v0
.end method

.method protected final getDangerLevel()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iDangerLevel:I

    return v0
.end method

.method protected final getDangerLevel_WithArmy()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iDangerLevel_WithArmy:I

    return v0
.end method

.method protected final getDefensivePosition()I
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iDefensivePosition:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected final getDevelopmentLevel()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->fDevelopmentLevel:F

    return v0
.end method

.method protected final getDrawCities()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawCities:Z

    return v0
.end method

.method protected getDrawNuclearExplosion()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawNuclearExplosion:Z

    return v0
.end method

.method protected final getDrawProvince()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawProvince:Z

    return v0
.end method

.method protected final getEconomy()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iEconomy:I

    return v0
.end method

.method protected final getGrowthRate_NewColony()F
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iNewColonyBonus:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_Population()F

    move-result v1

    const v2, 0x3c4ccccd    # 0.0125f

    mul-float v1, v1, v2

    const v2, 0x3ba3d70a    # 0.005f

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    return v0
.end method

.method protected final getGrowthRate_Population()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fPopulationGrowthRate:F

    return v0
.end method

.method protected final getGrowthRate_Population_WithFarm()F
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fPopulationGrowthRate:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_GrowthRateBonus(I)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method protected final getGrowthRate_Population_WithFarm_WithTerrain()F
    .locals 3

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fPopulationGrowthRate:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_GrowthRateBonus(I)F

    move-result v1

    add-float/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getPopulationGrowth(I)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getGrowthRate_NewColony()F

    move-result v1

    add-float/2addr v0, v1

    const v1, 0x3ca3d70a    # 0.02f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method protected final getHappiness()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->fHappiness:F

    return v0
.end method

.method protected final getIsCapital()Z
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->isCapital:Z

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final getIsCapital_Just()Z
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->isCapital:Z

    return v0
.end method

.method protected final getIsNotSuppliedForXTurns()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->isNotSuppliedForXTurns:I

    return v0
.end method

.method protected final getIsPartOfHolyRomanEmpire()Z
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->isPartOfHolyRomaEmpire:Z

    return v0
.end method

.method protected final getIsSupplied()Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getIsSupplied()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    return v0

    :catch_1
    move-exception v1

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method protected final getLevelOfArmoury()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iArmoury:I

    return v0
.end method

.method public getLevelOfBunker()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iBunker:I

    return v0
.end method

.method protected final getLevelOfFarm()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iFarm:I

    return v0
.end method

.method protected final getLevelOfFort()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iFort:I

    return v0
.end method

.method protected final getLevelOfLibrary()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iLibrary:I

    return v0
.end method

.method protected final getLevelOfNuclearReactor()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iReactor:I

    return v0
.end method

.method protected final getLevelOfPort()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iPort:I

    return v0
.end method

.method public getLevelOfShaft()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iShaft:I

    return v0
.end method

.method protected final getLevelOfSupply()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iSupply:I

    return v0
.end method

.method protected final getLevelOfWatchTower()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iWatchTower:I

    return v0
.end method

.method protected final getLevelOfWorkshop()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iWorkshop:I

    return v0
.end method

.method protected final getMaxX()I
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMaxX:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method protected final getMaxY()I
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMaxY:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method protected final getMinX()I
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method protected final getMinY()I
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method protected final getMountain(I)Lage/of/civilizations2/jakowski/lukasz/Mountain;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lMountains:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Mountain;

    return-object p1
.end method

.method protected final getMountainsSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lMountains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->sProvinceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCitiesSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCity(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/City;->getCityName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->sProvinceName:Ljava/lang/String;

    return-object v0
.end method

.method protected final getNeighbooringProvinceOfCivWasLost()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-byte v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->neighbooringProvinceOfCivWasLost:B

    return v0
.end method

.method protected final getNeighboringProvinces(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method protected final getNeighboringProvincesSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iNeighboringProvincesSize:I

    return v0
.end method

.method protected final getNeighboringSeaProvinces(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method protected final getNeighboringSeaProvincesSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iNeighboringSeaProvincesSize:I

    return v0
.end method

.method protected final getNumOfNeighboringNeutralProvinces()I
    .locals 1

    iget-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iNumOfNeighboringNeutralProvinces:B

    return v0
.end method

.method protected final getPointsSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPointsSize:I

    return v0
.end method

.method protected final getPointsX(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v0

    mul-int p1, p1, v0

    return p1
.end method

.method protected final getPointsY(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v0

    mul-int p1, p1, v0

    return p1
.end method

.method protected final getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->oPopulation:Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    return-object v0
.end method

.method protected final getPortShiftX()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provincePort:Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->getShiftX()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final getPortShiftY()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provincePort:Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;->getShiftY()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final getPotential()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    return v0
.end method

.method protected final getPotentialModified(I)I
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v1

    if-ne v1, p1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_POTENTIAL_MODIFIED_OWN_LOST_PROVINCE:F

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    mul-float v0, v0, p1

    float-to-int p1, v0

    return p1
.end method

.method protected final getPotentialModified_WAR_MoveFrom(I)I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xa

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v6

    if-ge v0, v6, :cond_3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, p1, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_CLOSE_REGION_PROVINCES:I

    if-ge v6, v7, :cond_1

    int-to-float v3, v3

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPotential()I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_CLOSE_REGION_EXTRA_SCORE:F

    mul-float v6, v6, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v7

    if-ne v7, p1, :cond_0

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_POTENTIAL_MODIFIED_OWN_LOST_PROVINCE:F

    goto :goto_1

    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_1
    mul-float v6, v6, v7

    add-float/2addr v3, v6

    float-to-int v3, v3

    add-int/lit8 v1, v1, 0x1

    :cond_1
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v4, v7, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->REBELS_ID:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v6, v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    if-lez v1, :cond_5

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    div-int/2addr v3, v1

    add-int/2addr p1, v3

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    :goto_2
    mul-int p1, p1, v4

    return p1

    :cond_5
    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v4, 0x1

    :goto_3
    mul-int p1, p1, v4

    return p1

    :catch_0
    nop

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    const/4 v4, 0x1

    :goto_4
    mul-int p1, p1, v4

    return p1

    :catch_1
    nop

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    const/4 v4, 0x1

    :goto_5
    mul-int p1, p1, v4

    return p1
.end method

.method protected final getPotentialModified_WAR_MoveTo(I)I
    .locals 8

    const/16 v0, 0xa

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_CLOSE_REGION_PROVINCES:I

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPotential()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_CLOSE_REGION_EXTRA_SCORE:F

    mul-float v2, v2, p1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result p1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->REBELS_ID:I

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-float p1, v0

    mul-float v2, v2, p1

    float-to-int p1, v2

    return p1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v5

    if-ge v2, v5, :cond_4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    invoke-virtual {v5, p1, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->isAlly(II)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    invoke-virtual {v5, p1, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-le v3, v1, :cond_6

    if-ne v4, v1, :cond_6

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    int-to-float p1, p1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float p1, p1, v2

    float-to-int p1, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->REBELS_ID:I

    if-ne v2, v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x1

    :goto_3
    mul-int p1, p1, v0

    return p1

    :cond_6
    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->REBELS_ID:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x1

    :goto_4
    mul-int p1, p1, v0

    return p1

    :catch_0
    nop

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->REBELS_ID:I

    if-ne v2, v3, :cond_8

    goto :goto_5

    :cond_8
    const/4 v0, 0x1

    :goto_5
    mul-int p1, p1, v0

    return p1

    :catch_1
    nop

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->REBELS_ID:I

    if-ne v2, v3, :cond_9

    goto :goto_6

    :cond_9
    const/4 v0, 0x1

    :goto_6
    mul-int p1, p1, v0

    return p1
.end method

.method protected final getPotentialRegion()I
    .locals 2

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->iAveragePotential:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPotential()I

    move-result v0

    return v0

    :catch_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPotential()I

    move-result v0

    return v0
.end method

.method protected final getProvinceArmyBoxes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvince_ArmyBoxes:Ljava/util/List;

    return-object v0
.end method

.method protected final getProvinceBG()Lage/of/civilizations2/jakowski/lukasz/Image;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    return-object v0
.end method

.method protected final getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v2

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;-><init>(ILjava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method protected final getProvinceBordersLandByLand()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_Border;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    return-object v0
.end method

.method protected final getProvinceBordersLandByLandSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    return v0
.end method

.method protected final getProvinceBordersLandBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandBySeaSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v2

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lProvinceBordersLandBySea: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AoC - Province"

    invoke-interface {v1, v2, p1}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;-><init>(ILjava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method protected final getProvinceBordersLandBySea()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_Border;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    return-object v0
.end method

.method protected final getProvinceBordersLandBySeaSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandBySeaSize:I

    return v0
.end method

.method protected final getProvinceBordersLandBySea_ID(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandBySeaSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProvinceBordersLandBySea_ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AoC - Province"

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method protected final getProvinceBordersSeaBySea(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v2

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProvinceBordersSeaBySea: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AoC - Province"

    invoke-interface {v1, v2, p1}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;-><init>(ILjava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method protected final getProvinceBordersSeaBySea()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_Border;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    return-object v0
.end method

.method protected final getProvinceBordersSeaBySeaSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersSeaBySeaSize:I

    return v0
.end method

.method protected final getProvinceID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    return v0
.end method

.method protected final getProvinceStability()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    return v0
.end method

.method protected final getRecruitableArmyPoints()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iRecruitableArmyPoints:I

    return v0
.end method

.method protected final getRegion()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iRegionID:I

    return v0
.end method

.method protected final getRegion_NumOfProvinces()I
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method protected final getRevolutionaryRisk()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->fRevolutionaryRisk:F

    return v0
.end method

.method protected final getSeaProvince()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->seaProvince:Z

    return v0
.end method

.method protected final getShiftX()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iShiftX:I

    return v0
.end method

.method protected final getShiftY()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iShiftY:I

    return v0
.end method

.method protected final getTerrainTypeID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTerrainTypeID:I

    return v0
.end method

.method protected final getTranslateProvincePosX()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    return v0
.end method

.method protected final getTrueOwnerOfProvince()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iTrueOwnerOfProvince:I

    return v0
.end method

.method protected final getWasAttacked()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-byte v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->wasAttacked:B

    return v0
.end method

.method protected final getWasConquered()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-byte v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->wasConquered:B

    return v0
.end method

.method protected final getWasteland()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->wastelandLevel:I

    return v0
.end method

.method protected final getWonder(I)Lage/of/civilizations2/jakowski/lukasz/Wonder;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lWonders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Wonder;

    return-object p1
.end method

.method protected final getWonderSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iWondersSize:I

    return v0
.end method

.method protected final incNumOfNeighboringNeutralProvinces()V
    .locals 1

    iget-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iNumOfNeighboringNeutralProvinces:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iNumOfNeighboringNeutralProvinces:B

    return-void
.end method

.method protected final initProvinceArmyBoxes()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvince_ArmyBoxes:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvince_ArmyBoxes:Ljava/util/List;

    :cond_0
    return-void
.end method

.method protected final isOccupied()Z
    .locals 2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final loadProvinceBG()V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "scales/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "provinces/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iContinentID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getOceanContinentID()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->buildProvinceBG(Z)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->loadProvinceBG()V

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method protected final loadProvinceInfo()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "provinces/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->loadProvinceInfo(Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iContinentID:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fPopulationGrowthRate:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v1

    const/4 v2, -0x1

    if-lt v1, v2, :cond_1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTerrainTypeID:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTerrainTypeID:I

    :goto_1
    return-void
.end method

.method protected final loadProvinceInfo(Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;->fGrowthRate:F

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fPopulationGrowthRate:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;->iContinentID:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iContinentID:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iContinentID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;->getContinentsSize()I

    move-result v3

    if-lt v2, v3, :cond_0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iContinentID:I

    :cond_0
    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;->iRegionID:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iRegionID:I

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;->iShiftX:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v3

    mul-int v2, v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapDefaultScale(I)I

    move-result v3

    div-int/2addr v2, v3

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iShiftX:I

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;->iShiftY:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale(I)I

    move-result v3

    mul-int v2, v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapDefaultScale(I)I

    move-result v3

    div-int/2addr v2, v3

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iShiftY:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v2

    if-eqz v2, :cond_1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTerrainTypeID:I
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object p1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "army_boxes/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object p1

    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvince_ArmyBoxes:Ljava/util/List;

    array-length v2, p1

    add-int/lit8 v2, v2, -0x4

    :goto_0
    if-ltz v2, :cond_2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvince_ArmyBoxes:Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;

    aget-object v5, p1, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v6

    mul-int v5, v5, v6

    add-int/lit8 v6, v2, 0x1

    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v7

    mul-int v6, v6, v7

    add-int/lit8 v7, v2, 0x2

    aget-object v7, p1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v8

    mul-int v7, v7, v8

    add-int/lit8 v8, v2, 0x3

    aget-object v8, p1, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v9

    mul-int v8, v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, -0x4

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v2, :cond_2

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Province_Info_GameData3;->sTerrainTAG:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getTerrainTypeID(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTerrainTypeID:I
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    return-void

    :catch_1
    move-exception p1

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v2, :cond_3

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iContinentID:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fPopulationGrowthRate:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result p1

    const/4 v2, -0x1

    if-lt p1, v2, :cond_4

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTerrainTypeID:I

    goto :goto_2

    :cond_4
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTerrainTypeID:I

    :goto_2
    return-void
.end method

.method protected final removeArmy(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iCivsSize:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->removeCiv(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeArmyInAnotherProvince(I)V

    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->isPlayerAlly_FogOfWarCheck(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateFogOfWar(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected final removeArmy_ID(I)V
    .locals 2

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeArmyInAnotherProvince(I)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->removeCiv(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected final removeCapitalCityIcon()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCitiesSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCity(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/City;->getCityLevel()I

    move-result v2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getEditorCityLevel(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCity(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getEditorCityLevel(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/City;->setCityLevel(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final removeCiv(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iCivsSize:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateDrawArmy()V

    return-void
.end method

.method protected final removeNeighboringProvince(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iNeighboringProvincesSize:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iNeighboringProvincesSize:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final removeNeighboringSeaProvince(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iNeighboringSeaProvincesSize:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iNeighboringSeaProvincesSize:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final removeProvinceBorder(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v2

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandByLandSize:I

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandBySeaSize:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v2

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersLandBySeaSize:I

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceBordersSeaBySeaSize:I

    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method protected final resetArmies(I)V
    .locals 5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfUnits()I

    move-result v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getArmy()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setNumOfUnits(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-direct {v2, v0, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iCivsSize:I

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    const/4 v0, -0x1

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iDefensivePosition:I

    return-void
.end method

.method protected final resetArmies_NewGame(I)V
    .locals 4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-direct {v2, v0, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iCivsSize:I

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    const/4 v0, -0x1

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iDefensivePosition:I

    return-void
.end method

.method protected final resetCore()V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    const/4 v1, 0x0

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->oProvinceCore:Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;-><init>()V

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->oProvinceCore:Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    return-void
.end method

.method protected final runSupportRebels()V
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iSupportRebelsSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_c

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v4, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iSupportRebelsSize:I

    goto/16 :goto_6

    :cond_0
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v4, v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    sub-int/2addr v4, v2

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_1
    const/4 v4, 0x0

    if-ltz v3, :cond_2

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_a

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iSupportRebelsSize:I

    sub-int/2addr v3, v2

    const/4 v5, 0x0

    :goto_3
    if-ltz v3, :cond_4

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    if-ne v6, v7, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v3

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v3

    add-int/2addr v3, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNationalitiesSize()I

    move-result v8

    if-ge v6, v8, :cond_6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v8

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v8

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    if-eq v8, v9, :cond_5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v8

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v8

    add-int/2addr v7, v8

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNationalitiesSize()I

    move-result v6

    sub-int/2addr v6, v2

    :goto_5
    if-ltz v6, :cond_9

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v8

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v8

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    if-eq v8, v9, :cond_8

    const v8, 0x3b8b4396    # 0.00425f

    const v9, 0x3d4b9cb7    # 0.04971f

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v11, 0x43f

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    int-to-float v10, v10

    const v11, 0x461c4000    # 10000.0f

    div-float/2addr v10, v11

    add-float/2addr v10, v9

    int-to-float v9, v3

    add-int v11, v7, v3

    int-to-float v11, v11

    div-float/2addr v9, v11

    mul-float v10, v10, v9

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappiness()F

    move-result v9

    mul-float v10, v10, v9

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v9

    const/high16 v11, 0x40700000    # 3.75f

    div-float/2addr v9, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v9, v11, v9

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    mul-float v10, v10, v9

    add-float/2addr v10, v8

    const v8, 0x3ccccccd    # 0.025f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRevolutionaryRisk()F

    move-result v9

    mul-float v9, v9, v8

    add-float/2addr v9, v11

    mul-float v10, v10, v9

    const v8, 0x3f4ccccd    # 0.8f

    mul-float v10, v10, v8

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->getSUPPORT_REBELS_ASSIMILATE_PERC(I)F

    move-result v8

    mul-float v10, v10, v8

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v8

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v10

    float-to-int v8, v8

    if-nez v8, :cond_7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    :cond_7
    add-int/2addr v4, v8

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v9

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v10

    invoke-virtual {v10, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v10

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v11

    invoke-virtual {v11, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v11

    sub-int/2addr v11, v8

    invoke-virtual {v9, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_5

    :cond_9
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v3

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v6

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v3, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    :cond_a
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    if-gtz v3, :cond_b

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v4, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iSupportRebelsSize:I

    :cond_b
    :goto_6
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method protected final setArmyWasRecruited(I)V
    .locals 0

    int-to-byte p1, p1

    iput-byte p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iArmyWasRecruited:B

    return-void
.end method

.method protected final setBG(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    sget-object p1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v0, v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provinceBG:Lage/of/civilizations2/jakowski/lukasz/Image;

    return-void
.end method

.method protected final setBasin(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iBasin:I

    return-void
.end method

.method protected final setBordersWithEnemy(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->bordersWithEnemy:Z

    return-void
.end method

.method protected final setCivID(IZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivID(IZZ)V

    return-void
.end method

.method protected final setCivID(IZZ)V
    .locals 11

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "SET CIVID: 111"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iFromCivID:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "SET CIVID: 222"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v8

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->setCivID(I)V

    if-eqz v8, :cond_7

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TOTAL_WAR_MODE:Z

    if-nez v0, :cond_6

    :goto_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeProvince(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setUpdateRegions(Z)V

    :goto_3
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "SET CIVID: 333"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addProvince(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setUpdateRegions(Z)V

    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "SET CIVID: 444"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateProvinceBorder_OwnerAnimation()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "SET CIVID: 555"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateDrawArmy()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "SET CIVID: 666"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_d

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-eq v8, v0, :cond_b

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-eqz v0, :cond_b

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-eq v0, v8, :cond_8

    const/4 v7, 0x0

    :goto_4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCitiesSize()I

    move-result v0

    if-ge v7, v0, :cond_8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCity(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/City;->getCityLevel()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getEditorCityLevel(I)I

    move-result v1

    if-ne v0, v1, :cond_3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCity(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getEditorCityLevel(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/City;->setCityLevel(I)V

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    if-eqz p1, :cond_1

    :try_start_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iFromCivID:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->updateColorTime:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v6

    if-eqz p1, :cond_5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iFromCivID:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->updateColorTime:Z

    :cond_5
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_1

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setTrueOwnerOfProvince(I)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setTrueOwnerOfProvince(I)V

    goto/16 :goto_3

    :cond_8
    const/4 v7, 0x0

    :goto_5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v0

    if-ge v7, v0, :cond_b

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->whitePeace(II)V

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iRevolt_LastTurnLostProvince:I

    :cond_b
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-lez v0, :cond_c

    invoke-direct {p0, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getUpdateView_SetCivID(I)Ljava/util/List;

    move-result-object v9

    const/4 v7, 0x0

    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_c

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateFogOfWar(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->addChange(IIZ)V

    :cond_d
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "SET CIVID: 777"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_e

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-eq v8, v0, :cond_e

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    const/4 v1, 0x0

    iput-byte v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->neighbooringProvinceOfCivWasLost:B

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappiness()F

    move-result v0

    const v1, 0x3f766080

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappiness(F)V

    :cond_e
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "SET CIVID: 888 END"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v2

    if-ne v0, v2, :cond_14

    const/4 v0, 0x3

    :goto_7
    iput-byte v0, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->wasConquered:B

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->moveAtWar_ProvincesLostAndConquered_LastTurn:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->moveAtWar_ProvincesLostAndConquered_LastTurn:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->moveAtWar_ProvincesLostAndConquered_LastTurn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->moveAtWar_ProvincesLostAndConquered_LastTurn:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfConqueredProvinces:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfConqueredProvinces:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v7, 0x0

    :goto_8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v0

    if-ge v7, v0, :cond_11

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    if-ne v0, v1, :cond_15

    :try_start_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Player;->statistics_Civ_GameData:Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->statistics_Civ_GameData:Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->getConqueredProvinces()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->setConqueredProvinces(I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_10
    :goto_9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->statistics_Civ_GameData:Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->getConqueredProvinces()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->check_Request_ConquredProvinces(I)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Player;->statistics_Civ_GameData:Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->sTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "ConqueredProvinces"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Player;->statistics_Civ_GameData:Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->getConqueredProvinces()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Player;->statistics_Civ_GameData:Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->getConqueredProvinces()I

    move-result v10

    invoke-virtual {v5, v10}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces_Level(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->achievement_Data:Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Player;->statistics_Civ_GameData:Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->sTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "ConqueredProvinces"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Player;->statistics_Civ_GameData:Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->getConqueredProvinces()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Player;->statistics_Civ_GameData:Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->getConqueredProvinces()I

    move-result v10

    invoke-virtual {v5, v10}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces_Level(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->achievement_Data:Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;

    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/SaveManager;->saveRequest:Z

    :cond_11
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->steamGame:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    if-eqz v0, :cond_12

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->steamGame:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->uploadScore()V

    :cond_12
    const/4 v7, 0x0

    :goto_a
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v0

    if-ge v7, v0, :cond_e

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-ne v0, v8, :cond_13

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    const/4 v1, 0x2

    iput-byte v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->neighbooringProvinceOfCivWasLost:B

    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_14
    const/4 v0, 0x4

    goto/16 :goto_7

    :catch_1
    move-exception v6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->loadStatistics_Civ(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    move-result-object v1

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Player;->statistics_Civ_GameData:Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_10

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8
.end method

.method protected final setCivID_Just(I)V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->setCivID(I)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iTrueOwnerOfProvince:I

    const/4 p1, -0x1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iFromCivID:I

    return-void
.end method

.method protected final setCivID_LoadScenario(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iFromCivID:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->updateColorTime:Z

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->setCivID(I)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iTrueOwnerOfProvince:I

    return-void
.end method

.method protected final setCivID_PeaceTreaty(IZZ)V
    .locals 11

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result p1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "SET CIVID: 111"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iFromCivID:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "SET CIVID: 222"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v8

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->setCivID(I)V

    if-eqz v8, :cond_7

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TOTAL_WAR_MODE:Z

    if-nez v0, :cond_6

    :goto_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeProvince(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setUpdateRegions(Z)V

    :goto_3
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "SET CIVID: 333"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addProvince(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setUpdateRegions(Z)V

    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "SET CIVID: 444"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateProvinceBorder_OwnerAnimation()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "SET CIVID: 555"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateDrawArmy()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "SET CIVID: 666"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_d

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-eq v8, v0, :cond_b

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-eqz v0, :cond_b

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-eq v0, v8, :cond_8

    const/4 v7, 0x0

    :goto_4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCitiesSize()I

    move-result v0

    if-ge v7, v0, :cond_8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCity(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/City;->getCityLevel()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getEditorCityLevel(I)I

    move-result v1

    if-ne v0, v1, :cond_3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCity(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getEditorCityLevel(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/City;->setCityLevel(I)V

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    if-eqz p1, :cond_1

    :try_start_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iFromCivID:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->updateColorTime:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v6

    if-eqz p1, :cond_5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iFromCivID:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->updateColorTime:Z

    :cond_5
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_1

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setTrueOwnerOfProvince(I)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setTrueOwnerOfProvince(I)V

    goto/16 :goto_3

    :cond_8
    const/4 v7, 0x0

    :goto_5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v0

    if-ge v7, v0, :cond_b

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->whitePeace(II)V

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iRevolt_LastTurnLostProvince:I

    :cond_b
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-lez v0, :cond_c

    invoke-direct {p0, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getUpdateView_SetCivID(I)Ljava/util/List;

    move-result-object v9

    const/4 v7, 0x0

    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_c

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateFogOfWar(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->addChange(IIZ)V

    :cond_d
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "SET CIVID: 777"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_e

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-eq v8, v0, :cond_e

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    const/4 v1, 0x0

    iput-byte v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->neighbooringProvinceOfCivWasLost:B

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappiness()F

    move-result v0

    const v1, 0x3f766080

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappiness(F)V

    :cond_e
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "SET CIVID: 888 END"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTrueOwnerOfProvince()I

    move-result v2

    if-ne v0, v2, :cond_14

    const/4 v0, 0x3

    :goto_7
    iput-byte v0, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->wasConquered:B

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->moveAtWar_ProvincesLostAndConquered_LastTurn:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->moveAtWar_ProvincesLostAndConquered_LastTurn:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->moveAtWar_ProvincesLostAndConquered_LastTurn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->moveAtWar_ProvincesLostAndConquered_LastTurn:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfConqueredProvinces:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfConqueredProvinces:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v7, 0x0

    :goto_8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v0

    if-ge v7, v0, :cond_11

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    if-ne v0, v1, :cond_15

    :try_start_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Player;->statistics_Civ_GameData:Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->statistics_Civ_GameData:Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->getConqueredProvinces()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->setConqueredProvinces(I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_10
    :goto_9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->statistics_Civ_GameData:Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->getConqueredProvinces()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->check_Request_ConquredProvinces(I)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Player;->statistics_Civ_GameData:Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->sTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "ConqueredProvinces"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Player;->statistics_Civ_GameData:Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->getConqueredProvinces()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Player;->statistics_Civ_GameData:Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->getConqueredProvinces()I

    move-result v10

    invoke-virtual {v5, v10}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces_Level(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->achievement_Data:Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Player;->statistics_Civ_GameData:Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->sTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "ConqueredProvinces"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Player;->statistics_Civ_GameData:Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->getConqueredProvinces()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v10, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Player;->statistics_Civ_GameData:Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->getConqueredProvinces()I

    move-result v10

    invoke-virtual {v5, v10}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces_Level(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->achievement_Data:Lage/of/civilizations2/jakowski/lukasz/Achievement_Data;

    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/SaveManager;->saveRequest:Z

    :cond_11
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->steamGame:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    if-eqz v0, :cond_12

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->steamGame:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;->uploadScore()V

    :cond_12
    const/4 v7, 0x0

    :goto_a
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v0

    if-ge v7, v0, :cond_e

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-ne v0, v8, :cond_13

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    const/4 v1, 0x2

    iput-byte v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->neighbooringProvinceOfCivWasLost:B

    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_14
    const/4 v0, 0x4

    goto/16 :goto_7

    :catch_1
    move-exception v6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->serviceRibbon_Manager:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->loadStatistics_Civ(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    move-result-object v1

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Player;->statistics_Civ_GameData:Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_10

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8
.end method

.method protected final setCivRegionID(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iCivRegionID:I

    return-void
.end method

.method protected final setCivilizationProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .locals 2

    if-nez p2, :cond_0

    const v0, 0x3d20a0a1

    goto :goto_0

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivilizationProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V

    return-void
.end method

.method protected final setCivilizationProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v2

    invoke-direct {v0, v1, v3, p2, p3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final setContinent(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iContinentID:I

    return-void
.end method

.method protected final setDangerLevel(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iDangerLevel:I

    return-void
.end method

.method protected final setDangerLevel_WithArmy(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iDangerLevel_WithArmy:I

    return-void
.end method

.method protected final setDevelopmentLevel(F)V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->fDevelopmentLevel:F

    iget p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->fDevelopmentLevel:F

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v0

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->fDevelopmentLevel:F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->fDevelopmentLevel:F

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->fDevelopmentLevel:F

    :cond_1
    :goto_0
    return-void
.end method

.method protected final setDrawCities(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawCities:Z

    return-void
.end method

.method protected setDrawNuclearExplosion(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawNuclearExplosion:Z

    return-void
.end method

.method protected final setDrawProvince(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawProvince:Z

    return-void
.end method

.method protected final setEconomy(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iEconomy:I

    iget p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iEconomy:I

    const/16 v0, 0x96

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iEconomy:I

    :cond_0
    return-void
.end method

.method protected final setFromCivID(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iFromCivID:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->updateColorTime:Z

    return-void
.end method

.method protected final setGrowthRate_Population(F)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fPopulationGrowthRate:F

    return-void
.end method

.method protected final setHappiness(F)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->fHappiness:F

    iget p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->fHappiness:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->fHappiness:F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->fHappiness:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->fHappiness:F

    :cond_1
    :goto_0
    return-void
.end method

.method protected final setIsCapital(Z)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput-boolean p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->isCapital:Z

    return-void
.end method

.method protected final setIsNotSuppliedForXTurns(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->isNotSuppliedForXTurns:I

    return-void
.end method

.method protected final setIsPartOfHolyRomanEmpire(Z)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput-boolean p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->isPartOfHolyRomaEmpire:Z

    return-void
.end method

.method protected final setLevelOfArmoury(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iArmoury:I

    iget p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iArmoury:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDrawCities(Z)V

    :cond_0
    return-void
.end method

.method public setLevelOfBunker(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iBunker:I

    return-void
.end method

.method protected final setLevelOfFarm(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iFarm:I

    return-void
.end method

.method protected final setLevelOfFort(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iFort:I

    return-void
.end method

.method protected final setLevelOfLibrary(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iLibrary:I

    return-void
.end method

.method protected final setLevelOfNuclearReactor(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iReactor:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iReactor:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDrawCities(Z)V

    :cond_0
    return-void
.end method

.method protected final setLevelOfPort(I)V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iPort:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDrawCities(Z)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->setSeaAccess_HavePort(Z)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setLevelOfShaft(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iShaft:I

    return-void
.end method

.method protected final setLevelOfSupply(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iSupply:I

    return-void
.end method

.method protected final setLevelOfWatchTower(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iWatchTower:I

    return-void
.end method

.method protected final setLevelOfWorkshop(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iWorkshop:I

    return-void
.end method

.method protected final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->sProvinceName:Ljava/lang/String;

    return-void
.end method

.method protected final setNeighbooringProvinceOfCivWasLost(B)V
    .locals 1

    if-gez p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    const/4 v0, 0x0

    iput-byte v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->neighbooringProvinceOfCivWasLost:B

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput-byte p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->neighbooringProvinceOfCivWasLost:B

    :goto_0
    return-void
.end method

.method protected final setNumOfNeighboringNeutralProvinces(I)V
    .locals 0

    int-to-byte p1, p1

    iput-byte p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iNumOfNeighboringNeutralProvinces:B

    return-void
.end method

.method protected final setPoints(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsX:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsY:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsX:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPointsSize:I

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsX:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMaxX:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsY:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMaxY:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsX:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_5

    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsX:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    if-le p2, v1, :cond_1

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsX:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinX:I

    :cond_1
    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMaxX:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsX:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    if-ge p2, v1, :cond_2

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsX:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMaxX:I

    :cond_2
    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsY:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    if-le p2, v1, :cond_3

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsY:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMinY:I

    :cond_3
    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMaxY:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsY:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    if-ge p2, v1, :cond_4

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lPointsY:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iMaxY:I

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method protected final setPopulationData(Lage/of/civilizations2/jakowski/lukasz/Province_Population;)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput-object p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->oPopulation:Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    return-void
.end method

.method protected final setPotential(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iPotential:I

    return-void
.end method

.method protected final setProvinceArmyBoxes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_ArmyBox;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lProvince_ArmyBoxes:Ljava/util/List;

    return-void
.end method

.method protected final setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 8

    :try_start_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iFromCivID:I

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->updateColorTime:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lColorTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->updateColorTime:Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lColorTime:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x2d5

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iFromCivID:I

    const/high16 v3, 0x437f0000    # 255.0f

    if-nez v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    const/16 v3, 0x19

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA:I

    invoke-static {v3, v6, v1, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v0

    invoke-virtual {p1, v2, v4, v5, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    goto :goto_0

    :cond_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iFromCivID:I

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v4

    invoke-static {v2, v4, v1, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iFromCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v5

    invoke-static {v4, v5, v1, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iFromCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v6

    invoke-static {v5, v6, v1, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(IIII)F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p1, v2, v4, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    :goto_0
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->lColorTime:J

    const-wide/16 v2, 0x2d5

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iFromCivID:I

    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivilizationProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    :goto_1
    return-void
.end method

.method protected final setProvinceColor_FoG_Discovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY_ALPHA:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    goto :goto_0

    :catch_1
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :goto_0
    return-void
.end method

.method public setProvinceStability(F)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    return-void
.end method

.method protected final setRegion(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iRegionID:I

    return-void
.end method

.method protected final setRevolutionaryRisk(F)V
    .locals 2

    const v0, 0x3f7d70a4    # 0.99f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->fRevolutionaryRisk:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->fRevolutionaryRisk:F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->fRevolutionaryRisk:F

    :goto_0
    return-void
.end method

.method protected final setShiftArmyX(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iShiftX:I

    return-void
.end method

.method protected final setShiftArmyY(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iShiftY:I

    return-void
.end method

.method protected final setTerrainTypeID(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTerrainTypeID:I

    return-void
.end method

.method protected final setTranslateProvincePosX(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iTranslateProvincePosX:I

    return-void
.end method

.method protected final setTrueOwnerOfProvince(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iTrueOwnerOfProvince:I

    return-void
.end method

.method protected final setWasAttacked(I)V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->wasAttacked:B

    return-void
.end method

.method protected final setWasConquered(B)V
    .locals 1

    if-gez p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    const/4 v0, 0x0

    iput-byte v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->wasConquered:B

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput-byte p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->wasConquered:B

    :goto_0
    return-void
.end method

.method protected final setWasteland(I)V
    .locals 7

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->wastelandLevel:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_19

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    if-ge v2, v4, :cond_c

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    if-ltz p1, :cond_2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v4

    if-gez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder_Just(ZI)V

    goto/16 :goto_5

    :cond_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v2

    if-ltz v2, :cond_3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder_Just(ZI)V

    goto :goto_5

    :cond_3
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder_Just(ZI)V

    goto :goto_5

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder_Just(ZI)V

    goto :goto_5

    :cond_7
    :goto_4
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder_Just(ZI)V

    :goto_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v2

    if-gez p1, :cond_a

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v4

    if-ltz v4, :cond_9

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    :cond_a
    :goto_6
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsWastelandBorder(ZI)V

    goto/16 :goto_f

    :cond_b
    :goto_7
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsWastelandBorder(ZI)V

    goto/16 :goto_f

    :cond_c
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_a

    :cond_d
    if-ltz p1, :cond_f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v4

    if-gez v4, :cond_e

    const/4 v4, 0x1

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    :goto_8
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder_Just(ZI)V

    goto/16 :goto_c

    :cond_f
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v2

    if-ltz v2, :cond_10

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder_Just(ZI)V

    goto/16 :goto_c

    :cond_10
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_11

    const/4 v4, 0x1

    goto :goto_9

    :cond_11
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder_Just(ZI)V

    goto :goto_c

    :cond_12
    :goto_a
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_b

    :cond_13
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder_Just(ZI)V

    goto :goto_c

    :cond_14
    :goto_b
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder_Just(ZI)V

    :goto_c
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_e

    :cond_15
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v2

    if-gez p1, :cond_17

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v4

    if-ltz v4, :cond_16

    goto :goto_d

    :cond_16
    const/4 v3, 0x0

    :cond_17
    :goto_d
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsWastelandBorder(ZI)V

    goto :goto_f

    :cond_18
    :goto_e
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsWastelandBorder(ZI)V

    :goto_f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_19
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->setUpdateProvincesInView(Z)V

    return-void
.end method

.method protected final updateArmy(I)V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->setArmy(II)V

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    const/4 v0, -0x1

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iDefensivePosition:I

    return-void
.end method

.method protected final updateArmy(II)V
    .locals 2

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v1

    if-eq p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->removeArmy(I)V

    return-void

    :cond_0
    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iCivsSize:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {p1, p2, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->setArmy(II)V

    if-nez v0, :cond_1

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    const/4 p2, -0x1

    iput p2, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iDefensivePosition:I

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->addArmy(II)V

    return-void
.end method

.method protected final updateArmyWidth(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Province_Army;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province_Army;->updateArmyWidth_Just(I)V

    return-void
.end method

.method protected final updateArmyWidth_ALL()V
    .locals 2

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->addLoadArmiesWidth_ErrorIDs(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected final updateDefensivePosition()V
    .locals 2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsSupplied()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iDefensivePosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iDefensivePosition:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iDefensivePosition:I

    const/16 v1, 0x4b

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iDefensivePosition:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iDefensivePosition:I

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iDefensivePosition:I

    :cond_3
    :goto_1
    return-void
.end method

.method protected final updateDrawArmy()V
    .locals 6

    :try_start_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-lez v0, :cond_19

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getFogOfWar(I)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v0

    const/high16 v1, 0x42300000    # 44.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_19

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_10

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v0, v1, :cond_8

    :try_start_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$3;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_2
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$4;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$5;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$6;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$7;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$8;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$9;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    :try_start_2
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$10;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_9

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$11;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_9
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$12;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_b

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$13;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_b
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$14;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_d

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$15;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_d
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$16;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$16;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_f

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$17;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$17;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_f
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$18;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$18;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_10
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$19;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$19;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_13

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_13

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_12

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$20;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$20;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_12
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$21;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$21;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_15

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_14

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$22;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$22;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_14
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$23;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$23;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_17

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_16

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$24;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$24;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_16
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$25;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$25;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_17
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_18

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$26;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$26;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_18
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$27;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$27;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_19
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    if-ne v0, v1, :cond_1b

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmyWidth_ALL()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceArmyBoxes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1a

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$28;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$28;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_1a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$29;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$29;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceArmyBoxes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1c

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$30;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$30;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_1c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$31;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$31;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_1d
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsCapital()Z

    move-result v0

    const/16 v1, -0x64

    if-eqz v0, :cond_4d

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v0

    if-lez v0, :cond_2d

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    if-eq v0, v2, :cond_2d

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v2

    if-ne v0, v2, :cond_2d

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    if-ne v0, v1, :cond_25

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmyWidth_ALL()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_1f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_1f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_1e

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$32;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$32;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_1e
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$33;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$33;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_1f
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_21

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_20

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$34;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$34;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_20
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$35;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$35;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_21
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_23

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_22

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$36;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$36;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_22
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$37;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$37;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_23
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_24

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$38;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$38;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_24
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$39;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$39;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_25
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_27

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_27

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_26

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$40;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$40;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_26
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$41;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$41;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_27
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_29

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_28

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$42;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$42;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_28
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$43;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$43;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_29
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_2b

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_2a

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$44;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$44;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_2a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$45;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$45;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_2b
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_2c

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$46;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$46;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_2c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$47;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$47;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_2d
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_3d

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v0

    float-to-int v0, v0

    if-ne v0, v1, :cond_3d

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmyWidth_ALL()V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    if-ne v0, v1, :cond_35

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_2f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_2f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_2e

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$48;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$48;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_2e
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$49;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$49;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_2f
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_31

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_30

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$50;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$50;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_30
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$51;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$51;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_31
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_33

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_32

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$52;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$52;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_32
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$53;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$53;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_33
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_34

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$54;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$54;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_34
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$55;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$55;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_35
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_37

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_37

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_36

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$56;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$56;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_36
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$57;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$57;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_37
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_39

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_38

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$58;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$58;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_38
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$59;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$59;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_39
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_3b

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_3a

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$60;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$60;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_3a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$61;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$61;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_3b
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_3c

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$62;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$62;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_3c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$63;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$63;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_3d
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    if-ne v0, v1, :cond_45

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmyWidth_ALL()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_3f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_3f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_3e

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$64;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$64;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_3e
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$65;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$65;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_3f
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_41

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_40

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$66;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$66;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_40
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$67;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$67;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_41
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_43

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_42

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$68;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$68;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_42
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$69;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$69;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_43
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_44

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$70;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$70;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_44
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$71;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$71;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_45
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_47

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_47

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_46

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$72;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$72;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_46
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$73;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$73;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_47
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_49

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_48

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$74;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$74;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_48
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$75;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$75;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_49
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_4b

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_4a

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$76;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$76;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_4a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$77;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$77;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_4b
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_4c

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$78;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$78;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_4c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$79;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$79;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_4d
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v2

    if-ne v0, v2, :cond_55

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmyWidth_ALL()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_4f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_4f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_4e

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$80;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$80;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_4e
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$81;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$81;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_4f
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_51

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_50

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$82;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$82;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_50
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$83;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$83;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_51
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_53

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_52

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$84;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$84;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_52
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$85;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$85;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_53
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_54

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$86;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$86;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_54
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$87;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$87;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_55
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->iProvinceID:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenProvinceID:I

    if-ne v0, v2, :cond_5d

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_57

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_57

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_56

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$88;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$88;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_56
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$89;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$89;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_57
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_59

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_58

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$90;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$90;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_58
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$91;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$91;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_59
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_5b

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_5a

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$92;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$92;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_5a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$93;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$93;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_5b
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_5c

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$94;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$94;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_5c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$95;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$95;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_5d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    if-ne v0, v2, :cond_66

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_5f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_5f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_5e

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$96;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$96;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_5e
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$97;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$97;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_5f
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_61

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_60

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$98;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$98;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_60
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$99;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$99;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_61
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_63

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_62

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$100;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$100;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_62
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$101;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$101;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_63
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_64

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$102;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$102;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_64
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-nez v0, :cond_65

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$103;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$103;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_65
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$104;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$104;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_66
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_76

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    if-eq v0, v3, :cond_76

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v3

    if-ne v0, v3, :cond_76

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v0

    if-le v0, v2, :cond_6e

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_68

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_68

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_67

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$105;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$105;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_67
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$106;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$106;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_68
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_6a

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_69

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$107;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$107;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_69
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$108;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$108;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_6a
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_6c

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_6b

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$109;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$109;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_6b
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$110;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$110;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_6c
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_6d

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$111;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$111;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_6d
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$112;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$112;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_6e
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_70

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_70

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_6f

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$113;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$113;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_6f
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$114;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$114;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_70
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_72

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_71

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$115;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$115;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_71
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$116;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$116;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_72
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_74

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_73

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$117;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$117;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_73
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$118;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$118;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_74
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_75

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$119;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$119;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_75
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$120;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$120;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_76
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    if-eq v0, v3, :cond_86

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v3

    if-ne v0, v3, :cond_86

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v0

    if-le v0, v2, :cond_7e

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_78

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_78

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_77

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$121;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$121;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_77
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$122;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$122;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_78
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_7a

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_79

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$123;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$123;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_79
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$124;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$124;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_7a
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_7c

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_7b

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$125;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$125;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_7b
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$126;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$126;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_7c
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_7d

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$127;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$127;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_7d
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$128;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$128;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_7e
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_80

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_80

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_7f

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$129;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$129;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_7f
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$130;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$130;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_80
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_82

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_81

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$131;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$131;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_81
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$132;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$132;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_82
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_84

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_83

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$133;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$133;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_83
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$134;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$134;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_84
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_85

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$135;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$135;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_85
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$136;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$136;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_86
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_8e

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v0

    float-to-int v0, v0

    if-ne v0, v1, :cond_8e

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_88

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_88

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_87

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$137;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$137;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_87
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$138;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$138;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_88
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_8a

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_89

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$139;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$139;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_89
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$140;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$140;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_8a
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_8c

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_8b

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$141;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$141;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_8b
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$142;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$142;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_8c
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_8d

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$143;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$143;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_8d
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$144;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$144;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_8e
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v0

    if-le v0, v2, :cond_96

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_90

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_90

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_8f

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$145;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$145;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_8f
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$146;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$146;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_90
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_92

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_91

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$147;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$147;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_91
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$148;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$148;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_92
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_94

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_93

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$149;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$149;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_93
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$150;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$150;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_94
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_95

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$151;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$151;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_95
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$152;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$152;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_96
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_98

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_98

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_97

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$153;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$153;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_97
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$154;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$154;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_98
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_9a

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_99

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$155;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$155;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_99
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$156;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$156;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_9a
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_9c

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_9b

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$157;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$157;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_9b
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$158;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$158;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_9c
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_9d

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$159;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$159;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_9d
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-nez v0, :cond_9e

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$160;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$160;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto/16 :goto_0

    :cond_9e
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$161;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$161;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    nop

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_a0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_a0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_9f

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$162;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$162;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto :goto_0

    :cond_9f
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$163;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$163;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto :goto_0

    :cond_a0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    if-lez v0, :cond_a2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_a1

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$164;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$164;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto :goto_0

    :cond_a1
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$165;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$165;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto :goto_0

    :cond_a2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    if-lez v0, :cond_a4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_a3

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$166;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$166;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto :goto_0

    :cond_a3
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$167;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$167;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto :goto_0

    :cond_a4
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    if-lez v0, :cond_a5

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$168;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$168;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    goto :goto_0

    :cond_a5
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$169;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$169;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    :goto_0
    return-void
.end method

.method protected final updateDrawArmy_ShowsIDs()V
    .locals 1

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province$170;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Province$170;-><init>(Lage/of/civilizations2/jakowski/lukasz/Province;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->drawArmy:Lage/of/civilizations2/jakowski/lukasz/Province_DrawArmy;

    return-void
.end method

.method protected final updateFogOfWar(I)V
    .locals 12

    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->haveArmy_FogOfWarCheck(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v0, v3, :cond_3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->setFogOfWar(IZ)V

    :cond_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->setMetProvince(IZ)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateProvinceBorder()V

    const/4 v3, 0x0

    :goto_1
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->setMetProvince(IZ)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateProvinceBorder()V

    const/4 v4, 0x0

    :goto_2
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v5

    if-ge v4, v5, :cond_1

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID(I)I

    move-result v6

    invoke-virtual {v5, v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->setMetCivilization(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_1c

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_1c

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->haveArmy_FogOfWarCheck(II)Z

    move-result v4

    const/4 v5, 0x0

    :goto_5
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v6

    if-ge v5, v6, :cond_6

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->haveArmy_FogOfWarCheck(II)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v4, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->setFogOfWar_ExtraCheck(IZ)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_7
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v4

    if-ge v0, v4, :cond_11

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_e

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v5

    if-eq v4, v5, :cond_e

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_e

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v4

    if-lez v4, :cond_9

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v5

    if-eq v4, v5, :cond_e

    :cond_9
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->haveArmy_FogOfWarCheck(II)Z

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_9

    :cond_a
    const/4 v4, 0x0

    :goto_8
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_d

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v5

    if-lez v5, :cond_c

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v5

    if-ge v5, v2, :cond_c

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    if-eq v5, v6, :cond_f

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v6

    if-eq v5, v6, :cond_f

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    if-eq v5, v6, :cond_f

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v5

    if-lez v5, :cond_b

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v6

    if-eq v5, v6, :cond_f

    :cond_b
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->haveArmy_FogOfWarCheck(II)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_a

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    :cond_d
    move v4, v3

    const/4 v3, 0x0

    goto :goto_b

    :cond_e
    :goto_9
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v4

    if-lez v4, :cond_f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v4

    if-ge v4, v2, :cond_f

    const/4 v3, 0x1

    :cond_f
    :goto_a
    move v4, v3

    const/4 v3, 0x1

    :goto_b
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getFogOfWar(I)Z

    move-result v5

    if-eq v5, v3, :cond_10

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->setFogOfWar_ExtraCheck(IZ)V

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    if-ne p1, v3, :cond_10

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateDrawArmy()V

    :cond_10
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto/16 :goto_7

    :cond_11
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v4

    if-ge v0, v4, :cond_1b

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_18

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v5

    if-eq v4, v5, :cond_18

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_18

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v4

    if-lez v4, :cond_12

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v5

    if-ne v4, v5, :cond_12

    goto/16 :goto_12

    :cond_12
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_d
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v6

    if-ge v4, v6, :cond_19

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v6, 0x0

    :goto_e
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v7

    if-ge v6, v7, :cond_16

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID(I)I

    move-result v8

    if-eq v7, v8, :cond_14

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v8

    if-eq v7, v8, :cond_14

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID(I)I

    move-result v8

    if-eq v7, v8, :cond_14

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v7

    if-lez v7, :cond_13

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v8

    if-ne v7, v8, :cond_13

    goto :goto_f

    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_e

    :cond_14
    :goto_f
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v4

    const/4 v5, 0x1

    goto/16 :goto_10

    :cond_15
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    if-eq v6, v7, :cond_17

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v7

    if-eq v6, v7, :cond_17

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    if-eq v6, v7, :cond_17

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v6

    if-lez v6, :cond_16

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v7

    if-ne v6, v7, :cond_16

    goto :goto_11

    :cond_16
    :goto_10
    add-int/2addr v4, v2

    goto/16 :goto_d

    :cond_17
    :goto_11
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    :cond_18
    :goto_12
    const/4 v5, 0x1

    :cond_19
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getFogOfWar(I)Z

    move-result v4

    if-eq v4, v5, :cond_1a

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v6

    invoke-virtual {v4, v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->setFogOfWar_ExtraCheck(IZ)V

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    if-ne p1, v4, :cond_1a

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateDrawArmy()V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c

    :cond_1b
    move v0, v3

    :cond_1c
    if-nez v0, :cond_1f

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    if-eq v0, v3, :cond_1f

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v3

    if-eq v0, v3, :cond_1f

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    if-eq v0, v3, :cond_1f

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v0

    if-lez v0, :cond_1d

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v3

    if-eq v0, v3, :cond_1f

    :cond_1d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->haveArmy_FogOfWarCheck(II)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_13

    :cond_1e
    const/4 v0, 0x0

    goto :goto_14

    :cond_1f
    :goto_13
    const/4 v0, 0x1

    :goto_14
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->setFogOfWar_ExtraCheck(IZ)V

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    :goto_15
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v0, v3, :cond_23

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->setMetProvince(IZ)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateProvinceBorder()V

    const/4 v3, 0x0

    :goto_16
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_21

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->setMetProvince(IZ)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateProvinceBorder()V

    const/4 v4, 0x0

    :goto_17
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v5

    if-ge v4, v5, :cond_20

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID(I)I

    move-result v6

    invoke-virtual {v5, v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->setMetCivilization(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_21
    const/4 v3, 0x0

    :goto_18
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v4

    if-ge v3, v4, :cond_22

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID(I)I

    move-result v5

    invoke-virtual {v4, v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->setMetCivilization(IZ)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_15

    :catch_0
    move-exception p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_23

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_19

    :catch_1
    move-exception p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_23

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_23
    :goto_19
    return-void
.end method

.method protected final updateIsNotSuppliedForXTurns()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsSupplied()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWar()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput v6, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->isNotSuppliedForXTurns:I

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->isNotSuppliedForXTurns:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->isNotSuppliedForXTurns:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->isNotSuppliedForXTurns:I

    if-gtz v2, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3c23d70a    # 0.01f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfUnits()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setNumOfUnits(I)V

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmy(I)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy(II)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method protected final updateIsNotSuppliedForXTurns_Twice()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getIsSupplied()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iput v6, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->isNotSuppliedForXTurns:I

    :cond_0
    return-void
.end method

.method protected final updateNewColony()V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iNewColonyBonus:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iNewColonyBonus:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iNewColonyBonus:I

    :cond_0
    return-void
.end method

.method protected final updateProvinceBorder()V
    .locals 8

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_16

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v0, v3, :cond_1a

    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v3

    if-gez v3, :cond_4

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v3

    if-ltz v3, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder(ZI)V

    goto/16 :goto_f

    :cond_2
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder(ZI)V

    goto/16 :goto_f

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v3

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setWasteland(I)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->setWasteland(I)V

    goto/16 :goto_f

    :cond_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v3

    if-gez v3, :cond_11

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v3

    if-gez v3, :cond_b

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    if-ge v3, v4, :cond_8

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v4, 0x1

    :goto_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder(ZI)V

    goto/16 :goto_f

    :cond_8
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v4, 0x1

    :goto_7
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder(ZI)V

    goto/16 :goto_f

    :cond_b
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    if-ge v3, v4, :cond_e

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_8

    :cond_c
    const/4 v4, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v4, 0x1

    :goto_9
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder(ZI)V

    goto/16 :goto_f

    :cond_e
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_a

    :cond_f
    const/4 v4, 0x0

    goto :goto_b

    :cond_10
    :goto_a
    const/4 v4, 0x1

    :goto_b
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder(ZI)V

    goto/16 :goto_f

    :cond_11
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v3

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setWasteland(I)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v3

    if-ltz v3, :cond_15

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->setWasteland(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :catch_0
    move-exception v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    if-ge v4, v5, :cond_13

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    if-eq v5, v6, :cond_12

    const/4 v5, 0x1

    goto :goto_c

    :cond_12
    const/4 v5, 0x0

    :goto_c
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder(ZI)V

    goto :goto_e

    :cond_13
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    if-eq v5, v6, :cond_14

    const/4 v5, 0x1

    goto :goto_d

    :cond_14
    const/4 v5, 0x0

    :goto_d
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder(ZI)V

    :goto_e
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_15
    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_16
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v0, v3, :cond_1a

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    if-ge v3, v4, :cond_18

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_17

    const/4 v4, 0x1

    goto :goto_11

    :cond_17
    const/4 v4, 0x0

    :goto_11
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder(ZI)V

    goto :goto_13

    :cond_18
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_19

    const/4 v4, 0x1

    goto :goto_12

    :cond_19
    const/4 v4, 0x0

    :goto_12
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder(ZI)V

    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1a
    return-void
.end method

.method protected final updateProvinceBorder_OwnerAnimation()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    if-eq v3, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder_OwnerAnimation(ZI)V

    goto :goto_3

    :cond_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceBordersLandByLand(I)Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    if-eq v3, v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->setIsCivilizationBorder_OwnerAnimation(ZI)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected final updateProvinceEconomyLosses(IF)V
    .locals 0

    int-to-float p1, p1

    mul-float p1, p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setEconomy(I)V

    return-void
.end method

.method protected final updateProvincePopulationLosses(IF)V
    .locals 6

    int-to-float p1, p1

    mul-float p1, p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v0

    const/16 v1, 0x5f

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNationalitiesSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, p2

    div-float/2addr v4, v5

    int-to-float v5, p1

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final updateProvincePort(II)V
    .locals 1

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;

    invoke-direct {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;-><init>(II)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->provincePort:Lage/of/civilizations2/jakowski/lukasz/Province_Port_Center;

    return-void
.end method

.method protected final updateProvinceStability()V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-nez v0, :cond_1

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateStability_Score_Population()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateStability_Score_RevRisk()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateStability_Score_Core()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateStability_Score_Workshop()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateStability_Score_Farm()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateStability_Score_Library()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateStability_Score_Occupied()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateStability_Score_Army()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    :cond_2
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateStability_Score_Disease()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    const v1, 0x3c23d70a    # 0.01f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_PROVINCE_STABILITY:F

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->fProvinceStability:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_HAPPINESS_TO_ASSMILIATE_PROVINCE:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappiness()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvincesWithLowStability:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method protected final updateStability_Score_Army()F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    if-ne v2, v3, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceArmy(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x3ee66666    # 0.45f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceArmy(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v1, v1

    const v3, 0x3e800000    # 0.25f

    mul-float v1, v1, v3

    add-float/2addr v2, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v1

    int-to-float v1, v1

    const v3, 0x417f8f86

    div-float/2addr v1, v3

    div-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v1, v1, v0

    return v1
.end method

.method protected final updateStability_Score_Core()F
    .locals 2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCore()Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Core;->getHaveACore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3e4ccccd    # 0.2f

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final updateStability_Score_Disease()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->provincePlague:Lage/of/civilizations2/jakowski/lukasz/PlagueProvince_GameData;

    if-eqz v0, :cond_0

    const v0, 0x3e4ccccd    # 0.2f

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final updateStability_Score_Farm()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iFarm:I

    if-eqz v0, :cond_0

    const v0, 0x3cf5c28f    # 0.03f

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final updateStability_Score_Happiness()F
    .locals 3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappiness()F

    move-result v0

    const v1, 0x3f266666    # 0.65f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const v0, -0x3ee00000    # -10.0f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappiness()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float v1, v1, v0

    return v1

    :cond_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v0

    const v1, 0x41200000    # 10.0f

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappiness()F

    move-result v0

    mul-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    :cond_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappiness()F

    move-result v0

    mul-float v0, v0, v1

    return v0
.end method

.method protected final updateStability_Score_Library()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iLibrary:I

    if-eqz v0, :cond_0

    const v0, 0x3d4ccccd    # 0.05f

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final updateStability_Score_Occupied()F
    .locals 5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3ee66666    # 0.45f

    const v1, 0x3f59999a    # 0.85f

    const v2, 0x3e4ccccd    # 0.2f

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v3

    mul-float v3, v3, v2

    add-float/2addr v3, v1

    mul-float v3, v3, v0

    return v3

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final updateStability_Score_Population()F
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNationalitiesSize()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v4

    :goto_1
    add-int/2addr v1, v4

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f0ccccd    # 0.55f

    mul-float v4, v4, v5

    float-to-int v4, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v2

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const v0, 0x3e5c28f6    # 0.215f

    const/4 v4, 0x0

    if-ge v1, v2, :cond_4

    int-to-float v5, v1

    int-to-float v2, v2

    div-float/2addr v5, v2

    mul-float v5, v5, v0

    add-float/2addr v4, v5

    goto :goto_3

    :cond_4
    int-to-float v2, v2

    int-to-float v5, v1

    div-float/2addr v2, v5

    mul-float v2, v2, v0

    add-float/2addr v4, v2

    :goto_3
    const v0, 0x3f4ccccd    # 0.8f

    int-to-float v1, v1

    int-to-float v2, v3

    div-float/2addr v1, v2

    mul-float v1, v1, v0

    const v0, 0x3f39999a    # 0.725f

    const v2, 0x3e8ccccd    # 0.275f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappiness()F

    move-result v3

    mul-float v3, v3, v2

    add-float/2addr v3, v0

    mul-float v1, v1, v3

    add-float/2addr v4, v1

    return v4
.end method

.method protected final updateStability_Score_RevRisk()F
    .locals 2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRevolutionaryRisk()F

    move-result v0

    const v1, 0x3ee66666    # 0.45f

    mul-float v0, v0, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iSupportRebelsSize:I

    if-lez v1, :cond_0

    const v1, 0x3d4ccccd    # 0.05f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0
.end method

.method protected final updateStability_Score_Workshop()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iWorkshop:I

    if-eqz v0, :cond_0

    const v0, 0x3d4ccccd    # 0.05f

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
