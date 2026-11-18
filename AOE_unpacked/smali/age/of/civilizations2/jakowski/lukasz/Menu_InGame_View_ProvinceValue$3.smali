.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;
.source "Menu_InGame_View_ProvinceValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;Ljava/lang/String;IZZ)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;

    invoke-direct {p0, p2, p3, p4, p5}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;-><init>(Ljava/lang/String;IZZ)V

    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .locals 12

    move-object v0, p0

    move-object v9, p1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_title:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_title:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;->getWidth()I

    move-result v2

    add-int/lit8 v5, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_PROVINCE_VALUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_PROVINCE_VALUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_PROVINCE_VALUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3e28f5c3    # 0.165f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    add-int v10, p3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->getHeight()I

    move-result v2

    sub-int v2, p4, v2

    add-int/lit8 v2, v2, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v4, v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->getHeight()I

    move-result v2

    add-int/lit8 v6, v2, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    move v3, v10

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_PROVINCE_VALUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_PROVINCE_VALUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_PROVINCE_VALUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3ec00000    # 0.375f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    sub-int v2, p4, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v4, v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v6, v2, 0x3

    move-object v2, p1

    move v3, v10

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v10, 0x3f800000    # 1.0f

    const v2, 0x3ee6e979    # 0.451f

    const v3, 0x3ea872b0    # 0.329f

    const v4, 0x3de147ae    # 0.11f

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;->getPosX()I

    move-result v2

    add-int/2addr v2, p2

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;->getPosY()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;->getWidth()I

    move-result v4

    invoke-virtual {v1, p1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/4 v7, 0x0

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v1, v7, v7, v7, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v4, v2, -0x1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;->getWidth()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v11, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v7, v7, v7, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;->getWidth()I

    move-result v2

    div-int/lit8 v5, v2, 0x4

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;->getPosX()I

    move-result v2

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;->getWidth()I

    move-result v2

    div-int/lit8 v5, v2, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->victoryPoints:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    add-int/2addr v2, p2

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->victoryPoints:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->getText()Ljava/lang/String;

    move-result-object v1

    div-int/lit8 v2, p5, 0x2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->getTextWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v11

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->getHeight()I

    move-result v3

    sub-int v3, p4, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_ProvinceValue$3;->getTextHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v11

    div-float/2addr v5, v4

    float-to-int v4, v5

    sub-int/2addr v3, v4

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method
