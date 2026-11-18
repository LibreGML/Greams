.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_InGame_Build.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0xaf

.field protected static hideAnimation:Z

.field protected static lTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->lTime:J

    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->hideAnimation:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 47

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    const/4 v8, 0x0

    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    if-ltz v2, :cond_26

    const/16 v26, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_BuildCost(II)I

    move-result v2

    add-int/2addr v14, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getTower_BuildCost(II)I

    move-result v2

    add-int/2addr v14, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_BuildCost(II)I

    move-result v2

    add-int/2addr v14, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Shaft;->getShaft_BuildCost(II)I

    move-result v2

    add-int/2addr v14, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_BuildCost(II)I

    move-result v2

    add-int/2addr v14, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_BuildCost(II)I

    move-result v2

    add-int/2addr v14, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getLibrary_BuildCost(II)I

    move-result v2

    add-int/2addr v14, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getArmoury_BuildCost(II)I

    move-result v2

    add-int/2addr v14, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getSupply_BuildCost(II)I

    move-result v2

    add-int/2addr v14, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getNuclearReactor_BuildCost(II)I

    move-result v2

    add-int/2addr v14, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getBunker_BuildCost(II)I

    move-result v2

    add-int/2addr v14, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_BuildMovementCost(I)I

    move-result v2

    add-int/2addr v15, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getTower_BuildMovementCost(I)I

    move-result v2

    add-int/2addr v15, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_BuildMovementCost(I)I

    move-result v2

    add-int/2addr v15, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Shaft;->getShaft_BuildMovementCost(I)I

    move-result v2

    add-int/2addr v15, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_BuildMovementCost(I)I

    move-result v2

    add-int/2addr v15, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_BuildMovementCost(I)I

    move-result v2

    add-int/2addr v15, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getLibrary_BuildMovementCost(I)I

    move-result v2

    add-int/2addr v15, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getArmoury_BuildMovementCost(I)I

    move-result v2

    add-int/2addr v15, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getSupply_BuildMovementCost(I)I

    move-result v2

    add-int/2addr v15, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getNuclearReactor_BuildMovementCost(I)I

    move-result v2

    add-int/2addr v15, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getBunker_BuildMovementCost(I)I

    move-result v2

    add-int/2addr v15, v2

    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_MaxLevel()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getTower_MaxLevel()I

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_MaxLevel()I

    move-result v3

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Shaft;->getShaft_MaxLevel()I

    move-result v3

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_MaxLevel()I

    move-result v3

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_MaxLevel()I

    move-result v3

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getLibrary_MaxLevel()I

    move-result v3

    if-ne v2, v3, :cond_7

    const/4 v2, 0x1

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getArmoury_MaxLevel()I

    move-result v3

    if-ne v2, v3, :cond_8

    const/4 v2, 0x1

    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getSupply_MaxLevel()I

    move-result v3

    if-ne v2, v3, :cond_9

    const/4 v2, 0x1

    :goto_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getNuclearReactor_MaxLevel()I

    move-result v3

    if-ne v2, v3, :cond_a

    const/4 v2, 0x1

    :goto_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getBunker_MaxLevel()I

    move-result v3

    if-ne v2, v3, :cond_b

    const/4 v2, 0x1

    :goto_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x1

    const/16 v43, 0x0

    :goto_b
    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v43

    if-ge v0, v2, :cond_c

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v20, 0x0

    :cond_0
    add-int/lit8 v43, v43, 0x1

    goto :goto_b

    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_9
    const/4 v2, 0x0

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    goto :goto_9

    :cond_b
    const/4 v2, 0x0

    goto :goto_a

    :cond_c
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v2

    if-gtz v2, :cond_16

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v2

    if-gtz v2, :cond_15

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v2

    if-gtz v2, :cond_14

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v2

    if-gtz v2, :cond_13

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v2

    if-gtz v2, :cond_12

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v2

    if-gtz v2, :cond_11

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v2

    if-gtz v2, :cond_10

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v2

    if-gtz v2, :cond_f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v2

    if-gtz v2, :cond_e

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v2

    if-gtz v2, :cond_d

    const/16 v26, 0x0

    :goto_c
    const/16 v45, 0x0

    const/4 v6, 0x0

    :goto_d
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWonderSize()I

    move-result v2

    if-ge v6, v2, :cond_17

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$1;

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3dc0c0c1

    const v5, 0x3ea0a0a1

    const v7, 0x3edcdcdd

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5, v7, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sget v5, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Lcom/badlogic/gdx/graphics/Color;IIIII)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_d
    const/16 v26, 0x1

    goto :goto_c

    :cond_e
    const/16 v26, 0x1

    goto :goto_c

    :cond_f
    const/16 v26, 0x1

    goto :goto_c

    :cond_10
    const/16 v26, 0x1

    goto :goto_c

    :cond_11
    const/16 v26, 0x1

    goto :goto_c

    :cond_12
    const/16 v26, 0x1

    goto :goto_c

    :cond_13
    const/16 v26, 0x1

    goto :goto_c

    :cond_14
    const/16 v26, 0x1

    goto :goto_c

    :cond_15
    const/16 v26, 0x1

    goto :goto_c

    :cond_16
    const/16 v26, 0x1

    goto :goto_c

    :cond_17
    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$2;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "BuildAll"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget v13, Lage/of/civilizations2/jakowski/lukasz/Images;->economy:I

    const/16 v16, 0x0

    if-eqz v26, :cond_28

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v18, v9, v2

    :goto_e
    const/16 v19, 0x1

    const/16 v21, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_TechLevel(I)F

    move-result v22

    move-object/from16 v11, p0

    move/from16 v17, v8

    invoke-direct/range {v10 .. v22}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;IIIIIIZZIF)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    if-eqz v26, :cond_18

    new-instance v21, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$3;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v23, v9, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v25

    move-object/from16 v22, p0

    move/from16 v24, v8

    invoke-direct/range {v21 .. v26}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;IIIZ)V

    move-object/from16 v0, v44

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    :cond_18
    const/4 v2, 0x1

    rem-int/lit8 v45, v2, 0x2

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$4;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_Name(I)Ljava/lang/String;

    move-result-object v29

    sget v30, Lage/of/civilizations2/jakowski/lukasz/Images;->b_fort:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_BuildCost(II)I

    move-result v32

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_BuildMovementCost(I)I

    move-result v33

    const/16 v34, 0x0

    if-eqz v26, :cond_29

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v36, v9, v2

    :goto_f
    const/16 v37, 0x1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_MaxLevel()I

    move-result v3

    if-ne v2, v3, :cond_2a

    const/16 v38, 0x1

    :goto_10
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->FORT:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isInConstruction(ILage/of/civilizations2/jakowski/lukasz/ConstructionType;)I

    move-result v39

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_TechLevel(I)F

    move-result v40

    move-object/from16 v28, p0

    move/from16 v35, v8

    invoke-direct/range {v27 .. v40}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;ILjava/lang/String;IIIIIZZIF)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    if-eqz v26, :cond_19

    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$5;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v29, v9, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v31

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v2

    if-lez v2, :cond_2b

    const/16 v32, 0x1

    :goto_11
    move-object/from16 v28, p0

    move/from16 v30, v8

    invoke-direct/range {v27 .. v32}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;IIIZ)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    :cond_19
    const/4 v2, 0x2

    rem-int/lit8 v45, v2, 0x2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v2

    if-lez v2, :cond_2c

    const/16 v26, 0x1

    :goto_12
    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$6;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getTower_Name(I)Ljava/lang/String;

    move-result-object v29

    sget v30, Lage/of/civilizations2/jakowski/lukasz/Images;->b_tower:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getTower_BuildCost(II)I

    move-result v31

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getTower_BuildMovementCost(I)I

    move-result v32

    const/16 v33, 0x0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    if-eqz v26, :cond_2d

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v35, v9, v2

    :goto_13
    const/16 v36, 0x1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getTower_MaxLevel()I

    move-result v3

    if-ne v2, v3, :cond_2e

    const/16 v37, 0x1

    :goto_14
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->TOWER:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isInConstruction(ILage/of/civilizations2/jakowski/lukasz/ConstructionType;)I

    move-result v38

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getTower_TechLevel(I)F

    move-result v39

    move-object/from16 v28, p0

    move/from16 v34, v8

    invoke-direct/range {v27 .. v39}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;IIIIIIZZIF)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    if-eqz v26, :cond_1a

    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$7;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v29, v9, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v31

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v2

    if-lez v2, :cond_2f

    const/16 v32, 0x1

    :goto_15
    move-object/from16 v28, p0

    move/from16 v30, v8

    invoke-direct/range {v27 .. v32}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;IIIZ)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    :cond_1a
    const/4 v2, 0x1

    rem-int/lit8 v45, v2, 0x2

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v2

    if-ltz v2, :cond_1c

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v2

    if-lez v2, :cond_30

    const/16 v26, 0x1

    :goto_16
    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$8;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_Name(I)Ljava/lang/String;

    move-result-object v29

    sget v30, Lage/of/civilizations2/jakowski/lukasz/Images;->b_port:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_BuildCost(II)I

    move-result v31

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_BuildMovementCost(I)I

    move-result v32

    const/16 v33, 0x0

    if-eqz v26, :cond_31

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v35, v9, v2

    :goto_17
    const/16 v36, 0x1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_MaxLevel()I

    move-result v3

    if-ne v2, v3, :cond_32

    const/16 v37, 0x1

    :goto_18
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->PORT:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isInConstruction(ILage/of/civilizations2/jakowski/lukasz/ConstructionType;)I

    move-result v38

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_TechLevel(I)F

    move-result v39

    move-object/from16 v28, p0

    move/from16 v34, v8

    invoke-direct/range {v27 .. v39}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;IIIIIIZZIF)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    if-eqz v26, :cond_1b

    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$9;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v29, v9, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v31

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v2

    if-lez v2, :cond_33

    const/16 v32, 0x1

    :goto_19
    move-object/from16 v28, p0

    move/from16 v30, v8

    invoke-direct/range {v27 .. v32}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;IIIZ)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    :cond_1b
    const/4 v2, 0x2

    rem-int/lit8 v45, v2, 0x2

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    :cond_1c
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getPopulationGrowth(I)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1e

    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$10;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_Name(I)Ljava/lang/String;

    move-result-object v29

    sget v30, Lage/of/civilizations2/jakowski/lukasz/Images;->b_farm:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_BuildCost(II)I

    move-result v32

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_BuildMovementCost(I)I

    move-result v33

    const/16 v34, 0x0

    if-eqz v26, :cond_34

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v36, v9, v2

    :goto_1a
    const/16 v37, 0x1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_MaxLevel()I

    move-result v3

    if-ne v2, v3, :cond_35

    const/16 v38, 0x1

    :goto_1b
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->FARM:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isInConstruction(ILage/of/civilizations2/jakowski/lukasz/ConstructionType;)I

    move-result v39

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_TechLevel(I)F

    move-result v40

    move-object/from16 v28, p0

    move/from16 v35, v8

    invoke-direct/range {v27 .. v40}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;ILjava/lang/String;IIIIIZZIF)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    if-eqz v26, :cond_1d

    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$11;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v29, v9, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v31

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v2

    if-lez v2, :cond_36

    const/16 v32, 0x1

    :goto_1c
    move-object/from16 v28, p0

    move/from16 v30, v8

    invoke-direct/range {v27 .. v32}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;IIIZ)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    :cond_1d
    add-int/lit8 v2, v45, 0x1

    rem-int/lit8 v45, v2, 0x2

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    :cond_1e
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v2

    if-lez v2, :cond_37

    const/16 v26, 0x1

    :goto_1d
    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$12;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Shaft;->getShaft_Name(I)Ljava/lang/String;

    move-result-object v29

    sget v30, Lage/of/civilizations2/jakowski/lukasz/Images;->b_shaft:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Shaft;->getShaft_BuildCost(II)I

    move-result v32

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Shaft;->getShaft_BuildMovementCost(I)I

    move-result v33

    const/16 v34, 0x0

    if-eqz v26, :cond_38

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v36, v9, v2

    :goto_1e
    const/16 v37, 0x1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Shaft;->getShaft_MaxLevel()I

    move-result v3

    if-ne v2, v3, :cond_39

    const/16 v38, 0x1

    :goto_1f
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->SHAFT:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isInConstruction(ILage/of/civilizations2/jakowski/lukasz/ConstructionType;)I

    move-result v39

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfShaft()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Shaft;->getShaft_TechLevel(I)F

    move-result v40

    move-object/from16 v28, p0

    move/from16 v35, v8

    invoke-direct/range {v27 .. v40}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;ILjava/lang/String;IIIIIZZIF)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    if-eqz v26, :cond_1f

    new-instance v21, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$13;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v23, v9, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v25

    move-object/from16 v22, p0

    move/from16 v24, v8

    invoke-direct/range {v21 .. v26}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;IIIZ)V

    move-object/from16 v0, v44

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    :cond_1f
    add-int/lit8 v2, v45, 0x1

    rem-int/lit8 v45, v2, 0x2

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v2

    if-lez v2, :cond_3a

    const/16 v26, 0x1

    :goto_20
    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$14;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_Name(I)Ljava/lang/String;

    move-result-object v29

    sget v30, Lage/of/civilizations2/jakowski/lukasz/Images;->b_workshop:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_BuildCost(II)I

    move-result v32

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_BuildMovementCost(I)I

    move-result v33

    const/16 v34, 0x0

    if-eqz v26, :cond_3b

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v36, v9, v2

    :goto_21
    const/16 v37, 0x1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_MaxLevel()I

    move-result v3

    if-ne v2, v3, :cond_3c

    const/16 v38, 0x1

    :goto_22
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->WORKSHOP:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isInConstruction(ILage/of/civilizations2/jakowski/lukasz/ConstructionType;)I

    move-result v39

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_TechLevel(I)F

    move-result v40

    move-object/from16 v28, p0

    move/from16 v35, v8

    invoke-direct/range {v27 .. v40}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;ILjava/lang/String;IIIIIZZIF)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    if-eqz v26, :cond_20

    new-instance v21, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$15;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v23, v9, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v25

    move-object/from16 v22, p0

    move/from16 v24, v8

    invoke-direct/range {v21 .. v26}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;IIIZ)V

    move-object/from16 v0, v44

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    :cond_20
    add-int/lit8 v2, v45, 0x1

    rem-int/lit8 v45, v2, 0x2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v2

    if-lez v2, :cond_3d

    const/16 v26, 0x1

    :goto_23
    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$16;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getLibrary_Name(I)Ljava/lang/String;

    move-result-object v29

    sget v30, Lage/of/civilizations2/jakowski/lukasz/Images;->b_library:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getLibrary_BuildCost(II)I

    move-result v32

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getLibrary_BuildMovementCost(I)I

    move-result v33

    const/16 v34, 0x0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    if-eqz v26, :cond_3e

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v36, v9, v2

    :goto_24
    const/16 v37, 0x1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getLibrary_MaxLevel()I

    move-result v3

    if-ne v2, v3, :cond_3f

    const/16 v38, 0x1

    :goto_25
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->LIBRARY:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isInConstruction(ILage/of/civilizations2/jakowski/lukasz/ConstructionType;)I

    move-result v39

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getLibrary_TechLevel(I)F

    move-result v40

    move-object/from16 v28, p0

    move/from16 v35, v8

    invoke-direct/range {v27 .. v40}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$16;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;ILjava/lang/String;IIIIIZZIF)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    if-eqz v26, :cond_21

    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$17;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v29, v9, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v31

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v2

    if-lez v2, :cond_40

    const/16 v32, 0x1

    :goto_26
    move-object/from16 v28, p0

    move/from16 v30, v8

    invoke-direct/range {v27 .. v32}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$17;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;IIIZ)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    :cond_21
    add-int/lit8 v2, v45, 0x1

    rem-int/lit8 v45, v2, 0x2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v2

    if-lez v2, :cond_41

    const/16 v26, 0x1

    :goto_27
    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$18;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getArmoury_Name(I)Ljava/lang/String;

    move-result-object v29

    sget v30, Lage/of/civilizations2/jakowski/lukasz/Images;->b_armoury:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getArmoury_BuildCost(II)I

    move-result v31

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getArmoury_BuildMovementCost(I)I

    move-result v32

    const/16 v33, 0x0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    if-eqz v26, :cond_42

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v35, v9, v2

    :goto_28
    const/16 v36, 0x1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getArmoury_MaxLevel()I

    move-result v3

    if-ne v2, v3, :cond_43

    const/16 v37, 0x1

    :goto_29
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->ARMOURY:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isInConstruction(ILage/of/civilizations2/jakowski/lukasz/ConstructionType;)I

    move-result v38

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getArmoury_TechLevel(I)F

    move-result v39

    move-object/from16 v28, p0

    move/from16 v34, v8

    invoke-direct/range {v27 .. v39}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$18;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;IIIIIIZZIF)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    if-eqz v26, :cond_22

    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$19;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v29, v9, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v31

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v2

    if-lez v2, :cond_44

    const/16 v32, 0x1

    :goto_2a
    move-object/from16 v28, p0

    move/from16 v30, v8

    invoke-direct/range {v27 .. v32}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$19;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;IIIZ)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    :cond_22
    add-int/lit8 v2, v45, 0x1

    rem-int/lit8 v45, v2, 0x2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v2

    if-lez v2, :cond_45

    const/16 v26, 0x1

    :goto_2b
    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$20;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getSupply_Name(I)Ljava/lang/String;

    move-result-object v29

    sget v30, Lage/of/civilizations2/jakowski/lukasz/Images;->b_supply:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getSupply_BuildCost(II)I

    move-result v31

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getSupply_BuildMovementCost(I)I

    move-result v32

    const/16 v33, 0x0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    if-eqz v26, :cond_46

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v35, v9, v2

    :goto_2c
    const/16 v36, 0x1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getSupply_MaxLevel()I

    move-result v3

    if-ne v2, v3, :cond_47

    const/16 v37, 0x1

    :goto_2d
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->SUPPLY:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isInConstruction(ILage/of/civilizations2/jakowski/lukasz/ConstructionType;)I

    move-result v38

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getSupply_TechLevel(I)F

    move-result v39

    move-object/from16 v28, p0

    move/from16 v34, v8

    invoke-direct/range {v27 .. v39}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$20;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;IIIIIIZZIF)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    if-eqz v26, :cond_23

    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$21;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v29, v9, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v31

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v2

    if-lez v2, :cond_48

    const/16 v32, 0x1

    :goto_2e
    move-object/from16 v28, p0

    move/from16 v30, v8

    invoke-direct/range {v27 .. v32}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$21;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;IIIZ)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    :cond_23
    add-int/lit8 v2, v45, 0x1

    rem-int/lit8 v45, v2, 0x2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v2

    if-lez v2, :cond_49

    const/16 v26, 0x1

    :goto_2f
    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$22;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getNuclearReactor_Name(I)Ljava/lang/String;

    move-result-object v29

    sget v30, Lage/of/civilizations2/jakowski/lukasz/Images;->top_nuclear_weapons:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getNuclearReactor_BuildCost(II)I

    move-result v31

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getNuclearReactor_BuildMovementCost(I)I

    move-result v32

    const/16 v33, 0x0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    if-eqz v26, :cond_4a

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v35, v9, v2

    :goto_30
    const/16 v36, 0x1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getNuclearReactor_MaxLevel()I

    move-result v3

    if-ne v2, v3, :cond_4b

    const/16 v37, 0x1

    :goto_31
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->NUCLEAR_REACTOR:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isInConstruction(ILage/of/civilizations2/jakowski/lukasz/ConstructionType;)I

    move-result v38

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getNuclearReactor_TechLevel(I)F

    move-result v39

    move-object/from16 v28, p0

    move/from16 v34, v8

    invoke-direct/range {v27 .. v39}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$22;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;IIIIIIZZIF)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    if-eqz v26, :cond_24

    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$23;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v29, v9, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v31

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v2

    if-lez v2, :cond_4c

    const/16 v32, 0x1

    :goto_32
    move-object/from16 v28, p0

    move/from16 v30, v8

    invoke-direct/range {v27 .. v32}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$23;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;IIIZ)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    :cond_24
    add-int/lit8 v2, v45, 0x1

    rem-int/lit8 v45, v2, 0x2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v2

    if-lez v2, :cond_4d

    const/16 v26, 0x1

    :goto_33
    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$24;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getBunker_Name(I)Ljava/lang/String;

    move-result-object v29

    sget v30, Lage/of/civilizations2/jakowski/lukasz/Images;->bBunker:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getBunker_BuildCost(II)I

    move-result v31

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getBunker_BuildMovementCost(I)I

    move-result v32

    const/16 v33, 0x0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    if-eqz v26, :cond_4e

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v35, v9, v2

    :goto_34
    const/16 v36, 0x1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getBunker_MaxLevel()I

    move-result v3

    if-ne v2, v3, :cond_4f

    const/16 v37, 0x1

    :goto_35
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->BUNKER:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isInConstruction(ILage/of/civilizations2/jakowski/lukasz/ConstructionType;)I

    move-result v38

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getBunker_TechLevel(I)F

    move-result v39

    move-object/from16 v28, p0

    move/from16 v34, v8

    invoke-direct/range {v27 .. v39}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$24;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;IIIIIIZZIF)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    if-eqz v26, :cond_25

    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$25;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v2

    sub-int v29, v9, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Destroy;->getButtonWidth()I

    move-result v31

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v2

    if-lez v2, :cond_50

    const/16 v32, 0x1

    :goto_36
    move-object/from16 v28, p0

    move/from16 v30, v8

    invoke-direct/range {v27 .. v32}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$25;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;IIIZ)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v45

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    :cond_25
    add-int/lit8 v2, v45, 0x1

    rem-int/lit8 v45, v2, 0x2

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    :cond_26
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v46

    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$26;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Decrees"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const/16 v30, -0x1

    const/16 v31, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int v34, v2, v3

    move-object/from16 v28, p0

    move/from16 v32, v8

    move/from16 v33, v9

    invoke-direct/range {v27 .. v34}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$26;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;IIIII)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$27;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Festival"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sget v30, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_festival:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->festivalCost(I)I

    move-result v31

    const/16 v32, 0x8

    const/16 v33, 0x0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    const/16 v36, 0x1

    const/16 v37, 0x0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isFestivalOrganized_TurnsLeft(I)I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v28, p0

    move/from16 v34, v8

    move/from16 v35, v9

    invoke-direct/range {v27 .. v39}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$27;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;IIIIIIZZIF)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$28;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Assimilate"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sget v30, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_popstability:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->assimilateCost(II)I

    move-result v31

    const/16 v32, 0x6

    const/16 v33, 0x0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v2

    if-nez v2, :cond_51

    const/16 v36, 0x1

    :goto_37
    const/16 v37, 0x0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAssimialateOrganized_TurnsLeft(I)I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v28, p0

    move/from16 v34, v8

    move/from16 v35, v9

    invoke-direct/range {v27 .. v39}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$28;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;IIIIIIZZIF)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$29;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Invest"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sget v30, Lage/of/civilizations2/jakowski/lukasz/Images;->economy:I

    const/16 v31, 0x0

    const/16 v32, 0xc

    const/16 v33, 0x0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    const/16 v36, 0x1

    const/16 v37, 0x0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isInvestOrganized_TurnsLeft(I)I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v28, p0

    move/from16 v34, v8

    move/from16 v35, v9

    invoke-direct/range {v27 .. v39}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$29;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;IIIIIIZZIF)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$30;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Invest"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sget v30, Lage/of/civilizations2/jakowski/lukasz/Images;->development:I

    const/16 v31, 0x0

    const/16 v32, 0x8

    const/16 v33, 0x0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    const/16 v36, 0x1

    const/16 v37, 0x0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isInvestOrganized_TurnsLeft_Development(I)I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v28, p0

    move/from16 v34, v8

    move/from16 v35, v9

    invoke-direct/range {v27 .. v39}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$30;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;IIIIIIZZIF)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v2

    if-eqz v2, :cond_27

    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$31;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "TransferControl"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sget v30, Lage/of/civilizations2/jakowski/lukasz/Images;->transfer_control:I

    const/16 v31, 0x0

    const/16 v32, 0x4

    const/16 v33, 0x0

    const/16 v36, 0x1

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v28, p0

    move/from16 v34, v8

    move/from16 v35, v9

    invoke-direct/range {v27 .. v39}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$31;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;IIIIIIZZIF)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    :cond_27
    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$32;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Army"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const/16 v30, -0x1

    const/16 v31, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int v34, v2, v3

    move-object/from16 v28, p0

    move/from16 v32, v8

    move/from16 v33, v9

    invoke-direct/range {v27 .. v34}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$32;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;IIIII)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$33;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Conscript"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sget v30, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_army:I

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    const/16 v36, 0x1

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v28, p0

    move/from16 v34, v8

    move/from16 v35, v9

    invoke-direct/range {v27 .. v39}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$33;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;IIIIIIZZIF)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$34;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "DisbandArmy"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sget v30, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_army:I

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    const/16 v36, 0x1

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v28, p0

    move/from16 v34, v8

    move/from16 v35, v9

    invoke-direct/range {v27 .. v39}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$34;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;IIIIIIZZIF)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$35;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Plunder"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sget v30, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_plunder:I

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    const/16 v36, 0x1

    const/16 v37, 0x0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isPlundred(I)Z

    move-result v2

    if-eqz v2, :cond_52

    const/16 v38, 0x1

    :goto_38
    const/16 v39, 0x0

    move-object/from16 v28, p0

    move/from16 v34, v8

    move/from16 v35, v9

    invoke-direct/range {v27 .. v39}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$35;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;IIIIIIZZIF)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$36;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Province"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const/16 v30, -0x1

    const/16 v31, 0x0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int v34, v2, v3

    move-object/from16 v28, p0

    move/from16 v32, v8

    move/from16 v33, v9

    invoke-direct/range {v27 .. v34}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$36;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;IIIII)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    :try_start_0
    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$37;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Abandon"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sget v30, Lage/of/civilizations2/jakowski/lukasz/Images;->provinces:I

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v3

    if-eq v2, v3, :cond_53

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v2

    if-nez v2, :cond_53

    const/16 v36, 0x1

    :goto_39
    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v28, p0

    move/from16 v34, v8

    move/from16 v35, v9

    invoke-direct/range {v27 .. v39}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$37;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;IIIIIIZZIF)V

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setHeight(I)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/2addr v8, v2

    :goto_3a
    move/from16 v6, v46

    :goto_3b
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_54

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    rem-int/lit8 v3, v6, 0x2

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    :cond_28
    move/from16 v18, v9

    goto/16 :goto_e

    :cond_29
    move/from16 v36, v9

    goto/16 :goto_f

    :cond_2a
    const/16 v38, 0x0

    goto/16 :goto_10

    :cond_2b
    const/16 v32, 0x0

    goto/16 :goto_11

    :cond_2c
    const/16 v26, 0x0

    goto/16 :goto_12

    :cond_2d
    move/from16 v35, v9

    goto/16 :goto_13

    :cond_2e
    const/16 v37, 0x0

    goto/16 :goto_14

    :cond_2f
    const/16 v32, 0x0

    goto/16 :goto_15

    :cond_30
    const/16 v26, 0x0

    goto/16 :goto_16

    :cond_31
    move/from16 v35, v9

    goto/16 :goto_17

    :cond_32
    const/16 v37, 0x0

    goto/16 :goto_18

    :cond_33
    const/16 v32, 0x0

    goto/16 :goto_19

    :cond_34
    move/from16 v36, v9

    goto/16 :goto_1a

    :cond_35
    const/16 v38, 0x0

    goto/16 :goto_1b

    :cond_36
    const/16 v32, 0x0

    goto/16 :goto_1c

    :cond_37
    const/16 v26, 0x0

    goto/16 :goto_1d

    :cond_38
    move/from16 v36, v9

    goto/16 :goto_1e

    :cond_39
    const/16 v38, 0x0

    goto/16 :goto_1f

    :cond_3a
    const/16 v26, 0x0

    goto/16 :goto_20

    :cond_3b
    move/from16 v36, v9

    goto/16 :goto_21

    :cond_3c
    const/16 v38, 0x0

    goto/16 :goto_22

    :cond_3d
    const/16 v26, 0x0

    goto/16 :goto_23

    :cond_3e
    move/from16 v36, v9

    goto/16 :goto_24

    :cond_3f
    const/16 v38, 0x0

    goto/16 :goto_25

    :cond_40
    const/16 v32, 0x0

    goto/16 :goto_26

    :cond_41
    const/16 v26, 0x0

    goto/16 :goto_27

    :cond_42
    move/from16 v35, v9

    goto/16 :goto_28

    :cond_43
    const/16 v37, 0x0

    goto/16 :goto_29

    :cond_44
    const/16 v32, 0x0

    goto/16 :goto_2a

    :cond_45
    const/16 v26, 0x0

    goto/16 :goto_2b

    :cond_46
    move/from16 v35, v9

    goto/16 :goto_2c

    :cond_47
    const/16 v37, 0x0

    goto/16 :goto_2d

    :cond_48
    const/16 v32, 0x0

    goto/16 :goto_2e

    :cond_49
    const/16 v26, 0x0

    goto/16 :goto_2f

    :cond_4a
    move/from16 v35, v9

    goto/16 :goto_30

    :cond_4b
    const/16 v37, 0x0

    goto/16 :goto_31

    :cond_4c
    const/16 v32, 0x0

    goto/16 :goto_32

    :cond_4d
    const/16 v26, 0x0

    goto/16 :goto_33

    :cond_4e
    move/from16 v35, v9

    goto/16 :goto_34

    :cond_4f
    const/16 v37, 0x0

    goto/16 :goto_35

    :cond_50
    const/16 v32, 0x0

    goto/16 :goto_36

    :cond_51
    const/16 v36, 0x0

    goto/16 :goto_37

    :cond_52
    const/16 v38, 0x0

    goto/16 :goto_38

    :cond_53
    const/16 v36, 0x0

    goto/16 :goto_39

    :catch_0
    move-exception v41

    invoke-static/range {v41 .. v41}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    :cond_54
    new-instance v27, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$38;

    const/16 v29, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v30, v2, 0x5

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v28, p0

    invoke-direct/range {v27 .. v32}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$38;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;IZZ)V

    const/16 v30, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    add-int v31, v2, v3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v33

    const/16 v35, 0x0

    const/16 v36, 0x1

    move-object/from16 v28, p0

    move-object/from16 v29, v27

    move/from16 v32, v9

    move-object/from16 v34, v44

    invoke-virtual/range {v28 .. v36}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    if-gez v2, :cond_55

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->setVisible(Z)V

    :cond_55
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->actionElement(I)V

    goto :goto_0
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 10

    const/high16 v7, 0x432f0000    # 175.0f

    const/4 v6, 0x1

    const/4 v9, 0x0

    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->lTime:J

    const-wide/16 v2, 0xaf

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->hideAnimation:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v1, v7

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int/2addr p2, v0

    move v8, p2

    :goto_0
    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getWidth()I

    move-result v1

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v1

    move-object v1, p1

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3dc8c8c9

    const v2, 0x3d70f0f1

    const v3, 0x3ebebebf

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getWidth()I

    move-result v4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v1, 0x4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f266666    # 0.65f

    invoke-direct {v0, v9, v9, v9, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getWidth()I

    move-result v4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v1, 0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getPosY()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getWidth()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v4, v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getWidth()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v9, v9, v9, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v2, v7

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    move v8, p2

    goto/16 :goto_0

    :cond_2
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->hideAnimation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    goto :goto_1
.end method

.method protected drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :cond_0
    return-void
.end method

.method protected final setHideAnimation(Z)V
    .locals 8

    const-wide/16 v6, 0xaf

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->hideAnimation:Z

    if-eq p1, v0, :cond_0

    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->lTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->lTime:J

    sub-long/2addr v2, v4

    sub-long v2, v6, v2

    sub-long/2addr v0, v2

    :goto_0
    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->lTime:J

    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_0
    sput-boolean p1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->hideAnimation:Z

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method protected setVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->setHideAnimation(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->setHideAnimation(Z)V

    goto :goto_0
.end method

.method protected updateLanguage()V
    .locals 3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setText(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "More"

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
