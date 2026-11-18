.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_InGame_Uncolonized.java"


# static fields
.field protected static final FONT_SCALE:F = 0.8f

.field protected static final FONT_SCALE2:F = 0.7f


# instance fields
.field private iUncolonizedWidth:I

.field private isRequiredTechWidth:I

.field private isRequiredTechWidth2:I

.field private sRequiredTech:Ljava/lang/String;

.field private sRequiredTech2:Ljava/lang/String;

.field private sUncolonized:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 8

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;-><init>(IIIIZ)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "UncolonizedProvince"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->sUncolonized:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->sUncolonized:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    const v1, 0x3f333333    # 0.7f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->iUncolonizedWidth:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "RequiredTechnologyLevel"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->sRequiredTech:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->sRequiredTech:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->isRequiredTechWidth:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->COLONIZATION_TECH_LEVEL:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->sRequiredTech2:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->sRequiredTech2:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->isRequiredTechWidth2:I

    return-void
.end method

.method private final getHeight2()I
    .locals 2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
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

.method private final getPosX2()I
    .locals 2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getWidth2()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method private final getPosY2()I
    .locals 2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getHeight2()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private final getWidth2()I
    .locals 4

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->iUncolonizedWidth:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->isRequiredTechWidth:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->isRequiredTechWidth2:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getImageScale(I)F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 10

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v3, 0x3f59999a    # 0.85f

    invoke-direct {p4, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosX2()I

    move-result p4

    add-int v2, p4, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosY2()I

    move-result p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    add-int v3, p4, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getWidth2()I

    move-result v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getHeight2()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {p4, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosX2()I

    move-result p4

    add-int v6, p4, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosY2()I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int/2addr p4, v0

    add-int v7, p4, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getWidth2()I

    move-result v8

    const/4 v9, 0x1

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosX2()I

    move-result p4

    add-int v6, p4, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosY2()I

    move-result p4

    add-int/lit8 p4, p4, -0x2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getHeight2()I

    move-result v0

    add-int/2addr p4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int/2addr p4, v0

    add-int v7, p4, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getWidth2()I

    move-result v8

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x0

    const v1, 0x3f266666    # 0.65f

    invoke-direct {p4, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosX2()I

    move-result p4

    add-int v6, p4, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosY2()I

    move-result p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    add-int v7, p4, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getWidth2()I

    move-result v8

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosX2()I

    move-result p4

    add-int v6, p4, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosY2()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getHeight2()I

    move-result v1

    add-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    add-int v7, p4, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getWidth2()I

    move-result v8

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {p4, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosX2()I

    move-result p4

    add-int v6, p4, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosY2()I

    move-result p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    add-int v7, p4, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getWidth2()I

    move-result v8

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p4, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosX2()I

    move-result p4

    add-int v6, p4, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosY2()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int/2addr p4, v0

    add-int v7, p4, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getWidth2()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosX2()I

    move-result p4

    add-int v6, p4, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosY2()I

    move-result p4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    add-int/2addr p4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int/2addr p4, v0

    add-int v7, p4, p3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getWidth2()I

    move-result v8

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p4, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosX2()I

    move-result p4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getWidth2()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p4, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->isRequiredTechWidth:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->isRequiredTechWidth2:I

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-direct {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getImageScale(I)F

    move-result v5

    mul-float v2, v2, v5

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p4, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->isRequiredTechWidth:I

    add-int/2addr p4, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->isRequiredTechWidth2:I

    add-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p4, v1

    add-int v6, p4, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosY2()I

    move-result p4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getHeight2()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getImageScale(I)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    add-int v7, p4, p3

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p4

    int-to-float p4, p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getImageScale(I)F

    move-result v1

    mul-float p4, p4, v1

    float-to-int v8, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    int-to-float p4, p4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getImageScale(I)F

    move-result v1

    mul-float p4, p4, v1

    float-to-int v9, p4

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p4

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {p4, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->sUncolonized:Ljava/lang/String;

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosX2()I

    move-result v2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getWidth2()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->iUncolonizedWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int/2addr v2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosY2()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v1

    sub-float/2addr v5, v6

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v5, v1

    float-to-int v5, v5

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, p4, v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p4

    invoke-virtual {p4, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->sRequiredTech:Ljava/lang/String;

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosX2()I

    move-result v2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getWidth2()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->isRequiredTechWidth:I

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->isRequiredTechWidth2:I

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-direct {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getImageScale(I)F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int/2addr v2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosY2()I

    move-result v4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getHeight2()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    sub-float/2addr v5, v6

    div-float/2addr v5, v1

    float-to-int v5, v5

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v9, v9, v0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, p4, v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->sRequiredTech2:Ljava/lang/String;

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosX2()I

    move-result v2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getWidth2()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->isRequiredTechWidth:I

    add-int/2addr v2, v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->isRequiredTechWidth2:I

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    invoke-direct {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getImageScale(I)F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int/2addr v2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getPosY2()I

    move-result p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Uncolonized;->getHeight2()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr p2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    sub-float/2addr v4, v5

    div-float/2addr v4, v1

    float-to-int v1, v4

    add-int/2addr p2, v1

    add-int/2addr p2, p3

    new-instance p3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE2:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE2:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v5, v5, v0

    invoke-direct {p3, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, p4, v2, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method
