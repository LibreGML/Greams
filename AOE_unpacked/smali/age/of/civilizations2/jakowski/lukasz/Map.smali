.class Lage/of/civilizations2/jakowski/lukasz/Map;
.super Ljava/lang/Object;
.source "Map.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;,
        Lage/of/civilizations2/jakowski/lukasz/Map$Mapsrr;,
        Lage/of/civilizations2/jakowski/lukasz/Map$Maps;,
        Lage/of/civilizations2/jakowski/lukasz/Map$Config;
    }
.end annotation


# static fields
.field protected static GAME_CRASHED_LOADED_MIN_SCALE:Z


# instance fields
.field private MAP_SCENARIO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private MAP_WORLD_MAP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private iActiveMapID:I

.field private iMAP_DEFAULT_SCALE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private iMAP_ICON:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Image;",
            ">;"
        }
    .end annotation
.end field

.field private iMAP_NUM_OF_PROVINCES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private iMAP_SCALE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected iNumOfBasins:I

.field private mapBG:Lage/of/civilizations2/jakowski/lukasz/Map_BG;

.field private mapContinents:Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

.field private mapCoordinates:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

.field private mapRegions:Lage/of/civilizations2/jakowski/lukasz/Map_Regions;

.field private mapScale:Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

.field private mapScroll:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

.field private mapTouchManager:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

.field private sMAP_AUTHOR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sMAP_BACKGROUND_NAME:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sMAP_CONTINENTS_PACKAGE_TAG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sMAP_LANG_KEY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sMAP_REGIONS_PACKAGE_TAG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sMAP_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sMAP_WIKI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iActiveMapID:I

    const/4 v1, 0x0

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapBG:Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapCoordinates:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapTouchManager:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapScroll:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapScale:Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapContinents:Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapRegions:Lage/of/civilizations2/jakowski/lukasz/Map_Regions;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iNumOfBasins:I

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Map$Config;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/Map$Config;-><init>()V

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v2, Lage/of/civilizations2/jakowski/lukasz/Map$Config;

    const-class v3, Lage/of/civilizations2/jakowski/lukasz/Map$Maps;

    const-string v4, "Map"

    invoke-virtual {v1, v2, v4, v3}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-class v2, Lage/of/civilizations2/jakowski/lukasz/Map$Config;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v5, "map/Age_of_Civilizations.json"

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    const-string v5, "UTF8"

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Map$Config;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Map$Config;->access$000(Lage/of/civilizations2/jakowski/lukasz/Map$Config;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Map$Maps;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Map$Maps;->access$100(Lage/of/civilizations2/jakowski/lukasz/Map$Maps;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_LANG_KEY:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_NUM_OF_PROVINCES:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_SCALE:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_DEFAULT_SCALE:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_BACKGROUND_NAME:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_AUTHOR:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_WIKI:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_CONTINENTS_PACKAGE_TAG:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_REGIONS_PACKAGE_TAG:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_ICON:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->MAP_WORLD_MAP:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->MAP_SCENARIO:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/Map$Config;

    invoke-direct {v6}, Lage/of/civilizations2/jakowski/lukasz/Map$Config;-><init>()V

    const-class v6, Lage/of/civilizations2/jakowski/lukasz/Map$Config;

    const-class v7, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;

    invoke-virtual {v1, v6, v4, v7}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-class v6, Lage/of/civilizations2/jakowski/lukasz/Map$Config;

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "map/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "config"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".json"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Map$Config;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Map$Config;->access$000(Lage/of/civilizations2/jakowski/lukasz/Map$Config;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_LANG_KEY:Ljava/util/List;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$200(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_AUTHOR:Ljava/util/List;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$300(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_BACKGROUND_NAME:Ljava/util/List;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$400(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_CONTINENTS_PACKAGE_TAG:Ljava/util/List;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$500(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_REGIONS_PACKAGE_TAG:Ljava/util/List;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$600(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_NUM_OF_PROVINCES:Ljava/util/List;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$700(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_SCALE:Ljava/util/List;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$800(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)I

    move-result v8

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isDesktop()Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_1

    sget-boolean v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->XHDPI:Z

    if-eqz v11, :cond_4

    goto :goto_3

    :cond_1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v11

    if-eqz v11, :cond_4

    sget-boolean v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXXHDPI:Z

    if-nez v11, :cond_3

    sget-boolean v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXHDPI:Z

    if-nez v11, :cond_3

    sget-boolean v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXHDPI:Z

    if-eqz v11, :cond_2

    goto :goto_2

    :cond_2
    sget-boolean v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->XHDPI:Z

    if-eqz v11, :cond_4

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v11, 0x2

    const/4 v12, 0x2

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    :goto_3
    add-int/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_DEFAULT_SCALE:Ljava/util/List;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$800(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->MAP_WORLD_MAP:Ljava/util/List;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$900(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->MAP_SCENARIO:Ljava/util/List;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$1000(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_WIKI:Ljava/util/List;

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->access$1100(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_ICON:Ljava/util/List;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v8, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v11, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "ico.png"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v9}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-direct {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_6
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapBG:Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapCoordinates:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapTouchManager:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapScroll:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapScale:Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    return-void
.end method


# virtual methods
.method protected final drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapBG:Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->requestToDisposeMinimap:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapBG:Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->disposeMinimapOfCivilizations_Real()V

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapBG:Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->drawMinimapTexture_Generate(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapBG:Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapCoordinates:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosX()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapCoordinates:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapBG:Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapCoordinates:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosX()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapCoordinates:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->drawMapBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method protected final getActiveMapID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iActiveMapID:I

    return v0
.end method

.method protected final getFile_ActiveMap_Path()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iActiveMapID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getFile_Map_Path(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final getIcon(I)Lage/of/civilizations2/jakowski/lukasz/Image;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_ICON:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Image;

    return-object p1
.end method

.method protected final getMapAuthor(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_AUTHOR:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapBG:Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    return-object v0
.end method

.method protected final getMapBackgroundName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_BACKGROUND_NAME:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final getMapContinents()Lage/of/civilizations2/jakowski/lukasz/Map_Continents;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapContinents:Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    return-object v0
.end method

.method protected final getMapContinentsPackageTag(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_CONTINENTS_PACKAGE_TAG:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapCoordinates:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    return-object v0
.end method

.method protected final getMapDefaultScale(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_DEFAULT_SCALE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getMapDefaultScenario(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->MAP_SCENARIO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final getMapLangKey(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_LANG_KEY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final getMapName(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapLangKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapNumOfProvinces(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Provinces"

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final getMapName_Just(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapLangKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final getMapNumOfProvinces(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_NUM_OF_PROVINCES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getMapRegions()Lage/of/civilizations2/jakowski/lukasz/Map_Regions;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapRegions:Lage/of/civilizations2/jakowski/lukasz/Map_Regions;

    return-object v0
.end method

.method protected final getMapRegionsPackageTag(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_REGIONS_PACKAGE_TAG:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final getMapScale(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_SCALE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapScale:Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    return-object v0
.end method

.method protected final getMapScroll()Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapScroll:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    return-object v0
.end method

.method protected final getMapTouchManager()Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapTouchManager:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    return-object v0
.end method

.method protected final getMapWiki(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_WIKI:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final getMapWorldMap(I)Z
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->MAP_WORLD_MAP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method protected final getNumOfMaps()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_TAGS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final initMapContinents()V
    .locals 3

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_CONTINENTS_PACKAGE_TAG:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Continents;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapContinents:Lage/of/civilizations2/jakowski/lukasz/Map_Continents;

    return-void
.end method

.method protected final initMapRegions()V
    .locals 3

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Map_Regions;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->sMAP_REGIONS_PACKAGE_TAG:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Regions;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapRegions:Lage/of/civilizations2/jakowski/lukasz/Map_Regions;

    return-void
.end method

.method protected final loadSettings_ActiveMap()V
    .locals 6

    const-string v0, "status"

    const-string v1, "settings_map"

    :try_start_0
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/SaveActiveMap_GameData;

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/SaveActiveMap_GameData;->iActiveMapID:I

    if-ltz v3, :cond_0

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/SaveActiveMap_GameData;->iActiveMapID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getNumOfMaps()I

    move-result v4

    if-ge v3, v4, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    iget v4, v2, Lage/of/civilizations2/jakowski/lukasz/SaveActiveMap_GameData;->iActiveMapID:I

    iget v5, v2, Lage/of/civilizations2/jakowski/lukasz/SaveActiveMap_GameData;->iActiveMapScale:I

    invoke-virtual {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->setMapScale(II)I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/SaveActiveMap_GameData;->iActiveMapID:I

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->setActiveMapID(I)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    :try_start_1
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/SaveActiveMap_GameData;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/SaveActiveMap_GameData;->iActiveMapID:I

    if-ltz v2, :cond_0

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/SaveActiveMap_GameData;->iActiveMapID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getNumOfMaps()I

    move-result v3

    if-ge v2, v3, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    iget v3, v1, Lage/of/civilizations2/jakowski/lukasz/SaveActiveMap_GameData;->iActiveMapID:I

    iget v4, v1, Lage/of/civilizations2/jakowski/lukasz/SaveActiveMap_GameData;->iActiveMapScale:I

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->setMapScale(II)I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SaveActiveMap_GameData;->iActiveMapID:I

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->setActiveMapID(I)V
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/SaveActiveMap_Status_GameData;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map;->load_MinScale()V
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_2
    :try_start_3
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/SaveActiveMap_Status_GameData;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map;->load_MinScale()V
    :try_end_3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :goto_1
    return-void
.end method

.method protected final load_DeleteStatusFile()V
    .locals 2

    const-string v0, "status"

    :try_start_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->delete()Z
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->delete()Z
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method protected final load_MinScale()V
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_Map_Path(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "scales/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "provinces/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Age_of_Civilizations"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getActiveMapID()I

    move-result v2

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->setMapScale(II)I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map;->load_DeleteStatusFile()V

    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Map;->GAME_CRASHED_LOADED_MIN_SCALE:Z

    return-void
.end method

.method protected final setActiveMapID(I)V
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iActiveMapID:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iActiveMapID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map;->updateWorldMap()V

    :cond_0
    return-void
.end method

.method protected final setMapScale(II)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->iMAP_SCALE:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final update()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapScale:Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->update()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapScroll:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->update()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapCoordinates:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->update()V

    return-void
.end method

.method protected final updateWorldMap()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapBG:Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->updateWorldMap()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map;->mapCoordinates:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->updateWorldMap()V

    return-void
.end method
