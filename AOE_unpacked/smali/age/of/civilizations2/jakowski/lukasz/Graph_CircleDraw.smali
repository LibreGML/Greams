.class Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;
.super Ljava/lang/Object;
.source "Graph_CircleDraw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;
    }
.end annotation


# instance fields
.field private center:Lcom/badlogic/gdx/math/Vector2;

.field private centerTop:Lcom/badlogic/gdx/math/Vector2;

.field private circleFrame:Lage/of/civilizations2/jakowski/lukasz/Image;

.field private fv:[F

.field private intersectAt:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;

.field private leftBottom:Lcom/badlogic/gdx/math/Vector2;

.field private leftTop:Lcom/badlogic/gdx/math/Vector2;

.field private oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

.field private rightBottom:Lcom/badlogic/gdx/math/Vector2;

.field private rightTop:Lcom/badlogic/gdx/math/Vector2;

.field private texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private textureOver:Lage/of/civilizations2/jakowski/lukasz/Image;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UI/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "graph/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p2

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, p2, v1, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {p1, v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->textureOver:Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance p2, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p3

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {p2, p3, v0, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object p3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->circleFrame:Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-direct {p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;-><init>()V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget-object p3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    invoke-direct {p1, p2, p3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget-object p3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-direct {p1, p2, p3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1, p3, p3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p1, p2, p3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p1, p2, v0}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->rightTop:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p3}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->setPercentage(F)V

    return-void
.end method

.method private final IntersectPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->rightTop:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v1, v2, v3, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;->TOP:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->intersectAt:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;

    return-object v0

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v1, v2, v3, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;->BOTTOM:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->intersectAt:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;

    return-object v0

    :cond_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v1, v2, v3, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;->LEFT:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->intersectAt:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;

    return-object v0

    :cond_2
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->rightTop:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v1, v2, v3, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;->RIGHT:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->intersectAt:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;

    return-object v0

    :cond_3
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;->NONE:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->intersectAt:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;

    const/4 p1, 0x0

    return-object p1
.end method

.method private final convertToRadians(F)F
    .locals 1

    const v0, 0x3c8efa35

    mul-float p1, p1, v0

    return p1
.end method

.method private final drawCircle(IILcom/badlogic/gdx/graphics/Color;)V
    .locals 4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->fv:[F

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/math/EarClippingTriangulator;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;-><init>()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->fv:[F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeTriangles([F)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->fv:[F

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ShortArray;->toArray()[S

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;[F[S)V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setOrigin(FF)V

    int-to-float p1, p1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    int-to-float p2, v2

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setPosition(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setRotation(F)V

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->draw(Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;)V

    return-void
.end method

.method private final drawCircle100(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILcom/badlogic/gdx/graphics/Color;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v13, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    move/from16 v3, p2

    int-to-float v3, v3

    move/from16 v4, p3

    neg-int v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    int-to-float v7, v5

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v5

    int-to-float v8, v5

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v14

    iget-object v5, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v13, v16

    const/16 v17, 0x0

    invoke-virtual/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method private final drawGraph(IILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->begin()V

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;->getPercentage()F

    move-result v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->setPercentage(F)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    const/high16 v2, 0x3f800000    # 1.0f

    :try_start_1
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;->getDataID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;->getDataID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;->getDataID()I

    move-result v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    invoke-direct {v3, v4, v6, v7, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {p0, p1, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->drawCircle(IILcom/badlogic/gdx/graphics/Color;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    :try_start_2
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v6

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {p0, p1, p2, v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->drawCircle(IILcom/badlogic/gdx/graphics/Color;)V

    :goto_1
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;->getPercentage()F

    move-result v2

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->end()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void
.end method


# virtual methods
.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "II",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;",
            ">;Z)V"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    const/4 v3, 0x0

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;->getDataID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v2, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;->getDataID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleData;->getDataID()I

    move-result v3

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-direct {v1, v2, v5, v3, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {p0, p1, p2, p3, v1}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->drawCircle100(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {p0, p1, p2, p3, v1}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->drawCircle100(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-direct {p0, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->drawGraph(IILjava/util/List;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->textureOver:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p4, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    if-eqz p5, :cond_0

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const p5, 0x3eab851f    # 0.335f

    invoke-direct {p4, v0, v0, v0, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->textureOver:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p4, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object p4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_0
    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->circleFrame:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p4, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method protected final getWidth()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->circleFrame:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    return v0
.end method

.method protected final setPercentage(F)V
    .locals 17

    move-object/from16 v0, p0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->convertToRadians(F)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v2, v2, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-direct {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->convertToRadians(F)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v1

    double-to-float v5, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    double-to-float v1, v3

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v3, v1

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v1, v5

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-direct {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->IntersectPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->intersectAt:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;->TOP:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;

    const/16 v4, 0xc

    const/16 v5, 0xb

    const/16 v6, 0x9

    const/16 v7, 0xa

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x2

    if-ne v2, v3, :cond_2

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    const/16 v2, 0xe

    new-array v2, v2, [F

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v15

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v14

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v16

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v13

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v12

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v11

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v10

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v9

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v8

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v6

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->rightTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v7

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->rightTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v5

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v4

    const/16 v3, 0xd

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v1, v2, v3

    iput-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->fv:[F

    goto/16 :goto_1

    :cond_1
    new-array v2, v10, [F

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v15

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v14

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v16

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v13

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v12

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v1, v2, v11

    iput-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->fv:[F

    goto/16 :goto_1

    :cond_2
    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->intersectAt:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;->BOTTOM:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;

    if-ne v2, v3, :cond_3

    new-array v2, v7, [F

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v15

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v14

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v16

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v13

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v12

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v11

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v10

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v9

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v8

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v1, v2, v6

    iput-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->fv:[F

    goto/16 :goto_1

    :cond_3
    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->intersectAt:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;->LEFT:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;

    if-ne v2, v3, :cond_4

    new-array v2, v8, [F

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v15

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v14

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v16

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v13

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v12

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v11

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v10

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v1, v2, v9

    iput-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->fv:[F

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->intersectAt:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;->RIGHT:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw$IntersectAt;

    if-ne v2, v3, :cond_5

    new-array v2, v4, [F

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v15

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v14

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v16

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v13

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v12

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v11

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v10

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v9

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v8

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v6

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v7

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v1, v2, v5

    iput-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->fv:[F

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->fv:[F

    :goto_1
    return-void
.end method
