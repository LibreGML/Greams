.class Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;
.super Ljava/lang/Object;
.source "MenuElement_Hover_v2_Element_Type_Terrain.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type;


# instance fields
.field private iTerrainID:I

.field private offsetLeft:I

.field private offsetRight:I


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->offsetLeft:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->offsetRight:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->iTerrainID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->offsetLeft:I

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->offsetRight:I

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->offsetLeft:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->offsetRight:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->iTerrainID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->offsetLeft:I

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->offsetRight:I

    return-void
.end method

.method protected constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->offsetLeft:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->offsetRight:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->iTerrainID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->offsetLeft:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->offsetRight:I

    return-void
.end method

.method private final getImageScale()F
    .locals 3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->iTerrainID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getIcon(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .locals 8

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->iTerrainID:I

    invoke-virtual {p4, v0}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getIcon(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->offsetLeft:I

    add-int v3, p2, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p4, p3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->iTerrainID:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getIcon(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int/2addr p4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->iTerrainID:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getIcon(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->getImageScale()F

    move-result v2

    mul-float v0, v0, v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v0, v7

    float-to-int v0, v0

    sub-int v4, p4, v0

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->iTerrainID:I

    invoke-virtual {p4, v0}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getIcon(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->getImageScale()F

    move-result v0

    mul-float p4, p4, v0

    float-to-int v5, p4

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->iTerrainID:I

    invoke-virtual {p4, v0}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getIcon(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p4

    int-to-float p4, p4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->getImageScale()F

    move-result v0

    mul-float p4, p4, v0

    float-to-int v6, p4

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->offsetLeft:I

    add-int v2, p2, p4

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p3, p2

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p2

    sub-int/2addr p3, p2

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->iTerrainID:I

    invoke-virtual {p2, p4}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getIcon(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->getImageScale()F

    move-result p4

    mul-float p2, p2, p4

    div-float/2addr p2, v7

    float-to-int p2, p2

    sub-int v3, p3, p2

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    iget p3, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->iTerrainID:I

    invoke-virtual {p2, p3}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getIcon(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->getImageScale()F

    move-result p3

    mul-float p2, p2, p3

    float-to-int v4, p2

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    iget p3, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->iTerrainID:I

    invoke-virtual {p2, p3}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getIcon(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->getImageScale()F

    move-result p3

    mul-float p2, p2, p3

    float-to-int v5, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public getWidth()I
    .locals 3

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->offsetRight:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->offsetLeft:I

    add-int/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->iTerrainID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getIcon(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Terrain;->getImageScale()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method
