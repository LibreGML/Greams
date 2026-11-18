.class Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;
.super Ljava/lang/Object;
.source "SliderMenuTitle.java"


# instance fields
.field private iHeight:I

.field private iTextHeight:I

.field private iTextWidth:I

.field private moveable:Z

.field private resizable:Z

.field private sText:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;IZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->iTextWidth:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->iTextHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->moveable:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->resizable:Z

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setText(Ljava/lang/String;)V

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->iHeight:I

    iput-boolean p3, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->moveable:Z

    iput-boolean p4, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->resizable:Z

    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .locals 9

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->title_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    add-int v0, p3, p5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->title_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->title_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v0, p4, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->iHeight:I

    sub-int v4, v0, v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->title_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->iHeight:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->title_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    add-int v3, p3, p2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->title_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v0, p4, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->iHeight:I

    sub-int v4, v0, v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->title_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    sub-int v5, p5, v0

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->iHeight:I

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-virtual/range {p0 .. p6}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .locals 2

    iget-object p6, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->sText:Ljava/lang/String;

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p3, p5

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->iTextWidth:I

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p3, p5

    add-int/2addr p3, p2

    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->iHeight:I

    sub-int/2addr p4, p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p4, p2

    iget p2, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->iTextHeight:I

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p4, p2

    new-instance p2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 p5, 0x3f800000    # 1.0f

    const v0, 0x3f6dedee

    const v1, 0x3f7efeff

    invoke-direct {p2, v0, v1, p5, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, p6, p3, p4, p2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final getHeight()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->iHeight:I

    return v0
.end method

.method protected final getMoveable()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->moveable:Z

    return v0
.end method

.method protected final getResizable()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->resizable:Z

    return v0
.end method

.method protected final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->sText:Ljava/lang/String;

    return-object v0
.end method

.method protected final getTextHeight()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->iTextHeight:I

    return v0
.end method

.method protected final getTextWidth()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->iTextWidth:I

    return v0
.end method

.method protected final setText(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->sText:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setTextWidth(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->getTextWidth()I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setTextWidth(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setTextHeight(I)V

    :cond_0
    return-void
.end method

.method protected final setTextHeight(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->iTextHeight:I

    return-void
.end method

.method protected final setTextWidth(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->iTextWidth:I

    return-void
.end method
