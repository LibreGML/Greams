.class Lage/of/civilizations2/jakowski/lukasz/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# static fields
.field private static images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->images:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final addImage(Ljava/lang/String;)I
    .locals 1

    # Nearest is cheaper on GPU for UI/icons
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-static {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)I

    move-result p0

    return p0
.end method

.method protected static final addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)I
    .locals 5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->images:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v3, p0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    # No mipmaps — ~33% less GPU memory and faster load
    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    invoke-direct {v1, v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->images:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v4, 0x1

    sub-int/2addr p0, v4

    return p0
.end method

.method protected static final addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I
    .locals 5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->images:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v3, p0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    # No mipmaps — ~33% less GPU memory and faster load
    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    invoke-direct {v1, v2, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->images:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v4, 0x1

    sub-int/2addr p0, v4

    return p0
.end method

.method protected static final addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)I
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {p0, v0, p1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)I

    move-result p0

    return p0
.end method

.method protected static final getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->images:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lage/of/civilizations2/jakowski/lukasz/Image;

    return-object p0
.end method

.method protected static final getImagesSize()I
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
