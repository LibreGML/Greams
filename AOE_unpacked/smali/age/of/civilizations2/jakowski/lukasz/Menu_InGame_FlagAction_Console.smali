.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_InGame_FlagAction_Console.java"


# direct methods
.method protected constructor <init>()V
    .locals 15

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    # ---- topY (v10): under top HUD ----
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x5

    add-int v10, v0, v1

    # ---- usableH (v11) ----
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sub-int v11, v0, v10

    # ---- panelH (v12) = min(usable*0.72, screen*0.58) — real panel, not strip ----
    int-to-float v0, v11

    const v1, 0x3f3851ec    # 0.72f

    mul-float/2addr v0, v1

    float-to-int v12, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f147ae1    # 0.58f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-gt v12, v0, :cond_clamp_h

    goto :after_clamp_h

    :cond_clamp_h
    move v12, v0

    :after_clamp_h
    # ---- panelW (v13) = max(screen*0.42, screen*0.36) ----
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v1, v0

    const v2, 0x3ed70a3d    # 0.42f

    mul-float/2addr v1, v2

    float-to-int v13, v1

    int-to-float v1, v0

    const v2, 0x3eb851ec    # 0.36f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-lt v13, v1, :cond_clamp_w

    goto :after_clamp_w

    :cond_clamp_w
    move v13, v1

    :after_clamp_w
    # ---- panelX (v9) right aligned ----
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v13

    sub-int v9, v0, v1

    # ---- elements ----
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v1, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v1, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v4, v13, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    # Start small; ConsoleFloat sizes to real line count at runtime
    mul-int/lit8 v5, v1, 0x10

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;-><init>(IIIIZ)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    move v4, v13

    move v5, v12

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;-><init>(IIIIZ)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # initMenu(moveable slim title, x, y, w, h, list, false, closeable) — drag + X
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    const-string v0, "\u63a7\u5236\u53f0"

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v4, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;-><init>(Ljava/lang/String;IZZ)V

    move-object v3, p0

    move v5, v9

    move v6, v10

    move v7, v13

    move v8, v12

    move-object v9, v14

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v3 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method



# virtual methods
.method protected actionClose()V
    .locals 0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleEngine;->closeConsole()V

    return-void
.end method

.method protected actionElement(I)V
    .locals 0

    # Tap console body → refocus input + IME (caret at end)
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->focusInput()V

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 10

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getWidth()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int v5, v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ccccccd    # 0.025f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosY()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosX()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getWidth()I

    move-result v0

    add-int/lit8 v5, v0, -0x4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v6, v0, 0x4

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosX()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v5, v0, 0x4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getHeight()I

    move-result v0

    add-int/lit8 v6, v0, -0x4

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sub-int/2addr v0, v8

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getWidth()I

    move-result v0

    add-int/lit8 v6, v0, -0x2

    const/4 v7, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosX()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getWidth()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v5, v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getHeight()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v6, v0, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e19999a    # 0.15f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, p3

    invoke-virtual {v0, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3ee66666    # 0.45f

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosX()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v3

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosY()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getWidth()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v6, v0, v3

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosX()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v3

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosY()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v8

    add-int v5, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getWidth()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v6, v0, v3

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f2ccccd    # 0.675f

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosX()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v3

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosY()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getWidth()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v6, v0, v3

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosX()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v3

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosY()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v8

    add-int v5, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getWidth()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v6, v0, v3

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    # Do NOT call SliderMenu.draw (beginClip/endClip). A leaked GL scissor from that
    # path blanks the entire HUD every other keystroke while typing in the console.
    # Title only, then Java log+input (already clipped visually by the input band).
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Console;->getPosY()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZI)V

    # Log + input drawn in Java so exceptions cannot abort MenuManager.draw
    invoke-static {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->drawLogAndInput(Lage/of/civilizations2/jakowski/lukasz/SliderMenu;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    const/4 v8, 0x1

    # v2 was left as Image from panel chrome draws; ART rejects getCiv(v2) expecting int.
    # Force integer type before the loop merge so :goto_1 never joins Image|Int.
    const/4 v2, 0x0

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/Commands;->lShit:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    const/4 p2, 0x0

    :goto_1
    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/Commands;->lShit:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result p4

    rem-int p4, p2, p4

    move v2, p4

    invoke-virtual {p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p3

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p3

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosX()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Commands;->lShit:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosX()I

    move-result v0

    add-int/2addr p4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    rem-int/2addr p4, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p4, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Commands;->lShit:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Point_XY;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Point_XY;->getPosY()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    rem-int/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p3, p1, p4, v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    sget-wide p1, Lage/of/civilizations2/jakowski/lukasz/Commands;->lShitTime:J

    const-wide/16 p3, 0x30d4

    add-long/2addr p1, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    cmp-long v0, p1, p3

    if-gez v0, :cond_2

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Commands;->lShit:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2
    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_3
    return-void
.end method

.method protected drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 1

    if-eqz p4, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p2, v0

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :cond_0
    return-void
.end method

.method protected onHovered()V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setOrderOfMenu_InGame_FlagAction()V

    return-void
.end method

.method protected setVisible(Z)V
    .locals 0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Commands;->lShit:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
