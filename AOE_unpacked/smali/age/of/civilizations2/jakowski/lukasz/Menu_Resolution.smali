.class Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_Resolution.java"


# instance fields
.field private lResolution:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Point_XY;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 17

    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v15, 0x1

    move-object v8, v1

    move v12, v0

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    const/16 v3, 0xf00

    const/16 v4, 0x870

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    const/16 v3, 0x5a0

    const/16 v4, 0xd70

    invoke-direct {v2, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    const/16 v4, 0x800

    const/16 v5, 0xa00

    invoke-direct {v2, v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    const/16 v8, 0x780

    invoke-direct {v2, v5, v8}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    const/16 v9, 0x640

    invoke-direct {v2, v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-direct {v2, v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    const/16 v10, 0x438

    invoke-direct {v2, v5, v10}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    const/16 v5, 0x600

    invoke-direct {v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    const/16 v11, 0x480

    invoke-direct {v2, v4, v11}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-direct {v2, v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    const/16 v4, 0x4b0

    invoke-direct {v2, v8, v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-direct {v2, v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    const/16 v8, 0x740

    const/16 v10, 0x570

    invoke-direct {v2, v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    const/16 v8, 0x700

    const/16 v10, 0x540

    invoke-direct {v2, v8, v10}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    const/16 v8, 0x41a

    const/16 v10, 0x690

    invoke-direct {v2, v10, v8}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-direct {v2, v9, v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    const/16 v4, 0x384

    invoke-direct {v2, v9, v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    const/16 v9, 0x360

    invoke-direct {v2, v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    const/16 v3, 0x578

    invoke-direct {v2, v3, v8}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    const/16 v3, 0x300

    const/16 v4, 0x556

    invoke-direct {v2, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    const/16 v4, 0x550

    invoke-direct {v2, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    const/16 v4, 0x400

    const/16 v5, 0x500

    invoke-direct {v2, v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    const/16 v8, 0x3c0

    invoke-direct {v2, v5, v8}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    const/16 v8, 0x320

    invoke-direct {v2, v5, v8}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-direct {v2, v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    const/16 v9, 0x2d0

    invoke-direct {v2, v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-direct {v2, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    const/16 v3, 0x258

    invoke-direct {v2, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-direct {v2, v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    iget-object v3, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v3

    if-ne v2, v3, :cond_0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    iget-object v3, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v3

    if-ne v2, v3, :cond_0

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/high16 v3, 0x42480000    # 50.0f

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v3

    float-to-int v10, v4

    const/4 v11, 0x0

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object v8, v2

    move v12, v0

    invoke-direct/range {v8 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    goto :goto_1

    :cond_0
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/high16 v3, 0x42480000    # 50.0f

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v4, v4, v3

    float-to-int v10, v4

    const/4 v11, 0x0

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v15, 0x1

    move-object v8, v2

    move v12, v0

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    :goto_1
    add-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    sub-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v5, v0, v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iWidth:I

    sput p1, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iHeight:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iWidth:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->lResolution:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iHeight:I

    :goto_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->saveConfig()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eSETTINGS_GRAPHICS:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setBackAnimation(Z)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "GameNeedsToBeRestartedToApplyTheChanges"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v0, 0x1770

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    return-void
.end method

.method protected updateLanguage()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Resolution;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Max"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    return-void
.end method
