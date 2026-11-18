.class Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_CreateCiv_Overlay.java"


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

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay$1;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int v11, v3, v5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v6, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v13, v3, v5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v4

    float-to-int v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v15, 0x1

    move-object v7, v2

    move-object/from16 v8, p0

    move v12, v0

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v4

    float-to-int v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    const-string v8, "<<"

    const/4 v9, -0x1

    const/4 v14, 0x1

    move-object v7, v2

    move v11, v0

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v3, v6, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int v10, v3, v5

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v4

    float-to-int v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    const-string v8, ">>"

    move-object v7, v2

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Slider;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v3, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    add-int v9, v3, v5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v6, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v5, v5, 0x3

    sub-int v11, v3, v5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v3, v3

    const v5, 0x3f333333    # 0.7f

    mul-float v3, v3, v5

    float-to-int v12, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    neg-int v13, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v14

    const-string v8, "X: "

    const/4 v15, 0x0

    move-object v7, v2

    move v10, v0

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Slider;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    add-int v12, v3, v7

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v5

    float-to-int v13, v3

    const-string v8, "-"

    const/4 v9, -0x1

    const/4 v14, 0x1

    move-object v7, v2

    move v11, v0

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v3, v6, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v3, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    sub-int v10, v3, v7

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    add-int v12, v3, v7

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v5

    float-to-int v13, v3

    const-string v8, "+"

    move-object v7, v2

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Slider;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v3, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    add-int v9, v3, v7

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v6, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v7, v7, 0x3

    sub-int v11, v3, v7

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v5

    float-to-int v12, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    neg-int v13, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v14

    const-string v8, "Y: "

    move-object v7, v2

    move v10, v0

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Slider;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    add-int v12, v3, v7

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v5

    float-to-int v13, v3

    const-string v8, "-"

    const/4 v9, -0x1

    const/4 v14, 0x1

    move-object v7, v2

    move v11, v0

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v3, v6, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v3, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    sub-int v10, v3, v7

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    add-int v12, v3, v7

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v5

    float-to-int v13, v3

    const-string v8, "+"

    move-object v7, v2

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Slider;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v3, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    add-int v9, v3, v7

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v6, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v7, v7, 0x3

    sub-int v11, v3, v7

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v5

    float-to-int v12, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v14

    const-string v8, ""

    const/4 v13, 0x1

    const/4 v15, 0x1

    move-object v7, v2

    move v10, v0

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Slider;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    add-int v12, v3, v7

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v5

    float-to-int v13, v3

    const-string v8, "-"

    const/4 v9, -0x1

    const/4 v14, 0x1

    move-object v7, v2

    move v11, v0

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v3, v6, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v3, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    sub-int v10, v3, v7

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    add-int v12, v3, v7

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v5

    float-to-int v13, v3

    const-string v8, "+"

    move-object v7, v2

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Slider;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v3, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    add-int v9, v3, v7

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v6, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v7, v7, 0x3

    sub-int v11, v3, v7

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v5

    float-to-int v12, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v14

    const-string v8, ""

    const/4 v13, 0x1

    move-object v7, v2

    move v10, v0

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Slider;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    add-int v12, v3, v7

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v5

    float-to-int v13, v3

    const-string v8, "-"

    const/4 v9, -0x1

    const/4 v14, 0x1

    move-object v7, v2

    move v11, v0

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v3, v6, v3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v3, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    sub-int v10, v3, v7

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    add-int v12, v3, v7

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v5

    float-to-int v13, v3

    const-string v8, "+"

    move-object v7, v2

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay$2;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v12, v6, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v5

    float-to-int v13, v3

    const-string v9, ""

    const/16 v15, 0x64

    const/16 v16, 0x32

    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    invoke-direct/range {v7 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;Ljava/lang/String;IIIIIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay$3;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "Color"

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v13, v6, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v14, v3

    const/4 v10, -0x1

    const/4 v15, 0x1

    move-object v7, v2

    move v12, v0

    invoke-direct/range {v7 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "CenterX"

    const-string v7, "X"

    invoke-virtual {v3, v5, v7}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v6, v3

    div-int/lit8 v12, v3, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v13, v3

    const/4 v9, -0x1

    const/4 v14, 0x1

    move-object v7, v2

    move v11, v0

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Left;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v7, "Y"

    invoke-virtual {v3, v5, v7}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v6, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v6, v5

    div-int/lit8 v5, v5, 0x2

    sub-int v10, v3, v5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v6, v3

    div-int/lit8 v12, v3, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v13, v3

    move-object v7, v2

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Right;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    const/4 v9, 0x0

    add-int/lit8 v4, v2, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v3, v5

    add-int v5, v2, v3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v7

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    add-int/2addr v3, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v3, v7

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v3, 0x0

    move-object/from16 v2, p0

    move-object v8, v1

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->setVisible(Z)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->updateLanguage()V

    return-void
.end method

.method private final updateScale()V
    .locals 5

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iHeight:I

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iOverlayID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->getOverlay(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x7

    const/4 v3, 0x4

    const/16 v4, 0xd

    const/16 v5, 0xa

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iHeight:I

    rsub-int/lit8 v0, v0, 0x2c

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iPosY:I

    return-void

    :pswitch_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iWidth:I

    rsub-int/lit8 v0, v0, 0x44

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iPosX:I

    return-void

    :pswitch_2
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setActiveRGBColor(FFF)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;->EDITOR_CIV_FLAG_OVERLAY_COLOR:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;

    invoke-virtual {p1, v6, v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    :goto_0
    return-void

    :pswitch_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iOverlayID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->getOverlay(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v2

    mul-int v1, v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iWidth:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iOverlayID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->getOverlay(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    mul-int v1, v1, p1

    int-to-float p1, v1

    div-float/2addr p1, v2

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iHeight:I

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iWidth:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iHeight:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :pswitch_4
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iHeight:I

    add-int/2addr v0, v6

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iHeight:I

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iHeight:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :pswitch_5
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iHeight:I

    sub-int/2addr v0, v6

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iHeight:I

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iHeight:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :pswitch_6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iHeight:I

    return-void

    :pswitch_7
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iWidth:I

    add-int/2addr v0, v6

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iWidth:I

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iWidth:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->updateScale()V

    return-void

    :pswitch_8
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iWidth:I

    sub-int/2addr v0, v6

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iWidth:I

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iWidth:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->updateScale()V

    return-void

    :pswitch_9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iWidth:I

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->updateScale()V

    return-void

    :pswitch_a
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iPosY:I

    add-int/2addr v0, v6

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iPosY:I

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iPosY:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :pswitch_b
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iPosY:I

    sub-int/2addr v0, v6

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iPosY:I

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iPosY:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :pswitch_c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iPosY:I

    return-void

    :pswitch_d
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iPosX:I

    add-int/2addr v0, v6

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iPosX:I

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iPosX:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :pswitch_e
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iPosX:I

    sub-int/2addr v0, v6

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iPosX:I

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iPosX:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :pswitch_f
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iPosX:I

    return-void

    :pswitch_10
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-virtual {p1, v0, v6}, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->updateOverlay(IZ)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->updateLanguage()V

    return-void

    :pswitch_11
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->updateOverlay(IZ)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->updateLanguage()V

    return-void

    :cond_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleCreateCiv_Overlay(Z)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildCreateCiv_Flag()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getWidth()I

    move-result v0

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getHeight()I

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v5, v0, 0x4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getHeight()I

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getPosX()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getWidth()I

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getPosX()I

    move-result p3

    add-int v2, p3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getHeight()I

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected updateLanguage()V
    .locals 6

    const-string v0, ": "

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Back"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    const-string v3, "X: "

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iPosX:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    const-string v3, "Y: "

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iPosY:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "Width"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iWidth:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "Height"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagManager:Lage/of/civilizations2/jakowski/lukasz/FlagManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/FlagManager;->flagEdit:Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Flag_GameData;->lOverlays:Ljava/util/List;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDIT_ALLIANCE_NAMES_BUNDLE_ID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Flag_Overlay_GameData;->iHeight:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "Scale"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Overlay;->updateScale()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
