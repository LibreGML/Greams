.class Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;
.super Ljava/lang/Object;
.source "MenuElement_Hover_v2_Element_Type_Color.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type;


# instance fields
.field private oColor:Lcom/badlogic/gdx/graphics/Color;

.field private offsetLeft:I

.field private offsetRight:I


# direct methods
.method protected constructor <init>(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;->offsetLeft:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;->offsetRight:I

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;->oColor:Lcom/badlogic/gdx/graphics/Color;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;->offsetLeft:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;->offsetRight:I

    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/Color;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;->offsetLeft:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;->offsetRight:I

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;->oColor:Lcom/badlogic/gdx/graphics/Color;

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;->offsetLeft:I

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;->offsetRight:I

    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/Color;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;->offsetLeft:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;->offsetRight:I

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;->oColor:Lcom/badlogic/gdx/graphics/Color;

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;->offsetLeft:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;->offsetRight:I

    return-void
.end method

.method private final getImageScale()F
    .locals 2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .locals 6

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;->oColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;->oColor:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;->oColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v1, v2, v3, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;->offsetLeft:I

    add-int v2, p2, p4

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p3, p2

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p2

    sub-int/2addr p3, p2

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float p2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;->getImageScale()F

    move-result p4

    mul-float p2, p2, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    float-to-int p2, p2

    sub-int v3, p3, p2

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float p2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;->getImageScale()F

    move-result p3

    mul-float p2, p2, p3

    float-to-int v5, p2

    const/4 v4, 0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public getWidth()I
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;->offsetRight:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Color;->offsetLeft:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    return v0
.end method
