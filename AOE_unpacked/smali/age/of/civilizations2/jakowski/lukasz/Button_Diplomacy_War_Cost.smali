.class Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_War_Cost;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_War;
.source "Button_Diplomacy_War_Cost.java"


# instance fields
.field private iDiploCostWidth:I

.field private sDiploCost:Ljava/lang/String;


# direct methods
.method protected constructor <init>(IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_War;-><init>(IIIII)V

    const/4 p1, 0x0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_War_Cost;->iDiploCostWidth:I

    const-string p1, "2.4"

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_War_Cost;->sDiploCost:Ljava/lang/String;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object p3, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_War_Cost;->sDiploCost:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    const p2, 0x3f333333    # 0.7f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_War_Cost;->iDiploCostWidth:I

    return-void
.end method

.method private final getImageScale(I)F
    .locals 2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float v1, v0, p1

    :cond_0
    return v1
.end method


# virtual methods
.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_War;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p4

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p4, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_War_Cost;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_War_Cost;->getWidth()I

    move-result v2

    add-int/2addr p4, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr p4, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_War_Cost;->getImageScale(I)F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr p4, v2

    add-int v3, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_War_Cost;->getPosY()I

    move-result p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_War_Cost;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p4, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-direct {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_War_Cost;->getImageScale(I)F

    move-result v4

    mul-float v2, v2, v4

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p4, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr p4, v2

    add-int v4, p4, p3

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p4

    int-to-float p4, p4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_War_Cost;->getImageScale(I)F

    move-result v2

    mul-float p4, p4, v2

    float-to-int v5, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    int-to-float p4, p4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_War_Cost;->getImageScale(I)F

    move-result v2

    mul-float p4, p4, v2

    float-to-int v6, p4

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_War_Cost;->sDiploCost:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_War_Cost;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_War_Cost;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_War_Cost;->iDiploCostWidth:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_diplomacy_points:I

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_War_Cost;->getImageScale(I)F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_War_Cost;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_War_Cost;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    float-to-int v0, v2

    sub-int/2addr p2, v0

    add-int/2addr p2, p3

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v0

    invoke-virtual {p3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p3

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiplomacyPoints()I

    move-result p3

    const/16 v0, 0x14

    if-lt p3, v0, :cond_0

    sget-object p3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE2:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    invoke-static {p1, p4, v1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method
