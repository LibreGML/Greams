.class Lage/of/civilizations2/jakowski/lukasz/Menu_About;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_About.java"


# direct methods
.method protected constructor <init>()V
    .locals 14

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$1;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, "B"

    const/4 v10, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v7, v1

    move-object v8, p0

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$2;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, "https://libregml.github.io"

    const v13, 0x3f666666    # 0.9f

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$3;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, "\u845b\u58a8\u6797"

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$4;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getLukaszJakowski()Ljava/lang/String;

    move-result-object v9

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const v13, 0x3f666666    # 0.9f

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$5;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, "TZGML"

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$6;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getLukaszJakowskiGames()Ljava/lang/String;

    move-result-object v9

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const v13, 0x3f666666    # 0.9f

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$12;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$12;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""

    const v13, 0x3f666666    # 0.9f

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$12;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""

    const v13, 0x3f666666    # 0.9f

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$7;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "\u5927\u9769\u547d\u4e07\u5c81\uff01"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$8;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, "https://libregml.github.io"

    const v13, 0x3f666666    # 0.9f

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$9;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Developed by Gemorin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$10;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, "X: @TZgemolin"

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$11;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, "TZGML"

    const v13, 0x3f59999a    # 0.85f

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$12;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$13;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, "YouTube: @libregml"

    const/high16 v13, 0x3f400000    # 0.75f

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$14;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, "Facebook"

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, "GitHub: LibreGML"

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, "2024\u5e747\u6708\u83b9\u8054\u5185\u6218\uff0c\u65b0\u5171\u4ea7\u515a\u3001\u81ea\u7531\u515a\u3001\u4eba\u6743\u8054\u76df\u5206\u7acb  \n  8\u6708\u672b,\u65b0\u5171\u4e0e\u4eba\u6743\u8054\u76df\u5de6\u7ffc\u52bf\u529b\u7ec4\u5efa\u6c11\u4e3b\u515a\uff0c\u7edf\u4e00\u5168\u56fd\u5e76\u5bf9\u81ea\u7531\u515a\u5168\u9762\u6e05\u7b97 \n 9\u67087\u65e5\uff0c\u83b9\u8054\u7b2c\u4e00\u90e8\u5baa\u6cd5\u9881\u5e03\u300210\u6708\u672b\uff0c\u6c11\u4e3b\u515a\u516c\u7136\u8fdd\u5baa\uff0c\u91d1\u878d\u5168\u9762\u81ea\u7531\u5316\uff0c\u7ecf\u6d4e\u95ea\u5d29\u5e76\u6025\u901f\u6076\u5316\u81f3\u5d29\u6e83 \n "

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, "2025\u5e741\u670828\u65e5\u9664\u5915\u4e4b\u591c\uff0c\u6c11\u4e3b\u515a\u57ae\u53f0\uff0c\u83b9\u8f69\u73b0\u4ee3\u8054\u76df\u5ba3\u544a\u505c\u6b62\u5b58\u5728\u3002\n \u83b9\u8054\u672a\u80fd\u6491\u5230\u7b2c\u4e94\u4e2a\u56fd\u5e86\uff0c\u56fd\u795a5\u5e74\u3002 \n  2021.1 \u2192 2025.1"

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, "\u300a\u5b64\u9e3f\u53f9\u300b\n \u83b9\u8f69\u6614\u65e5\u52bf\u5982\u8679\uff0c\u4eca\u4e0a\u6deb\u4e71\u5929\u9619\u4e2d\u3002 \n \u767e\u59d3\u75be\u82e6\u547c\u4e0d\u5e94\uff0c\u5343\u519b\u6218\u9f13\u54cd\u7a7a\u7a7a\u3002  \n \u6743\u503e\u671d\u91ce\u5fc3\u72b9\u61d2\uff0c\u56fd\u7834\u5c71\u6cb3\u6cea\u5df2\u7a77\u3002  \n \u56de\u9996\u7e41\u534e\u6210\u901d\u6c34\uff0c\u60b2\u98ce\u6b8b\u6708\u7167\u5b64\u9e3f\u3002 \n ___\u845b\u58a8\u6797\u4f5c\u4e8e25\u5e746\u670824\u51cc\u6668"

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$17;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, "\u300a\u4e91\u51a5\u5c71\u6000\u53e4\u300b\n \u5fc6\u6614\u83b9\u8f69\u8000\u5929\u57a3\uff0c\u9f99\u7ae0\u51e4\u7bc6\u7115\u4e91\u7b3a\u3002\n \u94c1\u5766\u91cd\u70ae\u5f81\u86ee\u57df\uff0c\u7389\u5e1b\u7433\u7405\u8d2f\u4e5d\u57a0\u3002\n \u4e07\u59d3\u6b22\u6b4c\u6625\u91aa\u7eff\uff0c\u4e5d\u8862\u9526\u7ee3\u745e\u972d\u7ef5\u3002\n \u9769\u547d\u6f6e\u6d8c\u5343\u5c42\u6d6a\uff0c\u864e\u8d32\u8e0f\u788e\u7389\u73af\u5173\u3002\n \u800c\u4eca\u6b8b\u7167\u6620\u5bd2\u6a90\uff0c\u743c\u697c\u503e\u4f5c\u65ad\u4e91\u7720\u3002\n \u660e\u5802\u7a7a\u63a9\u7167\u541b\u53f0\uff0c\u70fd\u71e7\u9891\u60ca\u66ae\u89d2\u6b8b\u3002\n \u6c89\u75b4\u56f0\u8f87\u8ff7\u4e39\u9619\uff0c\u673d\u693d\u86c0\u680b\u6ce3\u971c\u693d\u3002\n \u5b64\u9e3f\u5533\u65ad\u84ec\u83b1\u6c34\uff0c\u94c1\u9501\u6c89\u6c99\u66ae\u972d\u5bd2\u3002 \n \u4f46\u89c1\u82cd\u832b\u70df\u96e8\u91cc\uff0c\u9f99\u541f\u72b9\u5728\u695a\u5929\u8fb9\uff01\n ___\u845b\u58a8\u6797\u4f5c\u4e8e25\u5e746\u670824\u51cc\u6668"

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_About$17;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TOP:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    const-string v9, ""

    const v13, 0x3f4ccccd    # 0.8f

    move-object v7, v1

    move v12, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$17;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIIF)V

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

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v11, v0, v1

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_About$18;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TOP:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int v10, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v12, v1, 0x4

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    const-string v9, ""

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$18;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_About$19;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v12, v1, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_About$19;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_About;IIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int v5, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_About;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_About;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_About;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->actionElement(I)V

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const v2, 0x3ee66666    # 0.45f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v4, p3, v0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v6, v0, 0x4

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3c4985f0    # 0.0123f

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->patt_square:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->patt_square:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v4, p3, v0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_About;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawLogo_Square(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :cond_0
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
