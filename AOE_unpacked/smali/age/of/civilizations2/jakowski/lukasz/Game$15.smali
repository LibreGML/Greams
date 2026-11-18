.class Lage/of/civilizations2/jakowski/lukasz/Game$15;
.super Ljava/lang/Object;
.source "Game.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Game$DrawMoveUnitsArmy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Game;->updateDrawMoveUnitsArmy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Game;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Game;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawMoveUnitsArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnitsSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getCivID(I)I

    move-result v3

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_1

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v2

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v2

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v5

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v6

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v8

    invoke-virtual {v8, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v8

    invoke-virtual {v8, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v6

    mul-float v5, v5, v6

    div-float/2addr v5, v3

    float-to-int v5, v5

    add-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, p2

    float-to-int v6, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v5

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v2

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v5

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v8

    invoke-virtual {v8, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v7

    add-int/2addr v5, v7

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v8

    invoke-virtual {v8, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v7

    iget-object v8, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v9

    invoke-virtual {v9, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v5, v7

    int-to-float v5, v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v7

    mul-float v5, v5, v7

    div-float/2addr v5, v3

    float-to-int v3, v5

    sub-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p2

    float-to-int v7, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getCivID(I)I

    move-result v8

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getNumOfUnits()I

    move-result v9

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getUnitsWidth()I

    move-result v10

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmyWithFlag_Attack(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    goto/16 :goto_1

    :cond_1
    iget-object v11, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v2

    invoke-virtual {v11, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v2

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v5

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v5

    mul-float v4, v4, v5

    div-float/2addr v4, v3

    float-to-int v4, v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    mul-float v2, v2, p2

    float-to-int v13, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v2

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v6

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v5

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Game$15;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v7

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v5

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v5

    mul-float v4, v4, v5

    div-float/2addr v4, v3

    float-to-int v3, v4

    sub-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p2

    float-to-int v14, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getCivID(I)I

    move-result v15

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getNumOfUnits()I

    move-result v16

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCurrentMoveunits()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_TurnData;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getUnitsWidth()I

    move-result v17

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmyWithFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method
