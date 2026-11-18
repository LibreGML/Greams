.class Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;
.super Lage/of/civilizations2/jakowski/lukasz/Text;
.source "Text_Economy_SliderDesc_Research.java"


# static fields
.field protected static final TEXT2_SCALE:F = 0.65f

.field protected static final TEXT3_SCALE:F = 0.65f


# instance fields
.field private colorSpendings:Lcom/badlogic/gdx/graphics/Color;

.field private fResearchPerc:F

.field private iText2Width:I

.field private iText_CurrentProgressWidth:I

.field private iText_ProgressWidth:I

.field private iText_SpendingsWidth:I

.field private sText2:Ljava/lang/String;

.field private sText_CurrentProgress:Ljava/lang/String;

.field private sText_Progress:Ljava/lang/String;

.field private sText_ProgressPerc:Ljava/lang/String;

.field private sText_Spendings:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 7

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Text;-><init>(Ljava/lang/String;IIIII)V

    const-string p2, ""

    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->sText_Spendings:Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->iText_SpendingsWidth:I

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->colorSpendings:Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->sText2:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 8

    move-object v7, p0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    move-object v0, p0

    move-object v1, p5

    move v3, p6

    move v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Text;-><init>(Ljava/lang/String;IIIII)V

    const-string v0, ""

    iput-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->sText_Spendings:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->iText_SpendingsWidth:I

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->colorSpendings:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getResearchProgress()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/TechnologyManager;->getResearch_NextLevel(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->fResearchPerc:F

    move-object v0, p1

    iput-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->sText2:Ljava/lang/String;

    move-object v0, p3

    iput-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->sText_Progress:Ljava/lang/String;

    move-object v0, p4

    iput-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->sText_ProgressPerc:Ljava/lang/String;

    move-object v0, p2

    iput-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->sText_CurrentProgress:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, v7, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->sText2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    const v1, 0x3f266666    # 0.65f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->iText2Width:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, v7, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->sText_Progress:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->iText_ProgressWidth:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, v7, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->sText_CurrentProgress:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, v7, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->iText_CurrentProgressWidth:I

    return-void
.end method

.method private final getImageScale(FI)F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->iTextHeight:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 10

    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v3, 0x3e19999a    # 0.15f

    invoke-direct {p5, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosX()I

    move-result p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p5, v1

    add-int v2, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosY()I

    move-result p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p5, v1

    add-int v3, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getWidth()I

    move-result p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v4, p5, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x0

    const v1, 0x3f0ccccd    # 0.55f

    invoke-direct {p5, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosX()I

    move-result p5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p5, v2

    add-int v3, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosY()I

    move-result p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getHeight()I

    move-result v2

    add-int/2addr p5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr p5, v2

    add-int v4, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getWidth()I

    move-result p5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v5, p5, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getHeight()I

    move-result p5

    mul-int/lit8 p5, p5, 0x2

    div-int/lit8 v6, p5, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosX()I

    move-result p5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p5, v2

    add-int v3, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosY()I

    move-result p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getHeight()I

    move-result v2

    add-int/2addr p5, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x5

    sub-int/2addr p5, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr p5, v2

    add-int v4, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getWidth()I

    move-result p5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v5, p5, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getHeight()I

    move-result p5

    mul-int/lit8 p5, p5, 0x2

    div-int/lit8 v6, p5, 0x5

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e8ccccd    # 0.275f

    invoke-direct {p5, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosX()I

    move-result p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p5, v1

    add-int v2, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosY()I

    move-result p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p5, v1

    add-int v3, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getWidth()I

    move-result p5

    div-int/lit8 v4, p5, 0x4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosX()I

    move-result p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p5, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getWidth()I

    move-result v1

    add-int/2addr p5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p5, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr p5, v1

    add-int v2, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosY()I

    move-result p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p5, v1

    add-int v3, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getWidth()I

    move-result p5

    div-int/lit8 v4, p5, 0x4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v3, 0x3f266666    # 0.65f

    invoke-direct {p5, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosX()I

    move-result p5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p5, v0

    add-int v6, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosY()I

    move-result p5

    add-int/lit8 p5, p5, 0x1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int/2addr p5, v0

    add-int v7, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getWidth()I

    move-result p5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int v8, p5, v0

    const/4 v9, 0x1

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosX()I

    move-result p5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p5, v0

    add-int v6, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosY()I

    move-result p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getHeight()I

    move-result v0

    add-int/2addr p5, v0

    add-int/lit8 p5, p5, -0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int/2addr p5, v0

    add-int v7, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getWidth()I

    move-result p5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int v8, p5, v0

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f733333    # 0.95f

    invoke-direct {p5, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->patt:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosX()I

    move-result p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p5, v1

    add-int v6, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosY()I

    move-result p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->patt:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p5, v1

    add-int v7, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getWidth()I

    move-result p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p5, v1

    int-to-float p5, p5

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->fResearchPerc:F

    mul-float p5, p5, v1

    float-to-int v8, p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getHeight()I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f333333    # 0.7f

    invoke-direct {p5, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BudgetCore;->budgetInt(Lage/of/civilizations2/jakowski/lukasz/Civilization;)I
    move-result v2

    invoke-virtual {p5, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getResearchSpendings(II)F

    move-result p5

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/TechnologyManager;->getResearch_NextLevel(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p5, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->fResearchPerc:F

    add-float v2, v1, p5

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    sub-float p5, v0, v1

    :cond_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->patt:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->fResearchPerc:F

    mul-float v2, v2, v5

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int v6, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosY()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->patt:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v7, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getWidth()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p5

    float-to-int v8, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getHeight()I

    move-result v9

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosX()I

    move-result p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p5, v1

    add-int v6, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosY()I

    move-result p5

    add-int/lit8 p5, p5, -0x1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p5, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    invoke-direct {p0, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getImageScale(FI)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p5, v1

    add-int v7, p5, p3

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p5

    int-to-float p5, p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    invoke-direct {p0, v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getImageScale(FI)F

    move-result v1

    mul-float p5, p5, v1

    float-to-int v8, p5

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    int-to-float p5, p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    invoke-direct {p0, v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getImageScale(FI)F

    move-result v1

    mul-float p5, p5, v1

    float-to-int v9, p5

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosX()I

    move-result p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getWidth()I

    move-result v1

    add-int/2addr p5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-direct {p0, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getImageScale(FI)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int/2addr p5, v1

    add-int v6, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosY()I

    move-result p5

    add-int/lit8 p5, p5, -0x1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p5, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-direct {p0, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getImageScale(FI)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p5, v1

    add-int v7, p5, p3

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p5

    int-to-float p5, p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-direct {p0, v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getImageScale(FI)F

    move-result v1

    mul-float p5, p5, v1

    float-to-int v8, p5

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    int-to-float p5, p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-direct {p0, v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getImageScale(FI)F

    move-result v1

    mul-float p5, p5, v1

    float-to-int v9, p5

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p5

    invoke-virtual {p5, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->sText2:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    invoke-direct {p0, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getImageScale(FI)F

    move-result v4

    mul-float v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->iTextHeight:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v2, v4

    add-int/2addr v2, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p4

    invoke-static {p1, p5, v1, v2, p4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->sText_CurrentProgress:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosX()I

    move-result p5

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->iText2Width:I

    add-int/2addr p5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr p5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    invoke-direct {p0, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getImageScale(FI)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr p5, v1

    add-int/2addr p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->iTextHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    sub-float/2addr v2, v4

    div-float/2addr v2, v5

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p4, p5, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->sText_Spendings:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosX()I

    move-result p5

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->iText2Width:I

    add-int/2addr p5, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->iText_CurrentProgressWidth:I

    add-int/2addr p5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr p5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    invoke-direct {p0, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getImageScale(FI)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr p5, v1

    add-int/2addr p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->iTextHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    sub-float/2addr v2, v4

    div-float/2addr v2, v5

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->colorSpendings:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p4, p5, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->sText_Progress:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosX()I

    move-result p5

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->iText2Width:I

    add-int/2addr p5, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->iText_SpendingsWidth:I

    add-int/2addr p5, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->iText_CurrentProgressWidth:I

    add-int/2addr p5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr p5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    invoke-direct {p0, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getImageScale(FI)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr p5, v1

    add-int/2addr p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->iTextHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    sub-float/2addr v2, v4

    div-float/2addr v2, v5

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p4, p5, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getText()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosX()I

    move-result p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getWidth()I

    move-result v1

    add-int/2addr p5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr p5, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getTextWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v3

    float-to-int v1, v1

    sub-int/2addr p5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-direct {p0, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getImageScale(FI)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int/2addr p5, v1

    add-int/2addr p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->iTextHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    sub-float/2addr v2, v4

    div-float/2addr v2, v5

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p4, p5, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p4

    invoke-virtual {p4, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->sText_ProgressPerc:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosX()I

    move-result p5

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->iText2Width:I

    add-int/2addr p5, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->iText_SpendingsWidth:I

    add-int/2addr p5, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->iText_CurrentProgressWidth:I

    add-int/2addr p5, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->iText_ProgressWidth:I

    add-int/2addr p5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr p5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->research:I

    invoke-direct {p0, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getImageScale(FI)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr p5, v1

    add-int/2addr p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->iTextHeight:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    float-to-int v1, v1

    add-int/2addr p2, v1

    add-int/2addr p2, p3

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p4, p5, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method

.method protected setMin(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->sText_Spendings:Ljava/lang/String;

    if-gtz p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->colorSpendings:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_RESEARCH:Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->colorSpendings:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->sText_Spendings:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    const v0, 0x3f266666    # 0.65f

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_SliderDesc_Research;->iText_SpendingsWidth:I

    return-void
.end method
