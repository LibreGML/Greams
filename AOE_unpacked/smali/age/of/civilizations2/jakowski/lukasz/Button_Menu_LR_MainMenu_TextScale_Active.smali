.class public Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu;
.source "Button_Menu_LR_MainMenu_TextScale_Active.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIIIIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu;-><init>(Ljava/lang/String;IIIIIZZ)V

    return-void
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 11

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f0ccccd    # 0.55f

    invoke-virtual {p1, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getClickable()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v0, v0, v0, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_h:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosX()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosY()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getWidth()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_h:I

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, p1, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_h:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_h:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosY()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v1, p1, v3, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    goto/16 :goto_0

    :cond_0
    if-eqz p4, :cond_1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btnh_menu_h:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosX()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosY()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getWidth()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->btnh_menu_h:I

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, p1, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btnh_menu_h:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->btnh_menu_h:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosY()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v1, p1, v3, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getClickable()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3ef851ec    # 0.485f

    invoke-direct {v1, v0, v0, v0, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_h:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosX()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosY()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getWidth()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_h:I

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, p1, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_h:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_h:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosY()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v1, p1, v3, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    goto :goto_0

    :cond_2
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_h:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosX()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosY()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getWidth()I

    move-result v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_h:I

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, p1, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_h:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_h:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosY()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v1, p1, v3, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getClickable()Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez p4, :cond_7

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->animationState:I

    if-ltz p4, :cond_7

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->animationState:I

    const-wide/16 v3, 0x2ee

    const v1, 0x3f266666    # 0.65f

    const v5, 0x443b8000    # 750.0f

    if-nez p4, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->lTimeAnimation:J

    sub-long/2addr v6, v8

    long-to-float p4, v6

    mul-float p4, p4, v0

    div-float/2addr p4, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getIsHovered()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const v0, 0x3f266666    # 0.65f

    :goto_1
    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p4

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosX()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v7, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosY()I

    move-result v0

    add-int/2addr v0, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int v8, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getWidth()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p4

    float-to-int v9, v0

    const/4 v10, 0x1

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosX()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v7, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getHeight()I

    move-result v0

    add-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int/2addr p2, v0

    add-int v8, p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getWidth()I

    move-result p2

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    int-to-float p2, p2

    mul-float p2, p2, p4

    float-to-int v9, p2

    invoke-virtual/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-wide p2, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->lTimeAnimation:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    cmp-long p4, p2, v0

    if-gez p4, :cond_6

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->animationState:I

    add-int/2addr p2, v2

    sput p2, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->animationState:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sput-wide p2, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->lTimeAnimation:J

    goto/16 :goto_3

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->lTimeAnimation:J

    sub-long/2addr v6, v8

    long-to-float p4, v6

    mul-float p4, p4, v0

    div-float/2addr p4, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getIsHovered()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    const v0, 0x3f266666    # 0.65f

    :goto_2
    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p4

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosX()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getWidth()I

    move-result v1

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    int-to-float v1, v1

    mul-float v1, v1, p4

    float-to-int v1, v1

    add-int/2addr v0, v1

    add-int v7, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosY()I

    move-result v0

    add-int/2addr v0, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int v8, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getWidth()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getWidth()I

    move-result v1

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    int-to-float v1, v1

    mul-float v1, v1, p4

    float-to-int v1, v1

    sub-int v9, v0, v1

    const/4 v10, 0x1

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosX()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getWidth()I

    move-result v1

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    int-to-float v1, v1

    mul-float v1, v1, p4

    float-to-int v1, v1

    add-int/2addr v0, v1

    add-int v7, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getHeight()I

    move-result v0

    add-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int/2addr p2, v0

    add-int v8, p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getWidth()I

    move-result p2

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getWidth()I

    move-result p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    int-to-float p3, p3

    mul-float p3, p3, p4

    float-to-int p3, p3

    sub-int v9, p2, p3

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-wide p2, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->lTimeAnimation:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    cmp-long p4, p2, v0

    if-gez p4, :cond_6

    const/4 p2, 0x0

    sput p2, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->animationState:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sput-wide p2, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->lTimeAnimation:J

    :cond_6
    :goto_3
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_7
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getTextToDraw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getTextWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    div-float/2addr v4, v0

    float-to-int v4, v4

    sub-int/2addr v3, v4

    add-int/2addr v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr p2, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->iTextHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v1

    div-float/2addr v4, v0

    float-to-int v0, v4

    sub-int/2addr p2, v0

    add-int/2addr p2, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-static {p1, v2, v3, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getTextToDraw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getTextWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    div-float/2addr v4, v0

    float-to-int v4, v4

    sub-int/2addr v3, v4

    add-int/2addr v3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr p2, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->iTextHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v1

    div-float/2addr v4, v0

    float-to-int v0, v4

    sub-int/2addr p2, v0

    add-int/2addr p2, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale_Active;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-static {p1, v2, v3, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method

.method public bridge synthetic setText(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu;->setText(Ljava/lang/String;)V

    return-void
.end method
