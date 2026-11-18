.class Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Stats;
.source "Button_Stats_Image_Population.java"


# static fields
.field private static final NUM_OF_FLAGS:I = 0x2


# instance fields
.field private iProvinceID:I

.field private lSorted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;FIIIIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats;-><init>(Ljava/lang/String;FIIIIZZ)V

    const/4 p1, 0x0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->iProvinceID:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->lSorted:Ljava/util/List;

    return-void
.end method

.method private final getImageScale()F
    .locals 2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 15

    move-object v0, p0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->population:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getTextPos()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->economy:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->population:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v8, 0x2

    div-int/2addr v3, v8

    add-int/2addr v1, v3

    add-int v4, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getHeight()I

    move-result v3

    div-int/2addr v3, v8

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->population:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->population:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    div-int/2addr v3, v8

    sub-int/2addr v1, v3

    add-int v5, v1, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->population:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v6

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->population:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v7

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->FONT_SCALE:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getTextToDraw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getTextPos()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->economy:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getHeight()I

    move-result v4

    div-int/2addr v4, v8

    add-int/2addr v3, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->iTextHeight:I

    div-int/2addr v4, v8

    sub-int/2addr v3, v4

    add-int v3, v3, p3

    move/from16 v4, p4

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-static {v5, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    :try_start_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v8, :cond_1

    :goto_0
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->lSorted:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v2, v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->iProvinceID:I

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->lSorted:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->iProvinceID:I

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->lSorted:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v9

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getTextPos()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->economy:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int v1, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getTextWidth()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v6, v2, 0x1

    mul-int v4, v4, v6

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v4, v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getImageScale()F

    move-result v6

    mul-float v4, v4, v6

    float-to-int v4, v4

    mul-int v4, v4, v2

    add-int v11, v1, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getPosY()I

    move-result v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v7, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->iProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v6

    iget-object v7, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->lSorted:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getHeight()I

    move-result v4

    div-int/2addr v4, v8

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v4, v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getImageScale()F

    move-result v6

    mul-float v4, v4, v6

    div-float/2addr v4, v3

    float-to-int v4, v4

    sub-int/2addr v1, v4

    add-int v12, v1, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getImageScale()F

    move-result v4

    mul-float v1, v1, v4

    float-to-int v13, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getImageScale()F

    move-result v4

    mul-float v1, v1, v4

    float-to-int v14, v1

    move-object/from16 v10, p1

    invoke-virtual/range {v9 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_1

    :cond_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v9

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getTextPos()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->economy:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int v1, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getTextWidth()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v6, v2, 0x1

    mul-int v4, v4, v6

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v4, v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getImageScale()F

    move-result v6

    mul-float v4, v4, v6

    float-to-int v4, v4

    mul-int v4, v4, v2

    add-int v11, v1, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getPosY()I

    move-result v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getHeight()I

    move-result v4

    div-int/2addr v4, v8

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v4, v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getImageScale()F

    move-result v6

    mul-float v4, v4, v6

    div-float/2addr v4, v3

    float-to-int v4, v4

    sub-int/2addr v1, v4

    add-int v12, v1, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getImageScale()F

    move-result v4

    mul-float v1, v1, v4

    float-to-int v13, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getImageScale()F

    move-result v4

    mul-float v1, v1, v4

    float-to-int v14, v1

    move-object/from16 v10, p1

    invoke-virtual/range {v9 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_1
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v9

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getTextPos()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->economy:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int v1, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getTextWidth()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v6, v2, 0x1

    mul-int v4, v4, v6

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v4, v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getImageScale()F

    move-result v7

    mul-float v4, v4, v7

    float-to-int v4, v4

    mul-int v4, v4, v2

    add-int v11, v1, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getPosY()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getHeight()I

    move-result v2

    div-int/2addr v2, v8

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getImageScale()F

    move-result v4

    mul-float v2, v2, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    add-int v12, v1, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getImageScale()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v13, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getImageScale()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v14, v1

    move-object/from16 v10, p1

    invoke-virtual/range {v9 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    move v2, v6

    goto/16 :goto_0

    :cond_1
    :goto_2
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->lSorted:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v2, v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->iProvinceID:I

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->lSorted:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v9

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getTextPos()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->economy:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int v1, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getTextWidth()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v6, v2, 0x1

    mul-int v4, v4, v6

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v4, v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getImageScale()F

    move-result v7

    mul-float v4, v4, v7

    float-to-int v4, v4

    mul-int v4, v4, v2

    add-int v11, v1, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getPosY()I

    move-result v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v10, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->iProvinceID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v7

    iget-object v10, v0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->lSorted:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getHeight()I

    move-result v4

    div-int/2addr v4, v8

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v4, v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getImageScale()F

    move-result v7

    mul-float v4, v4, v7

    div-float/2addr v4, v3

    float-to-int v4, v4

    sub-int/2addr v1, v4

    add-int v12, v1, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getImageScale()F

    move-result v4

    mul-float v1, v1, v4

    float-to-int v13, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getImageScale()F

    move-result v4

    mul-float v1, v1, v4

    float-to-int v14, v1

    move-object/from16 v10, p1

    invoke-virtual/range {v9 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v9

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getTextPos()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->economy:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int v1, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getTextWidth()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v4, v4, v6

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v4, v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getImageScale()F

    move-result v7

    mul-float v4, v4, v7

    float-to-int v4, v4

    mul-int v4, v4, v2

    add-int v11, v1, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getPosY()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getHeight()I

    move-result v2

    div-int/2addr v2, v8

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v2, v2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getImageScale()F

    move-result v4

    mul-float v2, v2, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    add-int v12, v1, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getImageScale()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v13, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getImageScale()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v14, v1

    move-object/from16 v10, p1

    invoke-virtual/range {v9 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v6

    goto/16 :goto_2

    :catch_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getCurrent()I

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->setCurrent(I)V

    :cond_2
    return-void
.end method

.method protected getCurrent()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->iProvinceID:I

    return v0
.end method

.method protected setCurrent(I)V
    .locals 6

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->iProvinceID:I

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->lSorted:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNationalitiesSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->iProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v4

    if-ge v3, v4, :cond_1

    move v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->lSorted:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->sText:Ljava/lang/String;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->iMinWidth:I

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->setWidth(I)V

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->FONT_SCALE:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->iTextWidth:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->FONT_SCALE:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->iTextHeight:I

    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats;->getWidth()I

    move-result p1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->iTextWidth:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->economy:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getImageScale()F

    move-result v3

    mul-float v1, v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->lSorted:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int v1, v1, v3

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->iTextWidth:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->economy:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    add-int/2addr p1, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v0, v0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->getImageScale()F

    move-result v1

    mul-float v0, v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->lSorted:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int v0, v0, v1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button_Stats_Image_Population;->setWidth(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
