.class Lage/of/civilizations2/jakowski/lukasz/Image;
.super Ljava/lang/Object;
.source "Image.java"


# instance fields
.field private iHeight:I

.field private iWidth:I

.field private texture:Lcom/badlogic/gdx/graphics/Texture;


# direct methods
.method protected constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    return-void
.end method


# virtual methods
.method protected final dispose()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v13, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    move v6, v13

    iget v14, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    move v7, v14

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget v13, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    move v6, v13

    iget v4, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    move v14, v4

    move v7, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v8, p4

    move/from16 v9, p4

    iget v13, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    move v6, v13

    iget v4, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    move v14, v4

    move v7, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move-object/from16 v15, p0

    iget v4, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    move v14, v4

    move v7, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p4

    move/from16 v7, p5

    add-int v3, p3, p5

    iget v13, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    iget v14, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v10, p6

    move/from16 v4, p5

    neg-int v7, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v4, p5

    neg-int v7, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFIZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v15, p8

    move/from16 v4, p5

    neg-int v7, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move/from16 v3, p2

    int-to-float v3, v3

    move/from16 v4, p3

    neg-int v4, v4

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move/from16 v5, p4

    int-to-float v5, v5

    move/from16 v6, p5

    int-to-float v6, v6

    move/from16 v7, p6

    int-to-float v7, v7

    move/from16 v8, p7

    int-to-float v8, v8

    invoke-virtual/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V
    .locals 18

    move-object/from16 v12, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v15, p6

    move/from16 v16, p7

    add-int v3, p3, p5

    iget v13, v12, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    iget v14, v12, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move/from16 v12, v17

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v16, p5

    move-object/from16 v15, p0

    iget v4, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    move v14, v4

    move v7, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    move/from16 v15, v17

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIZZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move-object/from16 v12, p0

    iget v4, v12, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    move v14, v4

    move v7, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move/from16 v12, v17

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 17

    move-object/from16 v12, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v15, p4

    iget v13, v12, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    move v6, v13

    iget v4, v12, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    move v14, v4

    move v7, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    move/from16 v12, v16

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 18

    move-object/from16 v12, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v15, p4

    move/from16 v16, p5

    iget v13, v12, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    move v6, v13

    iget v14, v12, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    move v7, v14

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move/from16 v12, v17

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method protected final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v7, p5

    move/from16 v14, p5

    add-int v3, p3, p5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method protected final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v7, p5

    move/from16 v14, p5

    move/from16 v11, p6

    move/from16 v12, p7

    add-int v3, p3, p5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method protected final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v7, p5

    move/from16 v14, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v10, p8

    add-int v3, p3, p5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method protected final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v7, p5

    move/from16 v14, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v10, p8

    move/from16 v15, p9

    move/from16 v16, p10

    add-int v3, p3, p5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method protected final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v7, p5

    move/from16 v14, p5

    move/from16 v15, p6

    add-int v3, p3, p5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method protected final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v7, p5

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    add-int v3, p3, p5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method protected final draw3(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p4

    move/from16 v7, p5

    add-int v3, p3, p5

    iget v13, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    iget v14, v15, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-virtual/range {v0 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method protected final getHeight()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    return v0
.end method

.method protected final getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method protected final getWidth()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    return v0
.end method

.method protected final init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .locals 1

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p2, p4, p5}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result p2

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->iWidth:I

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->iHeight:I

    return-void
.end method

.method protected final setTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    return-void
.end method
