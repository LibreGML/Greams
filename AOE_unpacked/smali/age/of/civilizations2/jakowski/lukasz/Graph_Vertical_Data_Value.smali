.class Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;
.super Ljava/lang/Object;
.source "Graph_Vertical_Data_Value.java"


# static fields
.field protected static final ALPHA:F = 0.35f

.field protected static final ALPHA_GRADIENT:F = 0.7f

.field protected static final ALPHA_GRADIENT2:F = 0.2f

.field protected static final COLOR_VALUE_BORDER:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field protected iColorDataID:I

.field protected iHeight:I

.field private iValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f666666    # 0.9f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->COLOR_VALUE_BORDER:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->iColorDataID:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->iValue:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->iColorDataID:I

    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILcom/badlogic/gdx/graphics/Color;)V
    .locals 8

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3eb33333    # 0.35f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sub-int/2addr p3, p5

    sub-int/2addr p3, p6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    iget v0, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget p7, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v2, 0x3f333333    # 0.7f

    invoke-direct {p5, v0, v1, p7, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    sub-int v3, p3, p5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    move v2, p2

    move v4, p4

    move v5, p6

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V
    .locals 8

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v1, p6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p6, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3eb33333    # 0.35f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sub-int/2addr p3, p5

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->iHeight:I

    sub-int v4, p3, v6

    move-object v2, p1

    move v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    iget v0, p6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget p6, p6, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v2, 0x3f333333    # 0.7f

    invoke-direct {p5, v0, v1, p6, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->iHeight:I

    sub-int/2addr p3, p5

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    sub-int v3, p3, p5

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->iHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    move v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    return-void
.end method

.method protected final getDataTypeID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->iColorDataID:I

    return v0
.end method

.method protected final getHeight()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->iHeight:I

    return v0
.end method

.method protected final getValue()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->iValue:I

    return v0
.end method

.method protected final setHeight(I)V
    .locals 1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->iHeight:I

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->iHeight:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_Vertical_Data_Value;->iHeight:I

    :cond_0
    return-void
.end method
