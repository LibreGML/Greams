.class Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;
.super Lage/of/civilizations2/jakowski/lukasz/Editor;
.source "Editor_ProvinceTexture.java"


# instance fields
.field private button:I

.field private iBrushScale:I

.field private theDoubleMode:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Editor;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->iBrushScale:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->theDoubleMode:Z

    return-void
.end method

.method private final dragged(IIIZ)V
    .locals 16

    move/from16 v0, p1

    if-ltz v0, :cond_a

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "data/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "scales/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "provinces/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v1

    const/4 v2, 0x0

    move/from16 v8, p2

    int-to-float v8, v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v9

    div-float/2addr v8, v9

    float-to-int v8, v8

    move/from16 v9, p3

    int-to-float v9, v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v10

    div-float/2addr v9, v10

    float-to-int v9, v9

    const/4 v10, 0x0

    move-object v11, v2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v12

    if-ge v2, v12, :cond_8

    move-object v12, v11

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v13

    if-ge v11, v13, :cond_7

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosX()I

    move-result v13

    sub-int v13, v8, v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getSecondSideOfMap()Z

    move-result v14

    if-eqz v14, :cond_0

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v14

    goto :goto_2

    :cond_0
    const/4 v14, 0x0

    :goto_2
    sub-int/2addr v13, v14

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinX()I

    move-result v14

    sub-int/2addr v13, v14

    if-ne v11, v13, :cond_6

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v13

    sub-int v13, v9, v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Province;->getMinY()I

    move-result v14

    sub-int/2addr v13, v14

    if-ne v2, v13, :cond_6

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz p4, :cond_1

    sget-object v13, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v13

    invoke-static {v13}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v13

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v12, v12, v12, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v13, v11, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(II)V

    move/from16 p2, v8

    move-object v12, v13

    goto :goto_5

    :cond_1
    new-instance v13, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v14, Lcom/badlogic/gdx/graphics/Pixmap$Format;->LuminanceAlpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v15, 0x1

    invoke-direct {v13, v15, v15, v14}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v12, v12, v12, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v13, v10, v10}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(II)V

    new-instance v14, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v15

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v10

    sget-object v12, Lcom/badlogic/gdx/graphics/Pixmap$Format;->LuminanceAlpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v14, v15, v10, v12}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    new-instance v10, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v10, v12, v12, v12, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v14, v10}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v14}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v12

    if-ge v10, v12, :cond_5

    const/4 v12, 0x0

    :goto_4
    invoke-virtual {v14}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v15

    if-ge v12, v15, :cond_4

    move/from16 p2, v8

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v15}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v8

    invoke-virtual {v1, v12, v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v15

    if-ne v8, v15, :cond_3

    if-ne v12, v11, :cond_2

    if-eq v10, v2, :cond_3

    :cond_2
    invoke-virtual {v14, v12, v10}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(II)V

    :cond_3
    add-int/lit8 v12, v12, 0x1

    move/from16 v8, p2

    goto :goto_4

    :cond_4
    move/from16 p2, v8

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    move/from16 p2, v8

    move-object v12, v14

    goto :goto_5

    :cond_6
    move/from16 p2, v8

    :goto_5
    add-int/lit8 v11, v11, 0x1

    move/from16 v8, p2

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_7
    move/from16 p2, v8

    add-int/lit8 v2, v2, 0x1

    move-object v11, v12

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_8
    if-nez v11, :cond_9

    return-void

    :cond_9
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->setBG(Lcom/badlogic/gdx/graphics/Pixmap;)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/badlogic/gdx/graphics/PixmapIO;->writeCIM(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    :cond_a
    return-void
.end method


# virtual methods
.method protected keyDown(I)V
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v2, 0x13

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->theDoubleMode:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->theDoubleMode:Z

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    if-eq v1, v3, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    :cond_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x43

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    const/4 v3, -0x1

    if-nez v1, :cond_1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v4, 0x42

    invoke-interface {v1, v4}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    :cond_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v4, 0x2c

    invoke-interface {v1, v4}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    if-nez v1, :cond_3

    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    goto :goto_0

    :cond_3
    sput v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    :cond_4
    :goto_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x15

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->iBrushScale:I

    sub-int/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->iBrushScale:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->iBrushScale:I

    if-ge v1, v2, :cond_6

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->iBrushScale:I

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x16

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->iBrushScale:I

    add-int/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->iBrushScale:I

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->iBrushScale:I

    const/4 v3, 0x3

    if-le v1, v3, :cond_6

    iput v3, v0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->iBrushScale:I

    :cond_6
    :goto_1
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x3e

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    :cond_7
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x29

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    if-eqz v1, :cond_8

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    :cond_8
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x14

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    if-eq v1, v3, :cond_9

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    :cond_9
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x2e

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    if-ltz v1, :cond_a

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->buildProvinceBG(Z)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->loadProvinceBG()V

    :cond_a
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x31

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    if-ltz v1, :cond_e

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    if-ltz v1, :cond_e

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v3

    if-nez v3, :cond_e

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "map/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "data/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "scales/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "provinces/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapDefaultScale(I)I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-static {v3}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-static {v5}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v5

    new-instance v11, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v12, Lcom/badlogic/gdx/graphics/Pixmap$Format;->LuminanceAlpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v11, v2, v2, v12}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v2, v12, v12, v12, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v11, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v11, v4, v4}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(II)V

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v13

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    sget-object v14, Lcom/badlogic/gdx/graphics/Pixmap$Format;->LuminanceAlpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v2, v13, v5, v14}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v12, v12, v12, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v12

    if-ge v5, v12, :cond_d

    const/4 v12, 0x0

    :goto_3
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v13

    if-ge v12, v13, :cond_c

    invoke-virtual {v11, v4, v4}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v13

    int-to-float v14, v12

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v4

    invoke-virtual {v15, v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapDefaultScale(I)I

    move-result v4

    int-to-float v4, v4

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v4, v15

    mul-float v14, v14, v4

    float-to-int v4, v14

    int-to-float v14, v5

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v0

    invoke-virtual {v15, v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapDefaultScale(I)I

    move-result v0

    int-to-float v0, v0

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v0, v15

    mul-float v14, v14, v0

    float-to-int v0, v14

    invoke-virtual {v3, v4, v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v0

    if-ne v13, v0, :cond_b

    invoke-virtual {v2, v12, v5}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(II)V

    :cond_b
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    goto :goto_3

    :cond_c
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    goto :goto_2

    :cond_d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setBG(Lcom/badlogic/gdx/graphics/Pixmap;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMapScale()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/badlogic/gdx/graphics/PixmapIO;->writeCIM(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    :cond_e
    return-void
.end method

.method protected setInUse(Z)V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->theDoubleMode:Z

    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->iBrushScale:I

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Editor;->setInUse(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTIVE PROVINCE ID 1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->theDoubleMode:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID 2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nBRUSH SCALE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->iBrushScale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nSPACE -> SET ACTIVE PROVINCE 1\nDOWN -> SET ACTIVE PROVINCE 2\nBACKSPACE -> RESET ACTIVE PROVINCES\nP -> PAUSE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    if-gez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nUP -> DOUBLE MODE\nLEFT, RIGHT -> BRUSH SCALE\n\nR -> REBUILD BACKGROUND\nU -> REBUILD BG BASED ON DEFAULT SCALE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected touchDown(IIII)V
    .locals 3

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 p3, p3, 0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    const/4 v0, 0x0

    if-gt p1, p3, :cond_0

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr p3, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p3, v1

    if-ge p2, p3, :cond_1

    :cond_0
    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    if-gez p3, :cond_2

    :cond_1
    const/4 p1, -0x1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setDisableMovingMap(Z)V

    return-void

    :cond_2
    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    const/4 v1, 0x1

    if-ltz p3, :cond_3

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    if-nez p3, :cond_3

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p3

    invoke-virtual {p3, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setDisableMovingMap(Z)V

    :cond_3
    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    iget-boolean p3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->theDoubleMode:Z

    if-eqz p3, :cond_6

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    if-ne p4, v1, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, p3, p1, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    if-eq p4, v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-direct {p0, p3, p1, p2, v0}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    goto :goto_1

    :cond_6
    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    if-ne p4, v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    invoke-direct {p0, p3, p1, p2, v0}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    :goto_1
    return-void
.end method

.method protected touchDragged(III)V
    .locals 7

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    const/4 v0, 0x2

    mul-int/lit8 p3, p3, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p3, v1

    const/4 v1, 0x0

    if-gt p1, p3, :cond_0

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr p3, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr p3, v2

    if-ge p2, p3, :cond_1

    :cond_0
    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    if-gez p3, :cond_2

    :cond_1
    const/4 p1, -0x1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_CUSTOMIZE_ALLIANCE_ID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p1

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setDisableMovingMap(Z)V

    return-void

    :cond_2
    iget-boolean p3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->theDoubleMode:Z

    const/4 v2, 0x3

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-eqz p3, :cond_46

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    invoke-direct {p0, p3, p1, p2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v6, v5, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    invoke-direct {p0, p3, p1, p2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    iget p3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->iBrushScale:I

    if-ne p3, v0, :cond_15

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v3, v5, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-direct {p0, p3, v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p2, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    invoke-direct {p0, p3, p1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v3, v5, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    invoke-direct {p0, p3, v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_8

    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    invoke-direct {p0, p3, v0, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_9

    const/4 v2, 0x1

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    :goto_6
    invoke-direct {p0, p3, v0, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v3, v5, :cond_a

    const/4 v3, 0x1

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :goto_7
    invoke-direct {p0, p3, v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_b

    const/4 v2, 0x1

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    :goto_8
    invoke-direct {p0, p3, p1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v3, v5, :cond_c

    const/4 v3, 0x1

    goto :goto_9

    :cond_c
    const/4 v3, 0x0

    :goto_9
    invoke-direct {p0, p3, v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v3, v5, :cond_d

    const/4 v3, 0x1

    goto :goto_a

    :cond_d
    const/4 v3, 0x0

    :goto_a
    invoke-direct {p0, p3, v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p2, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v2, v5, :cond_e

    const/4 v2, 0x1

    goto :goto_b

    :cond_e
    const/4 v2, 0x0

    :goto_b
    invoke-direct {p0, p3, p1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v3, v5, :cond_f

    const/4 v3, 0x1

    goto :goto_c

    :cond_f
    const/4 v3, 0x0

    :goto_c
    invoke-direct {p0, p3, v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v2, v5, :cond_10

    const/4 v2, 0x1

    goto :goto_d

    :cond_10
    const/4 v2, 0x0

    :goto_d
    invoke-direct {p0, p3, v0, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v2, v5, :cond_11

    const/4 v2, 0x1

    goto :goto_e

    :cond_11
    const/4 v2, 0x0

    :goto_e
    invoke-direct {p0, p3, v0, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v3, v5, :cond_12

    const/4 v3, 0x1

    goto :goto_f

    :cond_12
    const/4 v3, 0x0

    :goto_f
    invoke-direct {p0, p3, v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v2, v5, :cond_13

    const/4 v2, 0x1

    goto :goto_10

    :cond_13
    const/4 v2, 0x0

    :goto_10
    invoke-direct {p0, p3, p1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr p1, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr p2, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v0, v5, :cond_14

    const/4 v1, 0x1

    :cond_14
    invoke-direct {p0, p3, p1, p2, v1}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    goto/16 :goto_5f

    :cond_15
    if-ne p3, v2, :cond_69

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_16

    const/4 v6, 0x1

    goto :goto_11

    :cond_16
    const/4 v6, 0x0

    :goto_11
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_17

    const/4 v6, 0x1

    goto :goto_12

    :cond_17
    const/4 v6, 0x0

    :goto_12
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sub-int v0, p2, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_18

    const/4 v2, 0x1

    goto :goto_13

    :cond_18
    const/4 v2, 0x0

    :goto_13
    invoke-direct {p0, p3, p1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_19

    const/4 v6, 0x1

    goto :goto_14

    :cond_19
    const/4 v6, 0x0

    :goto_14
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_1a

    const/4 v6, 0x1

    goto :goto_15

    :cond_1a
    const/4 v6, 0x0

    :goto_15
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_1b

    const/4 v6, 0x1

    goto :goto_16

    :cond_1b
    const/4 v6, 0x0

    :goto_16
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_1c

    const/4 v6, 0x1

    goto :goto_17

    :cond_1c
    const/4 v6, 0x0

    :goto_17
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p2, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_1d

    const/4 v2, 0x1

    goto :goto_18

    :cond_1d
    const/4 v2, 0x0

    :goto_18
    invoke-direct {p0, p3, p1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_1e

    const/4 v6, 0x1

    goto :goto_19

    :cond_1e
    const/4 v6, 0x0

    :goto_19
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_1f

    const/4 v6, 0x1

    goto :goto_1a

    :cond_1f
    const/4 v6, 0x0

    :goto_1a
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_20

    const/4 v2, 0x1

    goto :goto_1b

    :cond_20
    const/4 v2, 0x0

    :goto_1b
    invoke-direct {p0, p3, v0, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_21

    const/4 v2, 0x1

    goto :goto_1c

    :cond_21
    const/4 v2, 0x0

    :goto_1c
    invoke-direct {p0, p3, v0, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_22

    const/4 v2, 0x1

    goto :goto_1d

    :cond_22
    const/4 v2, 0x0

    :goto_1d
    invoke-direct {p0, p3, v0, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    add-int/2addr v0, p1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_23

    const/4 v2, 0x1

    goto :goto_1e

    :cond_23
    const/4 v2, 0x0

    :goto_1e
    invoke-direct {p0, p3, v0, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_24

    const/4 v6, 0x1

    goto :goto_1f

    :cond_24
    const/4 v6, 0x0

    :goto_1f
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_25

    const/4 v6, 0x1

    goto :goto_20

    :cond_25
    const/4 v6, 0x0

    :goto_20
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_26

    const/4 v2, 0x1

    goto :goto_21

    :cond_26
    const/4 v2, 0x0

    :goto_21
    invoke-direct {p0, p3, p1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_27

    const/4 v6, 0x1

    goto :goto_22

    :cond_27
    const/4 v6, 0x0

    :goto_22
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_28

    const/4 v6, 0x1

    goto :goto_23

    :cond_28
    const/4 v6, 0x0

    :goto_23
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_29

    const/4 v6, 0x1

    goto :goto_24

    :cond_29
    const/4 v6, 0x0

    :goto_24
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_2a

    const/4 v6, 0x1

    goto :goto_25

    :cond_2a
    const/4 v6, 0x0

    :goto_25
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    add-int/2addr v0, p2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_2b

    const/4 v2, 0x1

    goto :goto_26

    :cond_2b
    const/4 v2, 0x0

    :goto_26
    invoke-direct {p0, p3, p1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_2c

    const/4 v6, 0x1

    goto :goto_27

    :cond_2c
    const/4 v6, 0x0

    :goto_27
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_2d

    const/4 v6, 0x1

    goto :goto_28

    :cond_2d
    const/4 v6, 0x0

    :goto_28
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v6, v5, :cond_2e

    const/4 v6, 0x1

    goto :goto_29

    :cond_2e
    const/4 v6, 0x0

    :goto_29
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v6, v5, :cond_2f

    const/4 v6, 0x1

    goto :goto_2a

    :cond_2f
    const/4 v6, 0x0

    :goto_2a
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sub-int v0, p2, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v2, v5, :cond_30

    const/4 v2, 0x1

    goto :goto_2b

    :cond_30
    const/4 v2, 0x0

    :goto_2b
    invoke-direct {p0, p3, p1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v6, v5, :cond_31

    const/4 v6, 0x1

    goto :goto_2c

    :cond_31
    const/4 v6, 0x0

    :goto_2c
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v6, v5, :cond_32

    const/4 v6, 0x1

    goto :goto_2d

    :cond_32
    const/4 v6, 0x0

    :goto_2d
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v6, v5, :cond_33

    const/4 v6, 0x1

    goto :goto_2e

    :cond_33
    const/4 v6, 0x0

    :goto_2e
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v6, v5, :cond_34

    const/4 v6, 0x1

    goto :goto_2f

    :cond_34
    const/4 v6, 0x0

    :goto_2f
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p2, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v2, v5, :cond_35

    const/4 v2, 0x1

    goto :goto_30

    :cond_35
    const/4 v2, 0x0

    :goto_30
    invoke-direct {p0, p3, p1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v6, v5, :cond_36

    const/4 v6, 0x1

    goto :goto_31

    :cond_36
    const/4 v6, 0x0

    :goto_31
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v6, v5, :cond_37

    const/4 v6, 0x1

    goto :goto_32

    :cond_37
    const/4 v6, 0x0

    :goto_32
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v2, v5, :cond_38

    const/4 v2, 0x1

    goto :goto_33

    :cond_38
    const/4 v2, 0x0

    :goto_33
    invoke-direct {p0, p3, v0, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v2, v5, :cond_39

    const/4 v2, 0x1

    goto :goto_34

    :cond_39
    const/4 v2, 0x0

    :goto_34
    invoke-direct {p0, p3, v0, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v2, v5, :cond_3a

    const/4 v2, 0x1

    goto :goto_35

    :cond_3a
    const/4 v2, 0x0

    :goto_35
    invoke-direct {p0, p3, v0, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    add-int/2addr v0, p1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v2, v5, :cond_3b

    const/4 v2, 0x1

    goto :goto_36

    :cond_3b
    const/4 v2, 0x0

    :goto_36
    invoke-direct {p0, p3, v0, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v6, v5, :cond_3c

    const/4 v6, 0x1

    goto :goto_37

    :cond_3c
    const/4 v6, 0x0

    :goto_37
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v6, v5, :cond_3d

    const/4 v6, 0x1

    goto :goto_38

    :cond_3d
    const/4 v6, 0x0

    :goto_38
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v2, v5, :cond_3e

    const/4 v2, 0x1

    goto :goto_39

    :cond_3e
    const/4 v2, 0x0

    :goto_39
    invoke-direct {p0, p3, p1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v6, v5, :cond_3f

    const/4 v6, 0x1

    goto :goto_3a

    :cond_3f
    const/4 v6, 0x0

    :goto_3a
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v6, v5, :cond_40

    const/4 v6, 0x1

    goto :goto_3b

    :cond_40
    const/4 v6, 0x0

    :goto_3b
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v6, v5, :cond_41

    const/4 v6, 0x1

    goto :goto_3c

    :cond_41
    const/4 v6, 0x0

    :goto_3c
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v6, v5, :cond_42

    const/4 v6, 0x1

    goto :goto_3d

    :cond_42
    const/4 v6, 0x0

    :goto_3d
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    add-int/2addr v0, p2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v2, v5, :cond_43

    const/4 v2, 0x1

    goto :goto_3e

    :cond_43
    const/4 v2, 0x0

    :goto_3e
    invoke-direct {p0, p3, p1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v4, v5, :cond_44

    const/4 v4, 0x1

    goto :goto_3f

    :cond_44
    const/4 v4, 0x0

    :goto_3f
    invoke-direct {p0, p3, v0, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV2:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    add-int/2addr p1, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    add-int/2addr p2, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-eq v0, v5, :cond_45

    const/4 v1, 0x1

    :cond_45
    invoke-direct {p0, p3, p1, p2, v1}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    goto/16 :goto_5f

    :cond_46
    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_47

    const/4 v6, 0x1

    goto :goto_40

    :cond_47
    const/4 v6, 0x0

    :goto_40
    invoke-direct {p0, p3, p1, p2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    iget p3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->iBrushScale:I

    if-ne p3, v0, :cond_50

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v3, v5, :cond_48

    const/4 v3, 0x1

    goto :goto_41

    :cond_48
    const/4 v3, 0x0

    :goto_41
    invoke-direct {p0, p3, v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p2, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_49

    const/4 v2, 0x1

    goto :goto_42

    :cond_49
    const/4 v2, 0x0

    :goto_42
    invoke-direct {p0, p3, p1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v3, v5, :cond_4a

    const/4 v3, 0x1

    goto :goto_43

    :cond_4a
    const/4 v3, 0x0

    :goto_43
    invoke-direct {p0, p3, v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_4b

    const/4 v2, 0x1

    goto :goto_44

    :cond_4b
    const/4 v2, 0x0

    :goto_44
    invoke-direct {p0, p3, v0, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_4c

    const/4 v2, 0x1

    goto :goto_45

    :cond_4c
    const/4 v2, 0x0

    :goto_45
    invoke-direct {p0, p3, v0, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v3, v5, :cond_4d

    const/4 v3, 0x1

    goto :goto_46

    :cond_4d
    const/4 v3, 0x0

    :goto_46
    invoke-direct {p0, p3, v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_4e

    const/4 v2, 0x1

    goto :goto_47

    :cond_4e
    const/4 v2, 0x0

    :goto_47
    invoke-direct {p0, p3, p1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr p1, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr p2, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v0, v5, :cond_4f

    const/4 v1, 0x1

    :cond_4f
    invoke-direct {p0, p3, p1, p2, v1}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    goto/16 :goto_5f

    :cond_50
    if-ne p3, v2, :cond_69

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_51

    const/4 v6, 0x1

    goto :goto_48

    :cond_51
    const/4 v6, 0x0

    :goto_48
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_52

    const/4 v6, 0x1

    goto :goto_49

    :cond_52
    const/4 v6, 0x0

    :goto_49
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sub-int v0, p2, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_53

    const/4 v2, 0x1

    goto :goto_4a

    :cond_53
    const/4 v2, 0x0

    :goto_4a
    invoke-direct {p0, p3, p1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_54

    const/4 v6, 0x1

    goto :goto_4b

    :cond_54
    const/4 v6, 0x0

    :goto_4b
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_55

    const/4 v6, 0x1

    goto :goto_4c

    :cond_55
    const/4 v6, 0x0

    :goto_4c
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_56

    const/4 v6, 0x1

    goto :goto_4d

    :cond_56
    const/4 v6, 0x0

    :goto_4d
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_57

    const/4 v6, 0x1

    goto :goto_4e

    :cond_57
    const/4 v6, 0x0

    :goto_4e
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p2, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_58

    const/4 v2, 0x1

    goto :goto_4f

    :cond_58
    const/4 v2, 0x0

    :goto_4f
    invoke-direct {p0, p3, p1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_59

    const/4 v6, 0x1

    goto :goto_50

    :cond_59
    const/4 v6, 0x0

    :goto_50
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    sub-int v2, p2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_5a

    const/4 v6, 0x1

    goto :goto_51

    :cond_5a
    const/4 v6, 0x0

    :goto_51
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_5b

    const/4 v2, 0x1

    goto :goto_52

    :cond_5b
    const/4 v2, 0x0

    :goto_52
    invoke-direct {p0, p3, v0, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_5c

    const/4 v2, 0x1

    goto :goto_53

    :cond_5c
    const/4 v2, 0x0

    :goto_53
    invoke-direct {p0, p3, v0, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_5d

    const/4 v2, 0x1

    goto :goto_54

    :cond_5d
    const/4 v2, 0x0

    :goto_54
    invoke-direct {p0, p3, v0, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    add-int/2addr v0, p1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_5e

    const/4 v2, 0x1

    goto :goto_55

    :cond_5e
    const/4 v2, 0x0

    :goto_55
    invoke-direct {p0, p3, v0, p2, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_5f

    const/4 v6, 0x1

    goto :goto_56

    :cond_5f
    const/4 v6, 0x0

    :goto_56
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_60

    const/4 v6, 0x1

    goto :goto_57

    :cond_60
    const/4 v6, 0x0

    :goto_57
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_61

    const/4 v2, 0x1

    goto :goto_58

    :cond_61
    const/4 v2, 0x0

    :goto_58
    invoke-direct {p0, p3, p1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_62

    const/4 v6, 0x1

    goto :goto_59

    :cond_62
    const/4 v6, 0x0

    :goto_59
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_63

    const/4 v6, 0x1

    goto :goto_5a

    :cond_63
    const/4 v6, 0x0

    :goto_5a
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_64

    const/4 v6, 0x1

    goto :goto_5b

    :cond_64
    const/4 v6, 0x0

    :goto_5b
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    sub-int v0, p1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v6, v5, :cond_65

    const/4 v6, 0x1

    goto :goto_5c

    :cond_65
    const/4 v6, 0x0

    :goto_5c
    invoke-direct {p0, p3, v0, v2, v6}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    add-int/2addr v0, p2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v2, v5, :cond_66

    const/4 v2, 0x1

    goto :goto_5d

    :cond_66
    const/4 v2, 0x0

    :goto_5d
    invoke-direct {p0, p3, p1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    add-int/2addr v0, p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v4, v5, :cond_67

    const/4 v4, 0x1

    goto :goto_5e

    :cond_67
    const/4 v4, 0x0

    :goto_5e
    invoke-direct {p0, p3, v0, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->MANAGE_DIPLOMACY_ADD_NEW_PACT_CIV1:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    add-int/2addr p1, v0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    add-int/2addr p2, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->button:I

    if-ne v0, v5, :cond_68

    const/4 v1, 0x1

    :cond_68
    invoke-direct {p0, p3, p1, p2, v1}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;->dragged(IIIZ)V

    :cond_69
    :goto_5f
    return-void
.end method

.method protected touchUp(IIII)V
    .locals 0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setDisableMovingMap(Z)V

    return-void
.end method
