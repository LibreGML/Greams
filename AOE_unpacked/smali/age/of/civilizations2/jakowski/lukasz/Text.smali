.class Lage/of/civilizations2/jakowski/lukasz/Text;
.super Lage/of/civilizations2/jakowski/lukasz/MenuElement;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Text$TextPosition;
    }
.end annotation


# instance fields
.field protected iTextHeight:I

.field protected iTextPositionX:I

.field protected iTextWidth:I

.field protected sText:Ljava/lang/String;

.field protected textPosition:Lage/of/civilizations2/jakowski/lukasz/Text$TextPosition;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->sText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->iTextWidth:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->iTextHeight:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->sText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->iTextWidth:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->iTextHeight:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;->TEXT:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Text;->setPosX(I)V

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Text;->setPosY(I)V

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Text;->setHeight(I)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Text;->setText(Ljava/lang/String;)V

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Text$1;

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Text$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Text;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Text$TextPosition;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIII)V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->sText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->iTextWidth:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->iTextHeight:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;->TEXT:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->iTextPositionX:I

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Text;->setPosX(I)V

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Text;->setPosY(I)V

    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/Text;->setHeight(I)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Text;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text;->updateTextPosition()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIIII)V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->sText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->iTextWidth:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->iTextHeight:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;->TEXT:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->iTextPositionX:I

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Text;->setPosX(I)V

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Text;->setPosY(I)V

    invoke-virtual {p0, p5}, Lage/of/civilizations2/jakowski/lukasz/Text;->setWidth(I)V

    invoke-virtual {p0, p6}, Lage/of/civilizations2/jakowski/lukasz/Text;->setHeight(I)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Text;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text;->updateTextPosition()V

    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 3

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text;->getPosX()I

    move-result v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Text$TextPosition;

    invoke-interface {v1}, Lage/of/civilizations2/jakowski/lukasz/Text$TextPosition;->getTextPosition()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text;->getHeight()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    add-int/2addr p2, p3

    invoke-virtual {p0, p4}, Lage/of/civilizations2/jakowski/lukasz/Text;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-static {p1, p5, v0, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f0f5c29    # 0.56f

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f2e147b    # 0.68f

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f51eb85    # 0.82f

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3f333333    # 0.7f

    const v1, 0x3f47ae14    # 0.78f

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    :goto_0
    return-object p1
.end method

.method protected final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->sText:Ljava/lang/String;

    return-object v0
.end method

.method protected getTextHeight()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->iTextHeight:I

    return v0
.end method

.method protected getTextWidth()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->iTextWidth:I

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->sText:Ljava/lang/String;

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->iTextWidth:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->iTextHeight:I

    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result p1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->iTextWidth:I

    if-ge p1, v0, :cond_0

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->iTextWidth:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Text;->setWidth(I)V

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text;->getHeight()I

    move-result p1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->iTextHeight:I

    if-ge p1, v0, :cond_1

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->iTextHeight:I

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Text;->setHeight(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

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

    goto :goto_0

    :catch_2
    move-exception p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateTextPosition()V
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->iTextPositionX:I

    if-gez v0, :cond_0

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Text$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Text$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Text;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Text$TextPosition;

    goto :goto_0

    :cond_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Text$3;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Text$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Text;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text;->textPosition:Lage/of/civilizations2/jakowski/lukasz/Text$TextPosition;

    :goto_0
    return-void
.end method
