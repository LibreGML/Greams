.class Lage/of/civilizations2/jakowski/lukasz/Text_Army;
.super Lage/of/civilizations2/jakowski/lukasz/Text;
.source "Text_Army.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Text;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Text;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Text;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lage/of/civilizations2/jakowski/lukasz/Text;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 3

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Army;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Army;->getPosX()I

    move-result v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Army;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Text$TextPosition;

    invoke-interface {v1}, Lage/of/civilizations2/jakowski/lukasz/Text$TextPosition;->getTextPosition()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Army;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Army;->getHeight()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Army;->iTextHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    add-int/2addr p2, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Text_Army;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-static {p1, p5, v0, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawArmyText_WithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Army;->sText:Ljava/lang/String;

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontArmy:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Army;->iTextWidth:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Army;->iTextHeight:I

    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Text;->getWidth()I

    move-result p1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Army;->iTextWidth:I

    if-ge p1, v0, :cond_0

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Army;->iTextWidth:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Text_Army;->setWidth(I)V

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_Army;->getHeight()I

    move-result p1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Army;->iTextHeight:I

    if-ge p1, v0, :cond_1

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text_Army;->iTextHeight:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Text_Army;->setHeight(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
