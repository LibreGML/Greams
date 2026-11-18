.class Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;
.source "Menu_CreateNewGame_Options_Pallets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;Ljava/lang/String;IZZ)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;

    invoke-direct {p0, p2, p3, p4, p5}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;-><init>(Ljava/lang/String;IZZ)V

    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .locals 9

    sget p6, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_title:I

    invoke-static {p6}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget-object p6, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;

    invoke-virtual {p6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;->getPosX()I

    move-result p6

    add-int v2, p6, p2

    iget-object p6, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;

    invoke-virtual {p6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;->getPosY()I

    move-result p6

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_title:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p6, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->getHeight()I

    move-result v1

    sub-int v3, p6, v1

    iget-object p6, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;

    invoke-virtual {p6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;->getWidth()I

    move-result p6

    add-int/lit8 v4, p6, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance p6, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3c343958    # 0.011f

    const v1, 0x3c656042    # 0.014f

    const v2, 0x3c9ba5e3    # 0.019f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {p6, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p6, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p6}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget-object p6, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;

    invoke-virtual {p6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;->getPosX()I

    move-result p6

    add-int v2, p6, p2

    iget-object p6, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;

    invoke-virtual {p6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;->getPosY()I

    move-result p6

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p6, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    sub-int v3, p6, v1

    iget-object p6, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;

    invoke-virtual {p6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->getHeight()I

    move-result p6

    mul-int/lit8 p6, p6, 0x3

    div-int/lit8 v5, p6, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance p6, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3ee6e979    # 0.451f

    const v2, 0x3ea872b0    # 0.329f

    const v3, 0x3de147ae    # 0.11f

    invoke-direct {p6, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p6, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p6}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p6

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;->getPosY()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;->getWidth()I

    move-result v3

    invoke-virtual {p6, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    new-instance p6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {p6, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p6, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p6}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object p6, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;

    invoke-virtual {p6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;->getPosX()I

    move-result p6

    add-int v3, p6, p2

    iget-object p6, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;

    invoke-virtual {p6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;->getPosY()I

    move-result p6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr p6, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int v4, p6, v2

    iget-object p6, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;

    invoke-virtual {p6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p6, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    if-eqz p6, :cond_0

    sget-object p6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p6, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p6}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object p6, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;

    invoke-virtual {p6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;->getPosX()I

    move-result p6

    add-int v3, p6, p2

    iget-object p6, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;

    invoke-virtual {p6}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets;->getPosY()I

    move-result p6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr p6, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->getHeight()I

    move-result v2

    sub-int v4, p6, v2

    const/4 v5, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object p6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_0
    sget-object p6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p6, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p6

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {p6, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->getText()Ljava/lang/String;

    move-result-object p6

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p3, p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->getTextWidth()I

    move-result p5

    int-to-float p5, p5

    const v1, 0x3f4ccccd    # 0.8f

    mul-float p5, p5, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p5, v2

    float-to-int p5, p5

    sub-int/2addr p3, p5

    add-int/2addr p3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->getHeight()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p4, p2

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_Pallets$3;->getTextHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v1

    div-float/2addr p2, v2

    float-to-int p2, p2

    sub-int/2addr p4, p2

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_LEFT_NS:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p6, p3, p4, p2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method
