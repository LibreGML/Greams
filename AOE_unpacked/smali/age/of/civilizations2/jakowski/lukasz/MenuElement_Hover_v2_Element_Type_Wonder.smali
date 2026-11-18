.class public Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;
.super Ljava/lang/Object;
.source "MenuElement_Hover_v2_Element_Type_Wonder.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type;


# instance fields
.field private iProvinceID:I

.field private iWonderID:I

.field private offsetLeft:I

.field private offsetRight:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->iProvinceID:I

    const/4 p1, 0x0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->offsetLeft:I

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->offsetRight:I

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->iProvinceID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->offsetLeft:I

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->offsetRight:I

    return-void
.end method

.method protected constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->iProvinceID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->iWonderID:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->offsetLeft:I

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->offsetRight:I

    return-void
.end method

.method private final getImageScale()F
    .locals 4

    const/high16 v0, 0x3f400000    # 0.75f

    :try_start_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->iWonderID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWonder(I)Lage/of/civilizations2/jakowski/lukasz/Wonder;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Wonder;->nImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :catch_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    return v1

    :catch_1
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    return v1
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .locals 6

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->iProvinceID:I

    invoke-virtual {p4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p4

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->iWonderID:I

    invoke-virtual {p4, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWonder(I)Lage/of/civilizations2/jakowski/lukasz/Wonder;

    move-result-object p4

    iget-object v0, p4, Lage/of/civilizations2/jakowski/lukasz/Wonder;->nImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->offsetLeft:I

    add-int v2, p2, p4

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p3, p2

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->iProvinceID:I

    invoke-virtual {p2, p4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p2

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->iWonderID:I

    invoke-virtual {p2, p4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWonder(I)Lage/of/civilizations2/jakowski/lukasz/Wonder;

    move-result-object p2

    iget-object p2, p2, Lage/of/civilizations2/jakowski/lukasz/Wonder;->nImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p2

    sub-int/2addr p3, p2

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->iProvinceID:I

    invoke-virtual {p2, p4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p2

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->iWonderID:I

    invoke-virtual {p2, p4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWonder(I)Lage/of/civilizations2/jakowski/lukasz/Wonder;

    move-result-object p2

    iget-object p2, p2, Lage/of/civilizations2/jakowski/lukasz/Wonder;->nImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->getImageScale()F

    move-result p4

    mul-float p2, p2, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    float-to-int p2, p2

    sub-int v3, p3, p2

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget p3, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->iProvinceID:I

    invoke-virtual {p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p2

    iget p3, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->iWonderID:I

    invoke-virtual {p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWonder(I)Lage/of/civilizations2/jakowski/lukasz/Wonder;

    move-result-object p2

    iget-object p2, p2, Lage/of/civilizations2/jakowski/lukasz/Wonder;->nImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->getImageScale()F

    move-result p3

    mul-float p2, p2, p3

    float-to-int v4, p2

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget p3, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->iProvinceID:I

    invoke-virtual {p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p2

    iget p3, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->iWonderID:I

    invoke-virtual {p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWonder(I)Lage/of/civilizations2/jakowski/lukasz/Wonder;

    move-result-object p2

    iget-object p2, p2, Lage/of/civilizations2/jakowski/lukasz/Wonder;->nImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->getImageScale()F

    move-result p3

    mul-float p2, p2, p3

    float-to-int v5, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getWidth()I
    .locals 3

    :try_start_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->offsetLeft:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->offsetRight:I

    add-int/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->iProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->iWonderID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWonder(I)Lage/of/civilizations2/jakowski/lukasz/Wonder;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Wonder;->nImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->getImageScale()F

    move-result v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    mul-float v1, v1, v2

    float-to-int v1, v1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :catch_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->offsetLeft:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->offsetRight:I

    goto :goto_0

    :catch_1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->offsetLeft:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Wonder;->offsetRight:I

    goto :goto_0
.end method
