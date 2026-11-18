.class public Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Icon;
.super Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide;
.source "Text_LeftSide_Icon.java"


# instance fields
.field private iImageID:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide;-><init>(Ljava/lang/String;II)V

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Icon;->iImageID:I

    return-void
.end method

.method private final getImageScale(I)F
    .locals 2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Icon;->getHeight()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Icon;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v1, v0, p1

    :cond_0
    return v1
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 7

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Icon;->iImageID:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Icon;->getPosX()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v0, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Icon;->iImageID:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Icon;->iImageID:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Icon;->getImageScale(I)F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Icon;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Icon;->getHeight()I

    move-result v2

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Icon;->iImageID:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Icon;->iImageID:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    invoke-direct {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Icon;->getImageScale(I)F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Icon;->iImageID:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Icon;->iImageID:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Icon;->iImageID:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Icon;->getImageScale(I)F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v5, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Icon;->iImageID:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Icon;->iImageID:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Icon;->getImageScale(I)F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v6, v0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-super/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    return-void
.end method

.method public bridge synthetic setText(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide;->setText(Ljava/lang/String;)V

    return-void
.end method
