.class Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;
.super Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;
.source "CivArmyMission_NavalInvasion.java"


# instance fields
.field private iCivID:I

.field protected moveArmyInNextXTurns:I

.field protected numOfUnitsMoved:I


# direct methods
.method protected constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->moveArmyInNextXTurns:I

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->numOfUnitsMoved:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iProvinceID:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->toProvinceID:I

    const/4 p3, -0x1

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->MISSION_ID:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iCivID:I

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->NAVAL_INVASION:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    iput-object p3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->MISSION_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->TURN_ID:I

    const/16 p3, 0xa

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iObsolate:I

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p3, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p2

    invoke-virtual {p2, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result p1

    int-to-float p1, p1

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 p3, 0x19

    invoke-virtual {p2, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    const p3, 0x3f2f5c29    # 0.685f

    add-float/2addr p2, p3

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iArmy:I

    return-void
.end method


# virtual methods
.method protected action(I)Z
    .locals 20

    move-object/from16 v0, p0

    move/from16 v8, p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->toProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v1, v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v1

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->toProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v1, v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAreAllied(II)Z

    move-result v1

    if-nez v1, :cond_0

    iput v10, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iObsolate:I

    return v9

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->toProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->toProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v1

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->checkRegionBordersWithEnemy(I)Z

    move-result v1

    if-nez v1, :cond_1

    iput v10, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iObsolate:I

    return v9

    :cond_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBordersWithEnemy()Z

    move-result v1

    if-eqz v1, :cond_2

    iput v10, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iObsolate:I

    return v9

    :cond_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v1

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->checkRegionBordersWithEnemy(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iput v10, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iObsolate:I

    return v9

    :cond_3
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE:I

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    mul-float v2, v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    return v10

    :cond_4
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NavalInvasion -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "AoC"

    invoke-interface {v1, v11, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v1

    if-lez v1, :cond_5

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iProvinceID:I

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->toProvinceID:I

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->action_BuildPort(II)Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_5
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NavalInvasion -> 000, moveArmyInNextXTurns: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->moveArmyInNextXTurns:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v1

    if-lez v1, :cond_15

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->moveArmyInNextXTurns:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->moveArmyInNextXTurns:I

    if-gtz v1, :cond_15

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_AtWar;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iProvinceID:I

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->toProvinceID:I

    invoke-direct {v13, v8, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_AtWar;-><init>(III)V

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_AtWar;->getRouteSize()I

    move-result v1

    if-lez v1, :cond_14

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->toProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    invoke-virtual {v2, v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->toProvinceID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->toProvinceID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v4

    if-ge v2, v4, :cond_8

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v7, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->toProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v7, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->toProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvinceArmy(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->toProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->toProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivRegionID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v2

    invoke-virtual {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->checkRegionBordersWithEnemy(I)Z

    move-result v2

    if-nez v2, :cond_7

    iput v10, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iObsolate:I

    return v9

    :cond_7
    const/4 v3, 0x0

    :cond_8
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NavalInvasion -> enemyArmy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v11, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v2, v3

    const v4, 0x3f533333    # 0.825f

    mul-float v4, v4, v2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfUnits()I

    move-result v5

    int-to-float v5, v5

    const/4 v14, 0x3

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->moveArmyInNextXTurns:I

    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->moveArmyInNextXTurns:I

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "NavalInvasion -> enemyArmy: RETURN 000"

    invoke-interface {v1, v11, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_9
    const v4, 0x3f6a3d71    # 0.915f

    mul-float v4, v4, v2

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->numOfUnitsMoved:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->moveArmyInNextXTurns:I

    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->moveArmyInNextXTurns:I

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "NavalInvasion -> enemyArmy: RETURN 1111"

    invoke-interface {v1, v11, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_a
    int-to-float v4, v1

    const v5, 0x3f966666    # 1.175f

    mul-float v6, v2, v5

    cmpl-float v6, v4, v6

    if-lez v6, :cond_d

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v14, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->toProvinceID:I

    invoke-virtual {v15, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v14

    invoke-virtual {v6, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v14

    long-to-float v6, v14

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v9, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->toProvinceID:I

    invoke-virtual {v15, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v9

    invoke-virtual {v14, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->budgetInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v9

    int-to-float v9, v9

    const/high16 v14, 0x3fc00000    # 1.5f

    mul-float v9, v9, v14

    const/4 v15, 0x0

    invoke-static {v15, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    add-float/2addr v6, v9

    const/16 v9, 0x39d

    const v16, 0x3fdf5c29    # 1.745f

    const/16 v12, 0xa

    cmpl-float v6, v6, v15

    if-lez v6, :cond_c

    move-object/from16 v17, v11

    int-to-long v10, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v7, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->toProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v6

    const-wide/16 v18, 0x5

    div-long v6, v6, v18

    add-long/2addr v10, v6

    long-to-float v3, v10

    mul-float v3, v3, v5

    cmpl-float v3, v4, v3

    if-lez v3, :cond_b

    int-to-double v3, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    int-to-double v6, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v11, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->toProvinceID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v10

    invoke-virtual {v1, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v10

    long-to-float v1, v10

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v12, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->toProvinceID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->budgetInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v14

    invoke-static {v15, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    add-float/2addr v1, v10

    const/high16 v10, 0x41200000    # 10.0f

    div-float/2addr v1, v10

    add-float/2addr v2, v1

    mul-float v2, v2, v5

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v1, v5

    add-float v1, v1, v16

    mul-float v2, v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v1

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-int v1, v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "NavalInvasion -> enemyArmy: UPDATE 000"

    move-object/from16 v10, v17

    invoke-interface {v2, v10, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    move-object/from16 v10, v17

    goto :goto_1

    :cond_c
    move-object v10, v11

    int-to-double v3, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    int-to-double v5, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v1, v7

    add-float v1, v1, v16

    mul-float v2, v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-int v1, v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "NavalInvasion -> enemyArmy: UPDATE 111"

    invoke-interface {v2, v10, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    move-object v10, v11

    :goto_1
    int-to-float v2, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfUnits()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v5, 0x96

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v4, v6

    const v6, 0x3f066666    # 0.525f

    add-float/2addr v4, v6

    mul-float v3, v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_e

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfUnits()I

    move-result v1

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->numOfUnitsMoved:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v6

    mul-float v1, v1, v2

    float-to-int v1, v1

    if-gtz v1, :cond_f

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_AtWar;->getRouteSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->moveArmyInNextXTurns:I

    const/4 v1, 0x0

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iArmy:I

    return v1

    :cond_e
    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->numOfUnitsMoved:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfUnits()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v6

    cmpl-float v2, v2, v3

    if-lez v2, :cond_f

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_AtWar;->getRouteSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->moveArmyInNextXTurns:I

    const/4 v1, 0x0

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iArmy:I

    return v1

    :cond_f
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getBordersWithEnemy()I

    move-result v2

    if-nez v2, :cond_10

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    if-ne v2, v8, :cond_10

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->toProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    if-eq v2, v8, :cond_10

    int-to-float v1, v1

    const v2, 0x3eeb851f    # 0.46f

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v4, 0x21

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    mul-float v1, v1, v3

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    :cond_10
    move v9, v1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NavalInvasion -> enemyArmy: tArmyToRecruit_PRE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v10, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_AtWar;->getRouteSize()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iProvinceID:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->toProvinceID:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v4, v9

    move/from16 v5, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->moveArmyInNextXTurns:I

    goto/16 :goto_2

    :cond_11
    const/4 v1, 0x3

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->moveArmyInNextXTurns:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->numOfUnitsMoved:I

    add-int/2addr v1, v9

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->numOfUnitsMoved:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_AtWar;->getRouteSize()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNextPossibleNavalInvastionTurnID:I

    const/4 v1, 0x0

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iObsolate:I

    const/4 v1, 0x1

    return v1

    :cond_12
    const/4 v1, 0x0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iProvinceID:I

    invoke-virtual {v13, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_AtWar;->getRoute(I)I

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v9

    move/from16 v5, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_AtWar;->getRoute(I)I

    move-result v2

    invoke-virtual {v13, v2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_AtWar;->setFromProvinceID(I)V

    invoke-virtual {v13, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_AtWar;->removeRoute(I)V

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_AtWar;->setNumOfUnits(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addRegroupArmy(Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;)V

    const/4 v1, 0x3

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->moveArmyInNextXTurns:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->numOfUnitsMoved:I

    add-int/2addr v1, v9

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->numOfUnitsMoved:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_AtWar;->getRouteSize()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNextPossibleNavalInvastionTurnID:I

    const/4 v1, 0x0

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iObsolate:I

    const/4 v2, 0x1

    return v2

    :cond_13
    :goto_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    goto :goto_3

    :cond_14
    const/4 v1, 0x0

    const/4 v2, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iObsolate:I

    return v2

    :cond_15
    move-object v10, v11

    :goto_3
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "NavalInvasion -> 111"

    invoke-interface {v1, v10, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->action_RecruitArmy(I)Z

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "NavalInvasion -> 222"

    invoke-interface {v1, v10, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_RECRUIT:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE_OWN_PROVINCE:I

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_1b

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iObsolate:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1b

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iProvinceID:I

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iObsolate:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/AI;->getAllNeighboringProvincesInRange_Regroup_ForNavalInvasion(IIILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1b

    :goto_4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_RECRUIT:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE_OWN_PROVINCE:I

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_1b

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1b

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v11, 0x0

    :goto_5
    if-lez v1, :cond_17

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v3

    if-le v2, v3, :cond_16

    move v11, v1

    :cond_16
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_17
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;->iProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;->haveMission_Army(I)I

    move-result v2

    sub-int v12, v1, v2

    if-lez v12, :cond_19

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;->iProvinceID:I

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iProvinceID:I

    invoke-direct {v13, v8, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;-><init>(III)V

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result v1

    if-lez v1, :cond_19

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result v1

    const/4 v14, 0x1

    if-ne v1, v14, :cond_18

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;->iProvinceID:I

    iget v3, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iProvinceID:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v4, v12

    move/from16 v5, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    move-result v1

    goto :goto_6

    :cond_18
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/AI_NeighProvinces;->iProvinceID:I

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRoute(I)I

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v3, v4

    move v4, v12

    move/from16 v5, p1

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRoute(I)I

    move-result v2

    invoke-virtual {v13, v2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->setFromProvinceID(I)V

    invoke-virtual {v13, v1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->removeRoute(I)V

    invoke-virtual {v13, v12}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->setNumOfUnits(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addRegroupArmy(Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;)V

    goto :goto_6

    :cond_19
    const/4 v14, 0x1

    :cond_1a
    :goto_6
    invoke-interface {v9, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_1b
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "NavalInvasion -> 333"

    invoke-interface {v1, v10, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f2f5c29    # 0.685f

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iArmy:I

    const/4 v1, 0x0

    return v1
.end method

.method protected final action_BuildPort(II)Z
    .locals 2

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result p2

    if-nez p2, :cond_3

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result p2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iCivID:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iCivID:I

    invoke-virtual {p2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->PORT:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    invoke-virtual {p2, p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isInConstruction(ILage/of/civilizations2/jakowski/lukasz/ConstructionType;)I

    move-result p2

    if-nez p2, :cond_1

    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iCivID:I

    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->constructPort(II)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p1, 0xa

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iObsolate:I

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->lockTreasury_Port(I)V

    :cond_1
    return v1

    :cond_2
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iObsolate:I

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method protected final action_RecruitArmy(I)Z
    .locals 6

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "NavalInvasion -> action_RecruitArmy"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_RECRUIT:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v2

    const/4 v3, 0x1

    if-gt v0, v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/AI_ProvinceInfo_War;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iProvinceID:I

    const/16 v5, 0x64

    invoke-direct {v2, v4, v5, v3}, Lage/of/civilizations2/jakowski/lukasz/AI_ProvinceInfo_War;-><init>(IIZ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAI_Style()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/AI;->getAI_Style(I)Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p1, v0, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->moveAtWar_Recruit(ILjava/util/List;Ljava/util/List;Z)V

    :cond_0
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v0, "NavalInvasion -> action_RecruitArmy END"

    invoke-interface {p1, v1, v0}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method protected canMakeAction(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected final lockTreasury_Port(I)V
    .locals 4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_BuildCost(II)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f866666    # 1.05f

    mul-float p1, p1, v0

    float-to-int p1, p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iLockTreasury:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iLockTreasury:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iCivID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->budgetInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result p1

    if-lez p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iCivID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_NavalInvasion;->iCivID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    :cond_0
    return-void
.end method
