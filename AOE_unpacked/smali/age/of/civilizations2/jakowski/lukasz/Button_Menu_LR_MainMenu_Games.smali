.class Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Menu;
.source "Button_Menu_LR_MainMenu_Games.java"


# instance fields
.field private backAnimation:Z

.field private fAlphaMod:F

.field private lTime:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->lTime:J

    const/4 p1, 0x0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->fAlphaMod:F

    const/4 p2, 0x0

    iput-boolean p2, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->backAnimation:Z

    iput-boolean p2, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->backAnimation:Z

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->fAlphaMod:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->lTime:J

    return-void
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 14

    move-object v0, p0

    move-object v9, p1

    const/high16 v10, 0x3f800000    # 1.0f

    const v1, 0x3f0ccccd    # 0.55f

    invoke-virtual {p1, v10, v10, v10, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    const/4 v11, 0x1

    if-eqz p4, :cond_0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btnh_menu_h:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosX()I

    move-result v2

    add-int v2, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosY()I

    move-result v3

    add-int v3, v3, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->btnh_menu_h:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, p1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btnh_menu_h:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->btnh_menu_h:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosY()I

    move-result v3

    add-int v3, v3, p3

    invoke-virtual {v1, p1, v2, v3, v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3ef851ec    # 0.485f

    invoke-direct {v1, v10, v10, v10, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_h:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosX()I

    move-result v2

    add-int v2, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosY()I

    move-result v3

    add-int v3, v3, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_h:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, p1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_h:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_h:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosY()I

    move-result v3

    add-int v3, v3, p3

    invoke-virtual {v1, p1, v2, v3, v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    goto :goto_0

    :cond_1
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_h:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosX()I

    move-result v2

    add-int v2, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosY()I

    move-result v3

    add-int v3, v3, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_h:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, p1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_h:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_h:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosY()I

    move-result v3

    add-int v3, v3, p3

    invoke-virtual {v1, p1, v2, v3, v11}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :goto_0
    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez p4, :cond_5

    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->lTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x46

    sub-long/2addr v3, v5

    const v5, 0x3eb33333    # 0.35f

    cmp-long v6, v1, v3

    if-gez v6, :cond_4

    iget-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->backAnimation:Z

    const v2, 0x3ca3d70a    # 0.02f

    if-eqz v1, :cond_2

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->fAlphaMod:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->fAlphaMod:F

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->fAlphaMod:F

    cmpg-float v1, v1, v13

    if-gez v1, :cond_3

    iput-boolean v12, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->backAnimation:Z

    goto :goto_1

    :cond_2
    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->fAlphaMod:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->fAlphaMod:F

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->fAlphaMod:F

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_3

    iput-boolean v11, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->backAnimation:Z

    iput v5, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->fAlphaMod:F

    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->lTime:J

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_4
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->fAlphaMod:F

    sub-float/2addr v5, v2

    invoke-direct {v1, v13, v13, v13, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getHeight()I

    move-result v2

    div-int/lit8 v6, v2, 0x8

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getHeight()I

    move-result v2

    div-int/lit8 v6, v2, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    :cond_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getClickable()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez p4, :cond_8

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->animationState:I

    if-ltz v1, :cond_8

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->animationState:I

    const-wide/16 v7, 0x2ee

    const v2, 0x443b8000    # 750.0f

    if-nez v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->lTimeAnimation:J

    sub-long/2addr v3, v5

    long-to-float v1, v3

    mul-float v1, v1, v10

    div-float/2addr v1, v2

    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosY()I

    move-result v2

    add-int/2addr v2, v11

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, v10

    float-to-int v5, v2

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, v10

    float-to-int v5, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-wide v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->lTimeAnimation:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v7

    cmp-long v5, v1, v3

    if-gez v5, :cond_7

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->animationState:I

    add-int/2addr v1, v11

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->animationState:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->lTimeAnimation:J

    goto/16 :goto_2

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->lTimeAnimation:J

    sub-long/2addr v3, v5

    long-to-float v1, v3

    mul-float v1, v1, v10

    div-float/2addr v1, v2

    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosY()I

    move-result v2

    add-int/2addr v2, v11

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sub-int v5, v2, v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    sub-int v5, v2, v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-wide v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->lTimeAnimation:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v7

    cmp-long v5, v1, v3

    if-gez v5, :cond_7

    sput v12, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->animationState:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->lTimeAnimation:J

    :cond_7
    :goto_2
    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_8
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v10, 0x3e99999a    # 0.3f

    if-eqz p4, :cond_9

    const/4 v5, 0x0

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getIsHovered()Z

    move-result v5

    if-eqz v5, :cond_a

    const v5, 0x3e99999a    # 0.3f

    goto :goto_3

    :cond_a
    const v5, 0x3e4ccccd    # 0.2f

    :goto_3
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getTextWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getTextWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getTextWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    if-eqz p4, :cond_b

    const/4 v2, 0x0

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getIsHovered()Z

    move-result v2

    if-eqz v2, :cond_c

    const v2, 0x3e99999a    # 0.3f

    goto :goto_4

    :cond_c
    const v2, 0x3e333333    # 0.175f

    :goto_4
    invoke-direct {v1, v13, v13, v13, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosY()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getTextWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getTextWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosY()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getTextWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosY()I

    move-result v2

    add-int/2addr v2, v11

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getTextWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    const/4 v7, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getTextWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getPosY()I

    move-result v2

    add-int/2addr v2, v11

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Games;->getTextWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method
