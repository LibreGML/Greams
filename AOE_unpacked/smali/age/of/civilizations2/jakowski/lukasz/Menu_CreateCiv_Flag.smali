.class public Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_CreateCiv_Flag.java"


# direct methods
.method protected constructor <init>()V
    .locals 17

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    add-int v6, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v12, v6, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v3, v3

    const v4, 0x3f19999a    # 0.6f

    mul-float v3, v3, v4

    float-to-int v13, v3

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v14, 0x1

    move-object v7, v2

    move v11, v0

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v5

    add-int/2addr v0, v2

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v12, v6, v5

    const/4 v13, 0x1

    move-object v7, v2

    move v11, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle;-><init>(Ljava/lang/String;IIIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v5

    add-int/2addr v0, v2

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag$1;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int v11, v5, v7

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v6, v5

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v13, v5, v7

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v7, v7

    mul-float v7, v7, v4

    float-to-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v14

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v15, 0x1

    move-object v7, v2

    move-object/from16 v8, p0

    move v12, v0

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag$2;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v7, v7

    mul-float v7, v7, v4

    float-to-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v14

    const-string v9, "<<"

    const/4 v10, -0x1

    move-object v7, v2

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag$3;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v5, v6, v5

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int v11, v5, v7

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v7, v7

    mul-float v7, v7, v4

    float-to-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v14

    const-string v9, ">>"

    move-object v7, v2

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v5

    add-int/2addr v0, v2

    move v2, v0

    const/4 v0, 0x1

    :goto_0
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->lDivisions:Ljava/util/List;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->iDivisionID:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;->iLayers:I

    if-ge v0, v5, :cond_0

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag$4;

    const/4 v10, -0x1

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v13, v6, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v8, v8

    mul-float v8, v8, v4

    float-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/4 v15, 0x1

    const-string v9, ""

    move-object v7, v5

    move-object/from16 v8, p0

    move v12, v2

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v5

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v7

    add-int/2addr v2, v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v5, v2

    const/4 v2, 0x0

    :goto_1
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag$5;

    const/4 v10, 0x0

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v8, v8

    mul-float v8, v8, v4

    float-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/16 v16, 0x1

    const-string v9, ""

    move-object v7, v15

    move-object/from16 v8, p0

    move v12, v5

    move-object v0, v15

    move/from16 v15, v16

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag$6;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int v11, v7, v8

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v6, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v8, v8, 0x3

    sub-int v13, v7, v8

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v8, v8

    mul-float v8, v8, v4

    float-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/4 v15, 0x1

    const-string v9, ""

    move-object v7, v0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag$7;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v7, v6, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v11, v7, v8

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v8, v8

    mul-float v8, v8, v4

    float-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v14

    const-string v9, ""

    move-object v7, v0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag$8;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v7, v6, v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int v11, v7, v8

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v8, v8

    mul-float v8, v8, v4

    float-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v14

    const-string v9, ""

    move-object v7, v0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v7

    add-int/2addr v5, v0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_1
    const/4 v3, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    const/4 v2, 0x0

    add-int/lit8 v4, v0, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v2, v7

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v8

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x4

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v7, v8

    sub-int/2addr v2, v7

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object/from16 v2, p0

    move v5, v0

    move-object v8, v1

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;->setVisible(Z)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 12

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le p1, v4, :cond_1

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->lDivisions:Ljava/util/List;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->iDivisionID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;->iLayers:I

    add-int/2addr v7, v4

    sub-int/2addr v7, v6

    if-gt p1, v7, :cond_1

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    add-int/lit8 v8, p1, -0x5

    add-int/2addr v8, v6

    if-ne v7, v8, :cond_0

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getVisible()Z

    move-result v7

    if-eqz v7, :cond_0

    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v7

    invoke-virtual {v7, v5, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    goto/16 :goto_0

    :cond_0
    sput v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lDivisionColors:Ljava/util/List;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lDivisionColors:Ljava/util/List;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lDivisionColors:Ljava/util/List;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setActiveRGBColor(FFF)V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;->EDITOR_CIV_FLAG_DIVISION_COLOR:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;

    invoke-virtual {v7, v6, v8}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    goto/16 :goto_0

    :cond_1
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->lDivisions:Ljava/util/List;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->iDivisionID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;->iLayers:I

    add-int/2addr v7, v4

    sub-int/2addr v7, v6

    if-le p1, v7, :cond_6

    add-int/lit8 v7, p1, -0x5

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->lDivisions:Ljava/util/List;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->iDivisionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;->iLayers:I

    sub-int v8, v7, v8

    add-int/2addr v8, v6

    rem-int/2addr v8, v4

    if-nez v8, :cond_3

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->lDivisions:Ljava/util/List;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->iDivisionID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;->iLayers:I

    sub-int v9, v7, v9

    add-int/2addr v9, v6

    div-int/2addr v9, v4

    if-ne v8, v9, :cond_2

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getVisible()Z

    move-result v8

    if-eqz v8, :cond_2

    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v7

    invoke-virtual {v7, v5, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    goto/16 :goto_0

    :cond_2
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->lDivisions:Ljava/util/List;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->iDivisionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;->iLayers:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v6

    div-int/2addr v7, v4

    sput v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setActiveRGBColor(FFF)V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;->EDITOR_CIV_FLAG_OVERLAY_COLOR:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;

    invoke-virtual {v7, v6, v8}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    goto/16 :goto_0

    :cond_3
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->lDivisions:Ljava/util/List;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->iDivisionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;->iLayers:I

    sub-int v8, v7, v8

    add-int/2addr v8, v6

    rem-int/2addr v8, v4

    if-ne v8, v6, :cond_4

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->lDivisions:Ljava/util/List;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->iDivisionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;->iLayers:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v6

    div-int/2addr v7, v4

    sput v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v7

    invoke-virtual {v7, v5, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleCreateCiv_Overlay(Z)V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleCreateCiv_Flag(Z)V

    goto/16 :goto_0

    :cond_4
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->lDivisions:Ljava/util/List;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->iDivisionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;->iLayers:I

    sub-int v8, v7, v8

    add-int/2addr v8, v6

    rem-int/2addr v8, v4

    if-ne v8, v1, :cond_5

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->lDivisions:Ljava/util/List;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->iDivisionID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;->iLayers:I

    sub-int/2addr v7, v9

    add-int/2addr v7, v6

    div-int/2addr v7, v4

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->moveOverlayUp(I)V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildCreateCiv_Flag()V

    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v7

    invoke-virtual {v7, v5, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    goto :goto_0

    :cond_5
    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->lDivisions:Ljava/util/List;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->iDivisionID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;->iLayers:I

    sub-int v8, v7, v8

    add-int/2addr v8, v6

    rem-int/2addr v8, v4

    if-ne v8, v0, :cond_6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->lDivisions:Ljava/util/List;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->iDivisionID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/Flag_Division;->iLayers:I

    sub-int/2addr v7, v9

    add-int/2addr v7, v6

    div-int/2addr v7, v4

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->removeOverlay(I)V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildCreateCiv_Flag()V

    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v7

    invoke-virtual {v7, v5, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    :cond_6
    :goto_0
    if-eqz p1, :cond_c

    if-eq p1, v6, :cond_b

    const-string v7, "]"

    const-string v8, "/"

    const-string v9, "ID: ["

    if-eq p1, v1, :cond_9

    if-eq p1, v0, :cond_8

    if-eq p1, v4, :cond_7

    return-void

    :cond_7
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    invoke-virtual {p1, v6}, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->updateDivision(Z)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildCreateCiv_Flag()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->iDivisionID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->lDivisions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    invoke-virtual {p1, v5, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    return-void

    :cond_8
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    invoke-virtual {p1, v5}, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->updateDivision(Z)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildCreateCiv_Flag()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->iDivisionID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->lDivisions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    invoke-virtual {p1, v5, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    return-void

    :cond_9
    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    if-nez p1, :cond_a

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getVisible()Z

    move-result p1

    if-eqz p1, :cond_a

    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    invoke-virtual {p1, v5, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    goto :goto_1

    :cond_a
    sput v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lDivisionColors:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lDivisionColors:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lDivisionColors:Ljava/util/List;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_RELATIONS_CIV_ID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setActiveRGBColor(FFF)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;->EDITOR_CIV_FLAG_DIVISION_COLOR:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;

    invoke-virtual {p1, v6, v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    :goto_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->iDivisionID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->lDivisions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    return-void

    :cond_b
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->addOverlay()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v6

    sput p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleCreateCiv_Overlay(Z)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleCreateCiv_Flag(Z)V

    return-void

    :cond_c
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleCreateCiv_Data(Z)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleCreateCiv_Flag(Z)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    invoke-virtual {p1, v5, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;->getWidth()I

    move-result v0

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3c343958    # 0.011f

    const v2, 0x3c656042    # 0.014f

    const v3, 0x3c9ba5e3    # 0.019f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v5, v0, 0x4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    new-instance p3, Lcom/badlogic/gdx/graphics/Color;

    const p4, 0x3ee6e979    # 0.451f

    const v0, 0x3ea872b0    # 0.329f

    const v1, 0x3de147ae    # 0.11f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p3, p4, v0, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;->getPosX()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;->getWidth()I

    move-result v1

    invoke-virtual {p3, p1, p4, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    new-instance p3, Lcom/badlogic/gdx/graphics/Color;

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget p4, p4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {p3, p4, v0, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;->getPosX()I

    move-result p3

    add-int v2, p3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;->getHeight()I

    move-result p3

    add-int/2addr p2, p3

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p3

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p3

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p3

    sub-int v3, p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected updateLanguage()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Back"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Flag;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "AddNewOverlay"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    return-void
.end method
