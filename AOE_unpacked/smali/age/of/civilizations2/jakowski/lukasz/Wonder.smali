.class Lage/of/civilizations2/jakowski/lukasz/Wonder;
.super Ljava/lang/Object;
.source "Wonder.java"


# instance fields
.field protected iPosX:I

.field protected iPosY:I

.field protected iSinceYear:I

.field protected iUntilYear:I

.field protected isAvailable:Z

.field protected nImage:Lage/of/civilizations2/jakowski/lukasz/Image;

.field protected sName:Ljava/lang/String;

.field protected sWiki:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V
    .locals 2

    const-string v0, "UI/pix.png"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Wonder;->sName:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Wonder;->isAvailable:Z

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Wonder;->sName:Ljava/lang/String;

    iput p5, p0, Lage/of/civilizations2/jakowski/lukasz/Wonder;->iSinceYear:I

    iput p6, p0, Lage/of/civilizations2/jakowski/lukasz/Wonder;->iUntilYear:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Wonder;->iPosX:I

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Wonder;->iPosY:I

    iput-object p7, p0, Lage/of/civilizations2/jakowski/lukasz/Wonder;->sWiki:Ljava/lang/String;

    :try_start_0
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance p3, Lcom/badlogic/gdx/graphics/Texture;

    sget-object p4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "map/"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "wonders/"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "images/"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p2

    invoke-direct {p3, p2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {p1, p3, p2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Wonder;->nImage:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance p2, Lcom/badlogic/gdx/graphics/Texture;

    sget-object p3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {p3, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object p3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Wonder;->nImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    goto :goto_0

    :catch_1
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance p2, Lcom/badlogic/gdx/graphics/Texture;

    sget-object p3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {p3, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object p3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Wonder;->nImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    goto :goto_0

    :catch_2
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance p2, Lcom/badlogic/gdx/graphics/Texture;

    sget-object p3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {p3, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object p3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Wonder;->nImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    :goto_0
    return-void
.end method


# virtual methods
.method protected final dispose()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Wonder;->nImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Wonder;->nImage:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V
    .locals 6

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f59999a    # 0.85f

    invoke-direct {v4, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->mount:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Wonder;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFLcom/badlogic/gdx/graphics/Color;I)V

    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFI)V
    .locals 6

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f59999a    # 0.85f

    invoke-direct {v4, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Wonder;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFLcom/badlogic/gdx/graphics/Color;I)V

    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFLcom/badlogic/gdx/graphics/Color;)V
    .locals 6

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->mount:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Wonder;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFLcom/badlogic/gdx/graphics/Color;I)V

    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFLcom/badlogic/gdx/graphics/Color;I)V
    .locals 1

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Wonder;->nImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Wonder;->iPosX:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v0

    mul-int p5, p5, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTranslateProvincePosX()I

    move-result p2

    add-int/2addr p5, p2

    int-to-float p2, p5

    mul-float p2, p2, p3

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Wonder;->nImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    int-to-float p5, p5

    sub-float/2addr p2, p5

    float-to-int p2, p2

    iget p5, p0, Lage/of/civilizations2/jakowski/lukasz/Wonder;->iPosY:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v0

    mul-int p5, p5, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v0

    add-int/2addr p5, v0

    int-to-float p5, p5

    mul-float p5, p5, p3

    float-to-int p3, p5

    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Wonder;->nImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p3, p5

    invoke-virtual {p4, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method
