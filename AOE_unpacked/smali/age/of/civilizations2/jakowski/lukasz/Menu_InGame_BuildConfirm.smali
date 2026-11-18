.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_InGame_BuildConfirm.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0xe1


# instance fields
.field private lTime:J


# direct methods
.method protected constructor <init>()V
    .locals 14

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->lTime:J

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    int-to-float v0, v0

    const/high16 v1, 0x40980000    # 4.75f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    if-le v0, v2, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v0, v2

    :cond_0
    move v10, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->ACTIVE_BUILDING:Lage/of/civilizations2/jakowski/lukasz/Buildings;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Buildings;->FORT:Lage/of/civilizations2/jakowski/lukasz/Buildings;

    if-ne v0, v2, :cond_1

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm$1;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    const-string v3, "+20% Defense bonus"

    invoke-direct {v0, p0, v3, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;Ljava/lang/String;II)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm$2;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, p0, v3, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;Ljava/lang/String;II)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->ACTIVE_BUILDING:Lage/of/civilizations2/jakowski/lukasz/Buildings;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Buildings;->WATCH_TOWER:Lage/of/civilizations2/jakowski/lukasz/Buildings;

    :goto_0
    move v11, v1

    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm$3;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Cancel"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v6, v10, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v7, v0, 0x2

    const/4 v8, 0x1

    move-object v0, v12

    move-object v1, p0

    move v5, v11

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm$4;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v13, "Build"

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v6, v10, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v7, v0, 0x2

    move-object v0, v12

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v6, v11, v0

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm$5;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;Ljava/lang/String;IZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v10, 0x2

    sub-int v2, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    add-int v3, v0, v1

    const/4 v8, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, v7

    move v4, v10

    move v5, v6

    move-object v6, v9

    move v7, v8

    move v8, v11

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->getMenuElementsSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 13

    move-object v0, p0

    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->lTime:J

    const-wide/16 v3, 0xe1

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-ltz v7, :cond_0

    new-instance v1, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->getPosX()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->getPosY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->lTime:J

    sub-long/2addr v8, v10

    long-to-float v8, v8

    const/high16 v9, 0x43610000    # 225.0f

    div-float/2addr v8, v9

    mul-float v7, v7, v8

    float-to-int v7, v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    const/4 v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->getPosX()I

    move-result v1

    add-int v7, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->getPosY()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v8, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->getWidth()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int v9, v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->getHeight()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v6, p1

    invoke-virtual/range {v5 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v7, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->getPosY()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v8, v1, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->getHeight()I

    move-result v10

    const/4 v11, 0x1

    invoke-virtual/range {v5 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-virtual/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-virtual/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->lTime:J

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-virtual/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :cond_0
    return-void
.end method

.method protected final getW()I
    .locals 1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->getWidth()I

    move-result v0

    return v0
.end method

.method protected setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;->lTime:J

    return-void
.end method
