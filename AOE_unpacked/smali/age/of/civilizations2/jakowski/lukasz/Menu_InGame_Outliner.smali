.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_InGame_Outliner.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x87

.field protected static hideAnimation:Z = true

.field protected static lTime:J


# instance fields
.field protected final FONT_SCALE:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 16

    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const v0, 0x3f333333    # 0.7f

    iput v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->FONT_SCALE:F

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    div-int/lit8 v10, v0, 0x2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v0

    const/4 v11, 0x4

    if-eqz v0, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    :goto_0
    move v12, v0

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$1;

    const/4 v2, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    add-int/lit8 v14, v10, -0x2

    const/4 v5, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move v6, v14

    move v7, v12

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v12, 0x0

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$2;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    move-object v0, v15

    move v5, v13

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v12

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$3;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    move-object v0, v15

    move v5, v13

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v12

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$4;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    move-object v0, v15

    move v5, v13

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v12

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$5;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    move-object v0, v15

    move v5, v13

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v12

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$6;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    move-object v0, v15

    move v5, v13

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v12

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$7;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    move-object v0, v15

    move v5, v13

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v12

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$8;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    move-object v0, v15

    move v5, v13

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v12

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$9;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    move-object v0, v15

    move v5, v13

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v12

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$10;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    move-object v0, v15

    move v5, v13

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v12

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$11;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    move-object v0, v15

    move v5, v13

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v12

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$12;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    move-object v0, v15

    move v5, v13

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v12

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$13;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    move-object v0, v15

    move v5, v13

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v12

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$14;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    move-object v0, v15

    move v5, v13

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v12

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$15;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    move-object v0, v15

    move v5, v13

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v12

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$16;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    move-object v0, v15

    move v5, v13

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$16;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v12

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$17;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    move-object v0, v15

    move v5, v13

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$17;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v12

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$18;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    move-object v0, v15

    move v5, v13

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$18;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v5, v13, v12

    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$19;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    move-object v0, v13

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$19;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$20;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner$20;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;Ljava/lang/String;IZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sub-int v2, v0, v10

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left2:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v11, 0x5

    :goto_1
    mul-int v12, v12, v11

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v7, 0x0

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move v4, v10

    move-object v6, v8

    move v8, v11

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    const/4 v0, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {v9, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    rem-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->actionElement(I)V

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->lTime:J

    const-wide/16 v2, 0x87

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->hideAnimation:Z

    const/high16 v1, 0x43070000    # 135.0f

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v5, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->lTime:J

    sub-long/2addr v2, v5

    long-to-float v2, v2

    div-float/2addr v2, v1

    mul-float v0, v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->lTime:J

    sub-long/2addr v5, v7

    long-to-float v3, v5

    div-float/2addr v3, v1

    mul-float v2, v2, v3

    float-to-int v1, v2

    sub-int/2addr v0, v1

    :goto_0
    add-int/2addr p2, v0

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    goto :goto_1

    :cond_1
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->hideAnimation:Z

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_CurrentWars()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object p1

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left2:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p2

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setPosY(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_CurrentWars_Info()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object p1

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_CurrentWars()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result p2

    sub-int/2addr p2, v4

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_CurrentWars()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object p3

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setPosY(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CurrentWars;->lTime:J

    return-void

    :cond_2
    :goto_1
    add-int/2addr p3, v4

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawCloseButton(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 6

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getCloseButtonImage(Z)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getWidth()I

    move-result v1

    add-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    sub-int/2addr p4, v1

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->getHeight()I

    move-result p4

    sub-int/2addr p2, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    sub-int/2addr p2, p4

    add-int v3, p2, p3

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 v4, p2, 0x5

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 v5, p2, 0x5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method protected drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 1

    if-eqz p4, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p2, v0

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :cond_0
    return-void
.end method

.method protected final setHideAnimation(Z)V
    .locals 8

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->hideAnimation:Z

    if-eq p1, v0, :cond_1

    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->lTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x87

    sub-long/2addr v2, v4

    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v6, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->lTime:J

    sub-long/2addr v2, v6

    sub-long/2addr v4, v2

    sub-long/2addr v0, v4

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->lTime:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->lTime:J

    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_1
    sput-boolean p1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->hideAnimation:Z

    return-void
.end method

.method protected setVisible(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->setHideAnimation(Z)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_CurrentWars()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object p1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setPosY(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_CurrentWars_Info()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object p1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_CurrentWars()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v1

    sub-int/2addr v1, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getMenu_InGame_CurrentWars()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setPosY(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->setHideAnimation(Z)V

    :goto_0
    return-void
.end method

.method protected updateLanguage()V
    .locals 4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Stats"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setText(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "VictoryConditions"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Wars"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Alliances"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Ranking"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Wonders"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Population"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "HolyRomanEmpire"

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "ConqueredProvinces"

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "ConstructedBuildings"

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Army"

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "RecruitedArmy"

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Demography"

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "History"

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Timeline"

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Provinces"

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "TechnologyLevel"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "RankScore"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Outliner;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Audio"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    return-void
.end method
