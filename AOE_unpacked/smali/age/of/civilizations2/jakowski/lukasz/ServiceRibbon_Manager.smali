.class Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;
.super Ljava/lang/Object;
.source "ServiceRibbon_Manager.java"


# instance fields
.field private iSRImagesSize:I

.field private iSROverlayImagesSize:I

.field private iSRSize:I

.field private lSR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;",
            ">;"
        }
    .end annotation
.end field

.field private lSRImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Image;",
            ">;>;"
        }
    .end annotation
.end field

.field private lSROverlayImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Image;",
            ">;"
        }
    .end annotation
.end field

.field private lTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->loadSR()V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->loadSRImages()V

    return-void
.end method

.method private final loadSRImages()V
    .locals 14

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    :goto_1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    if-eqz v0, :cond_3

    :goto_2
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UI/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "sr/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Age_of_Civilizations"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    :goto_3
    array-length v7, v0

    const-string v8, ".png"

    if-ge v6, v7, :cond_5

    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x1

    :goto_4
    const/4 v10, 0x6

    if-ge v9, v10, :cond_4

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v11, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v0, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v10, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "sr_over/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_6

    :try_start_1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v0, v1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v4, v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->iSRImagesSize:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->iSROverlayImagesSize:I

    return-void
.end method


# virtual methods
.method protected check_RequestTurns(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestTurns_Level(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestTurns(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected check_Request_ConquredProvinces(I)Z
    .locals 1

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces_Level(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final drawSR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "III",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSR:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSR:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v6

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/badlogic/gdx/graphics/Color;

    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->drawSROverlay(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;Lcom/badlogic/gdx/graphics/Color;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final drawSR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;Ljava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "II",
            "Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p4, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;->getServiceRibbon_Overlay(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;

    move-result-object v6

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/badlogic/gdx/graphics/Color;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->drawSROverlay(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;Lcom/badlogic/gdx/graphics/Color;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final drawSRLevel(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIILjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "IIIIII",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    move/from16 v14, p2

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p7

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->drawSR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILjava/util/List;)V

    iget-object v0, v6, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    iget-object v1, v6, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v3, p3, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    if-lez p4, :cond_0

    iget-object v0, v6, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    add-int/lit8 v1, p4, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    iget-object v2, v6, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSRImages:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v3, p3, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f266666    # 0.65f

    const/4 v13, 0x0

    invoke-direct {v0, v13, v13, v13, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v3, p3, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    div-int/lit8 v5, v1, 0x4

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v0, p3, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    div-int/lit8 v1, v1, 0x4

    sub-int v10, v0, v1

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    div-int/lit8 v12, v0, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    move-object/from16 v8, p1

    move/from16 v9, p2

    const/4 v2, 0x0

    move v13, v0

    move v0, v14

    move v14, v1

    invoke-virtual/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f0ccccd    # 0.55f

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    add-int/lit8 v1, p3, -0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    invoke-static {v15, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, p3, -0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    add-int/lit8 v2, v2, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    add-int/lit8 v3, v3, 0x2

    invoke-static {v15, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final drawSROver(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 8

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSROverlayImages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sub-int v5, p3, v0

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    mul-int v6, p3, p4

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    mul-int v7, p3, p4

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method protected final drawSROverlay(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;Lcom/badlogic/gdx/graphics/Color;I)V
    .locals 7

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getReflected()Z

    move-result p5

    if-eqz p5, :cond_0

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result p5

    int-to-float p5, p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float p5, p5, v1

    int-to-float v6, p6

    mul-float p5, p5, v6

    float-to-int p5, p5

    add-int v2, p2, p5

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p5

    invoke-virtual {p5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p5

    sub-int v3, p3, p5

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result p5

    int-to-float p5, p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float p5, p5, v1

    mul-float p5, p5, v6

    float-to-int v4, p5

    sget p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    mul-int v5, p5, p6

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    mul-int p5, p5, p6

    add-int/2addr p2, p5

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result p5

    int-to-float p5, p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float p5, p5, v1

    mul-float p5, p5, v6

    float-to-int p5, p5

    sub-int/2addr p2, p5

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result p5

    int-to-float p5, p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float p5, p5, v1

    mul-float p5, p5, v6

    float-to-int p5, p5

    sub-int v2, p2, p5

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p2

    sub-int v3, p3, p2

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result p2

    int-to-float p2, p2

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float p2, p2, p3

    mul-float p2, p2, v6

    float-to-int v4, p2

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    mul-int v5, p2, p6

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_0

    :cond_0
    sget p5, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getPosX()I

    move-result p5

    int-to-float p5, p5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float p5, p5, v1

    int-to-float v1, p6

    mul-float p5, p5, v1

    float-to-int p5, p5

    add-int v2, p2, p5

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p2

    sub-int v3, p3, p2

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Overlay_GameData;->getWidth()I

    move-result p2

    int-to-float p2, p2

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float p2, p2, p3

    mul-float p2, p2, v1

    float-to-int v4, p2

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    mul-int v5, p2, p6

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_0
    return-void
.end method

.method protected getRequestProvinces(I)I
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0xc8

    return p1

    :cond_1
    const/16 p1, 0x7d

    return p1

    :cond_2
    const/16 p1, 0x4b

    return p1

    :cond_3
    const/16 p1, 0x32

    return p1

    :cond_4
    const/16 p1, 0xa

    return p1
.end method

.method protected getRequestProvinces_Level(I)I
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces(I)I

    move-result v1

    if-lt p1, v1, :cond_0

    const/4 p1, 0x5

    return p1

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces(I)I

    move-result v2

    if-lt p1, v2, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces(I)I

    move-result v2

    if-lt p1, v2, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces(I)I

    move-result v2

    if-lt p1, v2, :cond_3

    return v0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestProvinces(I)I

    move-result v2

    if-lt p1, v2, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method protected getRequestRecruitedArmy(I)I
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const p1, 0xf4240

    return p1

    :cond_1
    const p1, 0x7a120

    return p1

    :cond_2
    const p1, 0x3d090

    return p1

    :cond_3
    const p1, 0x186a0

    return p1

    :cond_4
    const/16 p1, 0x1388

    return p1
.end method

.method protected getRequestRecruitedArmy_Level(I)I
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestRecruitedArmy(I)I

    move-result v1

    if-lt p1, v1, :cond_0

    const/4 p1, 0x5

    return p1

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestRecruitedArmy(I)I

    move-result v2

    if-lt p1, v2, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestRecruitedArmy(I)I

    move-result v2

    if-lt p1, v2, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestRecruitedArmy(I)I

    move-result v2

    if-lt p1, v2, :cond_3

    return v0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestRecruitedArmy(I)I

    move-result v2

    if-lt p1, v2, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method protected getRequestTurns(I)I
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x7d0

    return p1

    :cond_1
    const/16 p1, 0x3e8

    return p1

    :cond_2
    const/16 p1, 0x1f4

    return p1

    :cond_3
    const/16 p1, 0xfa

    return p1

    :cond_4
    const/16 p1, 0x32

    return p1
.end method

.method protected getRequestTurns_Level(I)I
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestTurns(I)I

    move-result v1

    if-lt p1, v1, :cond_0

    const/4 p1, 0x5

    return p1

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestTurns(I)I

    move-result v2

    if-lt p1, v2, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestTurns(I)I

    move-result v2

    if-lt p1, v2, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestTurns(I)I

    move-result v2

    if-lt p1, v2, :cond_3

    return v0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->getRequestTurns(I)I

    move-result v2

    if-lt p1, v2, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method protected final getSR(I)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSR:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    return-object p1
.end method

.method protected final getSR(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->iSRSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lTags:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSR:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSR:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    return-object p1
.end method

.method protected final getSRID(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->iSRSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lTags:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final getSRImagesSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->iSRImagesSize:I

    return v0
.end method

.method protected final getSROverlayImagesSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->iSROverlayImagesSize:I

    return v0
.end method

.method protected final getSRSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->iSRSize:I

    return v0
.end method

.method protected final getTag(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final loadSR()V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSR:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lTags:Ljava/util/List;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "game/service_ribbons/Age_of_Civilizations"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v1, v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSR:Ljava/util/List;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "game/service_ribbons/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lTags:Ljava/util/List;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->lSR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_Manager;->iSRSize:I
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void
.end method

.method protected final loadStatistics_Civ(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saves/stats/civ/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;

    invoke-direct {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected final saveData()V
    .locals 6

    const-string v0, ";"

    const-string v1, "game/service_ribbons/Age_of_Civilizations"

    :try_start_0
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "game/service_ribbons/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorServiceRibbon_GameData:Lage/of/civilizations2/jakowski/lukasz/ServiceRibbon_GameData;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->serialize(Ljava/lang/Object;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeBytes([BZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v3, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->EDITOR_ACTIVE_GAMEDATA_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method protected final saveStatistics_Civ(Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;)V
    .locals 8

    const-string v0, ";"

    const-string v1, "saves/stats/civ/Age_of_Civilizations"

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->sTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saves/stats/civ/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->sTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->serialize(Ljava/lang/Object;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeBytes([BZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_2

    aget-object v6, v3, v5

    iget-object v7, p1, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->sTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v3, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->sTag:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_2
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->sTag:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1

    :catch_1
    :cond_3
    :goto_2
    return-void
.end method
