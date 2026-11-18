.class Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;
.super Ljava/lang/Object;
.source "MoveUnits_TurnData.java"


# instance fields
.field private iMoveUnitsSize:I

.field private lCivID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lMoveUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/Move_Units;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->lMoveUnits:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->lCivID:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->iMoveUnitsSize:I

    return-void
.end method


# virtual methods
.method protected final addMoveUnits(Lage/of/civilizations2/jakowski/lukasz/Move_Units;I)V
    .locals 2

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->buildMoveUnitsLine()V

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->lCivID:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->iMoveUnitsSize:I

    return-void
.end method

.method protected final getCivID(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->lCivID:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected final getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    return-object v0
.end method

.method protected final getMoveUnitsFromProvinceSize()I
    .locals 6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->iMoveUnitsSize:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v2

    if-eq v2, v1, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getMoveUnitsSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->iMoveUnitsSize:I

    return v0
.end method

.method protected final getMoveUnits_TotalNumOfUnits()I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->iMoveUnitsSize:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getNumOfUnits()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected final getWarFieldWidth()I
    .locals 6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnitsFromProvinceSize()I

    move-result v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le v2, v0, :cond_0

    add-int/lit8 v2, v2, -0x1

    const/16 v0, 0x2710

    mul-int v1, v0, v2

    :cond_0
    const/16 v0, 0x7530

    add-int/2addr v0, v1

    const/4 v1, 0x0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getMovementCost(I)F

    move-result v2

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected final isPlayerMoving()Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->iMoveUnitsSize:I

    if-ge v0, v1, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->lCivID:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
