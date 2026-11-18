.class Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;
.super Lage/of/civilizations2/jakowski/lukasz/Text;
.source "Text_FlagActionStats.java"


# static fields
.field protected static final TEXT_SCALE:F = 0.7f


# instance fields
.field private iS2Width:I

.field private oColor2:Lcom/badlogic/gdx/graphics/Color;

.field private s2:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Text;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->iS2Width:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;->TEXT:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->setPosX(I)V

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->setPosY(I)V

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 p3, p3, 0x4

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->setHeight(I)V

    const-string p2, ""

    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->s2:Ljava/lang/String;

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->oColor2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->setText(Ljava/lang/String;)V

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats$1;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Text$TextPosition;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;II)V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Text;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->iS2Width:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;->TEXT:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->setPosX(I)V

    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->setPosY(I)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 p5, p5, 0x4

    add-int/2addr p4, p5

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->setHeight(I)V

    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->s2:Ljava/lang/String;

    iput-object p3, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->oColor2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->setText(Ljava/lang/String;)V

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats$2;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Text$TextPosition;

    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 8

    if-nez p4, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getIsHovered()Z

    move-result p5

    if-eqz p5, :cond_1

    :cond_0
    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v3, 0x3ec00000    # 0.375f

    invoke-direct {p5, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getPosX()I

    move-result p5

    add-int v2, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getPosY()I

    move-result p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p5, v1

    add-int v3, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3f266666    # 0.65f

    const/4 v1, 0x0

    invoke-direct {p5, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getPosX()I

    move-result p5

    add-int v2, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getPosY()I

    move-result p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p5, v1

    add-int v3, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getWidth()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getPosX()I

    move-result p5

    add-int v2, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getPosY()I

    move-result p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getHeight()I

    move-result v1

    add-int/2addr p5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p5, v1

    add-int v3, p5, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getWidth()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object p5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p5

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p5, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getTextPos()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getHeight()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->iTextHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p4

    invoke-static {p1, p5, v0, v1, p4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->s2:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getPosX()I

    move-result p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getTextPos()I

    move-result v0

    add-int/2addr p5, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->iTextWidth:I

    add-int/2addr p5, v0

    add-int/2addr p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getHeight()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->iTextHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    add-int/2addr p2, p3

    iget-object p3, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->oColor2:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p4, p5, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_NS_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_NS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_NS:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_2
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_MENU_TEXT_NOT_CLICKABLE:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-object p1
.end method

.method protected getWidth()I
    .locals 2

    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Text;->getWidth()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->iS2Width:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->sText:Ljava/lang/String;

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->s2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    const v1, 0x3f333333    # 0.7f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->iS2Width:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v2, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    mul-float p1, p1, v1

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->iTextWidth:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    mul-float p1, p1, v1

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->iTextHeight:I

    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Text;->getWidth()I

    move-result p1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->iTextWidth:I

    if-ge p1, v0, :cond_0

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->iTextWidth:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->setWidth(I)V

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->getHeight()I

    move-result p1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->iTextHeight:I

    if-ge p1, v0, :cond_1

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->iTextHeight:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Text_FlagActionStats;->setHeight(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
