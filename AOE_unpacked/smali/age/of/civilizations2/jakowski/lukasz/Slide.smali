.class Lage/of/civilizations2/jakowski/lukasz/Slide;
.super Lage/of/civilizations2/jakowski/lukasz/MenuElement;
.source "Slide.java"


# direct methods
.method protected constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;-><init>()V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Slide;->setPosX(I)V

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Slide;->setPosY(I)V

    sget p1, Lage/of/civilizations2/jakowski/lukasz/Images;->slide_bg:I

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Slide;->setWidth(I)V

    sget p1, Lage/of/civilizations2/jakowski/lukasz/Images;->slide_bg:I

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Slide;->setHeight(I)V

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Slide;->setVisible(Z)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;->SLIDE:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Slide;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 6

    if-eqz p4, :cond_0

    const p4, 0x3f59999a    # 0.85f

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-virtual {p1, p5, p5, p5, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    :cond_0
    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->slide_bg:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slide;->getPosX()I

    move-result p5

    add-int/2addr p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slide;->getPosY()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p4, p1, p5, v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->slide_bg:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slide;->getPosX()I

    move-result p5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slide_bg:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    add-int/2addr p5, v0

    add-int/2addr p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slide;->getPosY()I

    move-result v0

    add-int/2addr v0, p3

    const/4 v1, 0x1

    invoke-virtual {p4, p1, p5, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->slide_bg:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slide;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slide;->getPosY()I

    move-result p4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->slide_bg:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    add-int/2addr p4, p5

    add-int v3, p4, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->slide_bg:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slide;->getPosX()I

    move-result p4

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->slide_bg:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p5

    add-int/2addr p4, p5

    add-int v2, p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slide;->getPosY()I

    move-result p2

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->slide_bg:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    add-int/2addr p2, p4

    add-int v3, p2, p3

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
