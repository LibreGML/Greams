.class Lage/of/civilizations2/jakowski/lukasz/Menu_FlagEditor;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_FlagEditor.java"


# direct methods
.method protected constructor <init>()V
    .locals 25

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Slider;

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    div-int/lit8 v19, v1, 0x3

    sget v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v16, ""

    const/16 v21, 0x0

    const/16 v22, 0xff

    const/16 v23, 0x80

    move-object v15, v0

    invoke-direct/range {v15 .. v23}, Lage/of/civilizations2/jakowski/lukasz/Slider;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Slider;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    add-int v9, v1, v2

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    div-int/lit8 v11, v1, 0x3

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v8, ""

    const/4 v13, 0x0

    const/16 v14, 0xff

    const/16 v15, 0x80

    move-object v7, v0

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Slider;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Slider;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    add-int v18, v1, v2

    sget v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    div-int/lit8 v20, v1, 0x3

    sget v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v17, ""

    const/16 v22, 0x0

    const/16 v23, 0xff

    const/16 v24, 0x80

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v24}, Lage/of/civilizations2/jakowski/lukasz/Slider;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v2, 0x42480000    # 50.0f

    mul-float v1, v1, v2

    float-to-int v9, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int v11, v1, v3

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x2

    add-int v19, v2, v3

    sget v20, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v16, "Tool: Pencil"

    const/16 v18, 0x0

    const/16 v22, 0x1

    move-object v15, v0

    move/from16 v17, v1

    invoke-direct/range {v15 .. v22}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v2, 0x0

    const-string v3, "Flag Editor"

    invoke-direct {v1, v3, v0, v2, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;-><init>(Ljava/lang/String;IZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x6

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v2, v2, v3

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v3, v0, v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x6

    sub-int/2addr v2, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/2addr v2, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v2, v2, v5

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v5, v0, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagEditor;->initMenuWithBackButton(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagEditor;->updateLanguage()V

    return-void
.end method

.method private final randomFlag()V
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagEditor;->randomFlag2()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagEditor;->randomFlag1()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagEditor;->randomFlag0()V

    :goto_0
    return-void
.end method

.method private final randomFlag0()V
    .locals 10

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v6, v6, v7

    div-int/lit8 v6, v6, 0x2

    const/high16 v7, 0x42c80000    # 100.0f

    const v8, 0x40233333    # 2.55f

    if-ge v5, v6, :cond_0

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    int-to-float v9, v2

    div-float/2addr v9, v8

    div-float/2addr v9, v7

    invoke-virtual {v6, v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setR(IF)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    int-to-float v9, v3

    div-float/2addr v9, v8

    div-float/2addr v9, v7

    invoke-virtual {v6, v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setG(IF)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    int-to-float v9, v4

    div-float/2addr v9, v8

    div-float/2addr v9, v7

    invoke-virtual {v6, v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setB(IF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v1, v1, v4

    div-int/lit8 v1, v1, 0x2

    :goto_1
    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v4, v4, v5

    if-ge v1, v4, :cond_1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    int-to-float v5, v2

    div-float/2addr v5, v8

    div-float/2addr v5, v7

    invoke-virtual {v4, v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setR(IF)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    int-to-float v5, v3

    div-float/2addr v5, v8

    div-float/2addr v5, v7

    invoke-virtual {v4, v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setG(IF)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    int-to-float v5, v0

    div-float/2addr v5, v8

    div-float/2addr v5, v7

    invoke-virtual {v4, v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setB(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private final randomFlag1()V
    .locals 11

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v6, v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    const v8, 0x40233333    # 2.55f

    const/4 v9, 0x3

    if-ge v5, v6, :cond_1

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    int-to-float v10, v2

    div-float/2addr v10, v8

    div-float/2addr v10, v7

    invoke-virtual {v6, v5, v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setR(IF)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    int-to-float v10, v3

    div-float/2addr v10, v8

    div-float/2addr v10, v7

    invoke-virtual {v6, v5, v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setG(IF)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    int-to-float v10, v4

    div-float/2addr v10, v8

    div-float/2addr v10, v7

    invoke-virtual {v6, v5, v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setB(IF)V

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/2addr v6, v9

    rem-int v6, v5, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/2addr v7, v9

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_0

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/2addr v7, v9

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/16 v5, 0x64

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    rem-int/lit8 v5, v5, 0x5

    if-eq v5, v9, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    :cond_2
    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/2addr v5, v9

    mul-int/lit8 v5, v5, 0x2

    :goto_1
    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v6, v6, v10

    if-ge v5, v6, :cond_4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    int-to-float v10, v2

    div-float/2addr v10, v8

    div-float/2addr v10, v7

    invoke-virtual {v6, v5, v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setR(IF)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    int-to-float v10, v3

    div-float/2addr v10, v8

    div-float/2addr v10, v7

    invoke-virtual {v6, v5, v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setG(IF)V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    int-to-float v10, v4

    div-float/2addr v10, v8

    div-float/2addr v10, v7

    invoke-virtual {v6, v5, v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setB(IF)V

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    rem-int v6, v5, v6

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    add-int/lit8 v10, v10, -0x1

    if-ne v6, v10, :cond_3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/2addr v10, v9

    sub-int/2addr v6, v10

    add-int/2addr v5, v6

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/2addr v1, v9

    :goto_2
    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v4, v4, v5

    if-ge v1, v4, :cond_6

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    int-to-float v5, v2

    div-float/2addr v5, v8

    div-float/2addr v5, v7

    invoke-virtual {v4, v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setR(IF)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    int-to-float v5, v3

    div-float/2addr v5, v8

    div-float/2addr v5, v7

    invoke-virtual {v4, v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setG(IF)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    int-to-float v5, v0

    div-float/2addr v5, v8

    div-float/2addr v5, v7

    invoke-virtual {v4, v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setB(IF)V

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    rem-int v4, v1, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/2addr v5, v9

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_5

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/2addr v5, v9

    sub-int/2addr v4, v5

    add-int/2addr v1, v4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private final randomFlag2()V
    .locals 8

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v4, v4, v5

    if-ge v1, v4, :cond_1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    int-to-float v5, v2

    const v6, 0x40233333    # 2.55f

    div-float/2addr v5, v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v5, v7

    invoke-virtual {v4, v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setR(IF)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    int-to-float v5, v3

    div-float/2addr v5, v6

    div-float/2addr v5, v7

    invoke-virtual {v4, v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setG(IF)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    int-to-float v5, v0

    div-float/2addr v5, v6

    div-float/2addr v5, v7

    invoke-virtual {v4, v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->setB(IF)V

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x1

    rem-int v4, v1, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x2

    if-ne v4, v5, :cond_0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 3

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagEditorMode:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->PENCIL:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    if-ne v0, v1, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->PAINT_BUCKET:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    goto :goto_0

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->PENCIL:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    :goto_0
    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagEditorMode:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagEditor;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tool: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagEditorMode:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->PENCIL:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    if-ne v1, v2, :cond_2

    const-string v1, "Pencil"

    goto :goto_1

    :cond_2
    const-string v1, "Paint bucket"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagEditor;->randomFlag()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagEditor;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagB:I

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagEditor;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagG:I

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagEditor;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagR:I

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagEditor;->onBackPressed()V

    :goto_2
    return-void
.end method

.method protected final drawIconFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    mul-int v4, v4, v5

    if-ge v1, v4, :cond_1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->getR(I)F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->getG(I)F

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    invoke-virtual {v6, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->getB(I)F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->FlagPixelColor:Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;

    invoke-virtual {v7, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagPixel_Color;->getA(I)F

    move-result v7

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    add-int v5, p3, p2

    add-int/lit8 v6, v2, 0x1

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v5, v2

    mul-int/lit8 v2, v3, 0x1

    add-int/2addr v2, p4

    invoke-virtual {v4, p1, v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    if-lt v6, v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    move v2, v6

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final drawTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZI)V
    .locals 6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagEditor;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZI)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagEditor;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->getTextWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p3, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p3, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagEditor;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sget p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p4, p5

    invoke-virtual {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagEditor;->drawIconFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    return-void
.end method

.method protected final onBackPressed()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eMAINMENU:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setBackAnimation(Z)V

    return-void
.end method

.method protected updateLanguage()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagEditor;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Back"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_FlagEditor;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "RandomFlag"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    return-void
.end method
