.class Lage/of/civilizations2/jakowski/lukasz/Game$17;
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

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawMoveUnitsArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 24

    move-object/from16 v1, p0

    move/from16 v2, p2

    const-string v3, ""

    const/4 v0, 0x0

    :goto_0
    const/high16 v5, 0x40000000    # 2.0f

    :try_start_0
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$400(Lage/of/civilizations2/jakowski/lukasz/Game;)I

    move-result v6

    if-ge v0, v6, :cond_3

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->iCivID:I

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v6

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v9

    mul-float v8, v8, v9

    div-float/2addr v8, v5

    float-to-int v8, v8

    add-int/2addr v6, v8

    int-to-float v6, v6

    mul-float v6, v6, v2

    float-to-int v9, v6

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v6

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v8

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v10

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v11

    add-int/2addr v10, v11

    sub-int/2addr v8, v10

    int-to-float v8, v8

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v10

    mul-float v8, v8, v10

    div-float/2addr v8, v5

    float-to-int v8, v8

    sub-int/2addr v6, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v8

    add-int/2addr v6, v8

    int-to-float v6, v6

    mul-float v6, v6, v2

    float-to-int v10, v6

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget v11, v6, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->iCivID:I

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getNumOfUnits()I

    move-result v12

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getUnitsWidth()I

    move-result v13

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmyWithFlag_Attack(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    goto/16 :goto_1

    :cond_1
    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v6

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v7

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v8

    mul-float v7, v7, v8

    div-float/2addr v7, v5

    float-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v6, v6, v2

    float-to-int v6, v6

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v7

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v9

    mul-float v8, v8, v9

    div-float/2addr v8, v5

    float-to-int v8, v8

    sub-int/2addr v7, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    mul-float v7, v7, v2

    float-to-int v7, v7

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->iCivID:I

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getNumOfUnits()I

    move-result v19

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->access$500(Lage/of/civilizations2/jakowski/lukasz/Game;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Move_Units_JustDraw;->moveUnitsData:Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getUnitsWidth()I

    move-result v20

    move-object/from16 v15, p1

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-virtual/range {v14 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmyWithFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-boolean v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v6, :cond_3

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v6

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x0

    :goto_2
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilizationsSize()I

    move-result v6

    if-ge v0, v6, :cond_8

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v6

    invoke-virtual {v6, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v6

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    if-eq v6, v7, :cond_7

    const/4 v6, 0x0

    :goto_3
    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v8

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsSize()I

    move-result v7

    if-ge v6, v7, :cond_7

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v8

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v8

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_4
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v8

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v7

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v7

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v7

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v7

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v7

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v9

    add-int/2addr v7, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v9

    add-int/2addr v7, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v10

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v12

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v12

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v11

    add-int/2addr v10, v11

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v10

    mul-float v9, v9, v10

    div-float/2addr v9, v5

    float-to-int v9, v9

    add-int/2addr v7, v9

    int-to-float v7, v7

    mul-float v7, v7, v2

    float-to-int v10, v7

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v9

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v9

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v7

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v9, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v11

    invoke-virtual {v9, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v11

    invoke-virtual {v9, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v9, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v9

    add-int/2addr v7, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v9, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v11

    invoke-virtual {v9, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v11

    invoke-virtual {v9, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v9, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v9

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v12

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v11

    add-int/2addr v9, v11

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v12

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v11

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v13

    invoke-virtual {v13, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v12

    add-int/2addr v11, v12

    sub-int/2addr v9, v11

    int-to-float v9, v9

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v12

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v11

    mul-float v9, v9, v11

    div-float/2addr v9, v5

    float-to-int v9, v9

    sub-int/2addr v7, v9

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v9

    add-int/2addr v7, v9

    int-to-float v7, v7

    mul-float v7, v7, v2

    float-to-int v11, v7

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v9

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v7

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v12

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v9

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v9

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getNumOfUnits()I

    move-result v13

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v9

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v9

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getUnitsWidth()I

    move-result v14

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmyWithFlag_Attack(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    goto/16 :goto_4

    :cond_5
    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v15, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v15, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v7

    invoke-virtual {v15, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v7

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v7

    invoke-virtual {v15, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v7

    invoke-virtual {v15, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v7

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v9

    mul-float v8, v8, v9

    div-float/2addr v8, v5

    float-to-int v8, v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    mul-float v7, v7, v2

    float-to-int v7, v7

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v10

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v12

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v11

    add-int/2addr v10, v11

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v10

    mul-float v9, v9, v10

    div-float/2addr v9, v5

    float-to-int v9, v9

    sub-int/2addr v8, v9

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    mul-float v8, v8, v2

    float-to-int v8, v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v19

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getNumOfUnits()I

    move-result v20

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getUnitsWidth()I

    move-result v21

    move-object/from16 v16, p1

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-virtual/range {v15 .. v21}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmyWithFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v6

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    :goto_5
    if-ltz v0, :cond_d

    const/4 v7, 0x0

    :goto_6
    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsSize()I

    move-result v8

    if-ge v7, v8, :cond_c

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_9
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v9, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v8

    invoke-virtual {v9, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v8

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v10

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v11

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v12

    add-int/2addr v11, v12

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v11

    mul-float v10, v10, v11

    div-float/2addr v10, v5

    float-to-int v10, v10

    add-int/2addr v8, v10

    int-to-float v8, v8

    mul-float v8, v8, v2

    float-to-int v11, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v10, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v8

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v10, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v12

    invoke-virtual {v10, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v10, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v12

    invoke-virtual {v10, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v10

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v12

    add-int/2addr v10, v12

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v12

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v15, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v15, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {v14, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v4

    invoke-virtual {v13, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v4

    add-int/2addr v12, v4

    sub-int/2addr v10, v12

    int-to-float v4, v10

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v10, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v10

    mul-float v4, v4, v10

    div-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v8, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v4

    add-int/2addr v8, v4

    int-to-float v4, v8

    mul-float v4, v4, v2

    float-to-int v12, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v13, v4, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getNumOfUnits()I

    move-result v14

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getUnitsWidth()I

    move-result v15

    move-object/from16 v10, p1

    invoke-virtual/range {v9 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmyWithFlag_Attack(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    goto/16 :goto_7

    :cond_a
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v10

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v11

    add-int/2addr v10, v11

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v10

    mul-float v9, v9, v10

    div-float/2addr v9, v5

    float-to-int v9, v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    mul-float v8, v8, v2

    float-to-int v8, v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v11, v11, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v10

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v11

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v13, v13, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v13, v13, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v12

    add-int/2addr v11, v12

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v11

    mul-float v10, v10, v11

    div-float/2addr v10, v5

    float-to-int v10, v10

    sub-int/2addr v9, v10

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    mul-float v9, v9, v2

    float-to-int v9, v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getNumOfUnits()I

    move-result v22

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v12, v12, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v12, v12, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getUnitsWidth()I

    move-result v23

    move-object/from16 v17, v4

    move-object/from16 v18, p1

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-virtual/range {v17 .. v23}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmyWithFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    :cond_b
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_5

    :cond_d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v0

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    if-eq v0, v4, :cond_11

    const/4 v0, 0x0

    :goto_8
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsSize()I

    move-result v4

    if-ge v0, v4, :cond_11

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_e
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v7

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v4

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v4

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v4

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v8

    add-int/2addr v4, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v8

    add-int/2addr v4, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v9

    mul-float v8, v8, v9

    div-float/2addr v8, v5

    float-to-int v8, v8

    add-int/2addr v4, v8

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v9, v4

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v4

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v8

    add-int/2addr v4, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v8

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v10

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v11

    add-int/2addr v10, v11

    sub-int/2addr v8, v10

    int-to-float v8, v8

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v10

    mul-float v8, v8, v10

    div-float/2addr v8, v5

    float-to-int v8, v8

    sub-int/2addr v4, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v8

    add-int/2addr v4, v8

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v10, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v11

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getNumOfUnits()I

    move-result v12

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v13

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getUnitsWidth()I

    move-result v13

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmyWithFlag_Attack(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    goto/16 :goto_9

    :cond_f
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v7

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v9

    mul-float v8, v8, v9

    div-float/2addr v8, v5

    float-to-int v8, v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    mul-float v7, v7, v2

    float-to-int v7, v7

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v10

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v11

    add-int/2addr v10, v11

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v10

    mul-float v9, v9, v10

    div-float/2addr v9, v5

    float-to-int v9, v9

    sub-int/2addr v8, v9

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    mul-float v8, v8, v2

    float-to-int v8, v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v21

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getNumOfUnits()I

    move-result v22

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getUnitsWidth()I

    move-result v23

    move-object/from16 v17, v4

    move-object/from16 v18, p1

    move/from16 v19, v7

    move/from16 v20, v8

    invoke-virtual/range {v17 .. v23}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmyWithFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    :cond_10
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :cond_11
    const/4 v0, 0x0

    :goto_a
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrateSize()I

    move-result v4

    if-ge v0, v4, :cond_14

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrate(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrate(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrate(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v4

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v4

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrate(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v8

    add-int/2addr v4, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrate(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v8

    add-int/2addr v4, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrate(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrate(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrate(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrate(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrate(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrate(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrate(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v9

    mul-float v8, v8, v9

    div-float/2addr v8, v5

    float-to-int v8, v8

    add-int/2addr v4, v8

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v9, v4

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrate(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v4

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrate(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v8

    add-int/2addr v4, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrate(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v8

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrate(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrate(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v10

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrate(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v11

    add-int/2addr v10, v11

    sub-int/2addr v8, v10

    int-to-float v8, v8

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrate(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v10

    mul-float v8, v8, v10

    div-float/2addr v8, v5

    float-to-int v8, v8

    sub-int/2addr v4, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v8

    add-int/2addr v4, v8

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v10, v4

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrate(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getNumOfUnits()I

    move-result v12

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrate(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getUnitsWidth()I

    move-result v13

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmyWithFlag_Migrate(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    :cond_14
    const/4 v0, 0x0

    :goto_b
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsSize()I

    move-result v4

    if-ge v0, v4, :cond_18

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v4

    if-nez v4, :cond_15

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_15
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v4

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v4

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v8

    add-int/2addr v4, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v8

    add-int/2addr v4, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v9

    mul-float v8, v8, v9

    div-float/2addr v8, v5

    float-to-int v8, v8

    add-int/2addr v4, v8

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v9, v4

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v4

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v8

    add-int/2addr v4, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v8

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v10

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v11

    add-int/2addr v10, v11

    sub-int/2addr v8, v10

    int-to-float v8, v8

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v10

    mul-float v8, v8, v10

    div-float/2addr v8, v5

    float-to-int v8, v8

    sub-int/2addr v4, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v8

    add-int/2addr v4, v8

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v10, v4

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getNumOfUnits()I

    move-result v12

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getUnitsWidth()I

    move-result v13

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmyWithFlag_Attack(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    goto/16 :goto_c

    :cond_16
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v7

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v9

    mul-float v8, v8, v9

    div-float/2addr v8, v5

    float-to-int v8, v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    mul-float v7, v7, v2

    float-to-int v7, v7

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterY()I

    move-result v10

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftY()I

    move-result v11

    add-int/2addr v10, v11

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->getMovingPercentage()F

    move-result v10

    mul-float v9, v9, v10

    div-float/2addr v9, v5

    float-to-int v9, v9

    sub-int/2addr v8, v9

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    mul-float v8, v8, v2

    float-to-int v8, v8

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v21

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getNumOfUnits()I

    move-result v22

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getUnitsWidth()I

    move-result v23

    move-object/from16 v17, v4

    move-object/from16 v18, p1

    move/from16 v19, v7

    move/from16 v20, v8

    invoke-virtual/range {v17 .. v23}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmyWithFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    :cond_17
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    :cond_18
    const/4 v0, 0x2

    :try_start_1
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Plunder()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v4, 0x0

    :goto_d
    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsPlunderSize()I

    move-result v5

    if-ge v4, v5, :cond_1b

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getFromProvinceID()I

    move-result v5

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->iProvinceID:I

    if-ne v5, v7, :cond_19

    goto/16 :goto_e

    :cond_19
    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getFromProvinceID()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v5

    if-eqz v5, :cond_1a

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getFromProvinceID()I

    move-result v8

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v5

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v8

    add-int/2addr v5, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v8

    add-int/2addr v5, v8

    int-to-float v5, v5

    mul-float v5, v5, v2

    float-to-int v9, v5

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getFromProvinceID()I

    move-result v8

    invoke-virtual {v5, v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getDrawProvinceArmy_EndPosY(IF)I

    move-result v5

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_HEIGHT:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_BG_EXTRA_HEIGHT:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v8, v10

    div-int/2addr v8, v0

    add-int/2addr v5, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_BG_EXTRA_HEIGHT:I

    add-int v10, v5, v8

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getNumOfUnits()I

    move-result v12

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v5, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getUnitsWidth()I

    move-result v13

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmyWithFlag_Plunder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    :cond_1a
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d

    :cond_1b
    sget v4, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->iProvinceID:I

    if-ltz v4, :cond_1e

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Plunder()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v4

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v10

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontArmy:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v11, v4

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->iProvinceID:I

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v4

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->iProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v6

    add-int/2addr v4, v6

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->iProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v7, v4

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->iProvinceID:I

    invoke-virtual {v4, v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getDrawProvinceArmy_EndPosY(IF)I

    move-result v4

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_BG_EXTRA_HEIGHT:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    div-int/2addr v6, v0

    add-int/2addr v4, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_BG_EXTRA_HEIGHT:I

    add-int v8, v4, v6

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmyWithFlag_Plunder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    goto/16 :goto_10

    :cond_1c
    const/4 v4, 0x0

    :goto_f
    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsPlunderSize()I

    move-result v5

    if-ge v4, v5, :cond_1e

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getFromProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getFromProvinceID()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v5

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getFromProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v7

    add-int/2addr v5, v7

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getFromProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v5, v5

    mul-float v5, v5, v2

    float-to-int v8, v5

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getFromProvinceID()I

    move-result v7

    invoke-virtual {v5, v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getDrawProvinceArmy_EndPosY(IF)I

    move-result v5

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_HEIGHT:I

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_BG_EXTRA_HEIGHT:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v7, v9

    div-int/2addr v7, v0

    add-int/2addr v5, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_BG_EXTRA_HEIGHT:I

    add-int v9, v5, v7

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getNumOfUnits()I

    move-result v11

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getUnitsWidth()I

    move-result v12

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmyWithFlag_Plunder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f

    :cond_1e
    :goto_10
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v4

    if-lez v4, :cond_21

    const/4 v4, 0x0

    :goto_11
    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilizationsSize()I

    move-result v5

    if-ge v4, v5, :cond_21

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v6

    if-eq v5, v6, :cond_20

    const/4 v5, 0x0

    :goto_12
    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsPlunderSize()I

    move-result v6

    if-ge v5, v6, :cond_20

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getFromProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v9

    invoke-virtual {v9, v4}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getFromProvinceID()I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v6

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v10

    invoke-virtual {v10, v4}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v10

    invoke-virtual {v10, v4}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v8

    add-int/2addr v6, v8

    int-to-float v6, v6

    mul-float v6, v6, v2

    float-to-int v9, v6

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v10

    invoke-virtual {v10, v4}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v10

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getFromProvinceID()I

    move-result v8

    invoke-virtual {v6, v8, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getDrawProvinceArmy_EndPosY(IF)I

    move-result v6

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_HEIGHT:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_BG_EXTRA_HEIGHT:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v8, v10

    div-int/2addr v8, v0

    add-int/2addr v6, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_BG_EXTRA_HEIGHT:I

    add-int v10, v6, v8

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v8, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v11

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v12

    invoke-virtual {v8, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getNumOfUnits()I

    move-result v12

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v14, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v13

    invoke-virtual {v8, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getUnitsWidth()I

    move-result v13

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmyWithFlag_Plunder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_12

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_11

    :catch_1
    :cond_21
    :try_start_2
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getVisible()Z

    move-result v4

    if-nez v4, :cond_24

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Instantly()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_22

    goto/16 :goto_14

    :cond_22
    const/4 v3, 0x0

    :goto_13
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmySize()I

    move-result v4

    if-ge v3, v4, :cond_29

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v4

    if-eqz v4, :cond_23

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v4

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v6

    add-int/2addr v4, v6

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v7, v4

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v6

    invoke-virtual {v4, v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getDrawProvinceArmy_EndPosY(IF)I

    move-result v4

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_BG_EXTRA_HEIGHT:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    div-int/2addr v6, v0

    add-int/2addr v4, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_BG_EXTRA_HEIGHT:I

    add-int v8, v4, v6

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v6, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getArmy()I

    move-result v10

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v6, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getArmyWidth()I

    move-result v11

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmyWithFlag_Recruit(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_13

    :cond_24
    :goto_14
    const/4 v4, 0x0

    :goto_15
    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmySize()I

    move-result v5

    if-ge v4, v5, :cond_27

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v5

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v6

    if-ne v5, v6, :cond_25

    goto/16 :goto_16

    :cond_25
    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v5

    if-eqz v5, :cond_26

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v5

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v7

    add-int/2addr v5, v7

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v5, v5

    mul-float v5, v5, v2

    float-to-int v8, v5

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v7

    invoke-virtual {v5, v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getDrawProvinceArmy_EndPosY(IF)I

    move-result v5

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_HEIGHT:I

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_BG_EXTRA_HEIGHT:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v7, v9

    div-int/2addr v7, v0

    add-int/2addr v5, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_BG_EXTRA_HEIGHT:I

    add-int v9, v5, v7

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getArmy()I

    move-result v11

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getArmyWidth()I

    move-result v12

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmyWithFlag_Recruit(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    :cond_26
    :goto_16
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_15

    :cond_27
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v4

    if-eqz v4, :cond_29

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_28

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v10

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontArmy:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v11, v3

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v3

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v7, v3

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getDrawProvinceArmy_EndPosY(IF)I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_HEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_BG_EXTRA_HEIGHT:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_BG_EXTRA_HEIGHT:I

    add-int v8, v3, v4

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmyWithFlag_Recruit(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    goto/16 :goto_17

    :cond_28
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Instantly()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_29

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Instantly()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v4

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v10

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontArmy:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v11, v3

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v3

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v7, v3

    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getDrawProvinceArmy_EndPosY(IF)I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_HEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_BG_EXTRA_HEIGHT:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_BG_EXTRA_HEIGHT:I

    add-int v8, v3, v4

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmyWithFlag_Recruit(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    :cond_29
    :goto_17
    iget-object v3, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v3

    if-lez v3, :cond_2c

    const/4 v3, 0x0

    :goto_18
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilizationsSize()I

    move-result v4

    if-ge v3, v4, :cond_2c

    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v5

    if-eq v4, v5, :cond_2b

    const/4 v4, 0x0

    :goto_19
    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmySize()I

    move-result v5

    if-ge v4, v5, :cond_2b

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v7

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDrawProvince()Z

    move-result v5

    if-eqz v5, :cond_2a

    iget-object v6, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v8

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCenterX()I

    move-result v5

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v9

    invoke-virtual {v9, v3}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getShiftX()I

    move-result v7

    add-int/2addr v5, v7

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v9

    invoke-virtual {v9, v3}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v5, v5

    mul-float v5, v5, v2

    float-to-int v8, v5

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v10

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v9

    invoke-virtual {v9, v3}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v9

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v7

    invoke-virtual {v5, v7, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getDrawProvinceArmy_EndPosY(IF)I

    move-result v5

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_HEIGHT:I

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_BG_EXTRA_HEIGHT:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v7, v9

    div-int/2addr v7, v0

    add-int/2addr v5, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_BG_EXTRA_HEIGHT:I

    add-int v9, v5, v7

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v10

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v11, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v11

    invoke-virtual {v7, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v7

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getArmy()I

    move-result v11

    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v12, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v13, v1, Lage/of/civilizations2/jakowski/lukasz/Game$17;->this$0:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v12

    invoke-virtual {v7, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v7

    invoke-virtual {v7, v3}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getArmyWidth()I

    move-result v12

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->drawProvinceArmyWithFlag_Recruit(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_19

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_18

    :catch_2
    :cond_2c
    return-void
.end method
