.class Lage/of/civilizations2/jakowski/lukasz/Game_Mountains;
.super Ljava/lang/Object;
.source "Game_Mountains.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$GameCity;,
        Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$Config;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final readMountains(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$Config;
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cities/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v1, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$Config;

    const-class v2, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$GameCity;

    const-string v3, "mountains"

    invoke-virtual {v0, v1, v3, v2}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-class v1, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$Config;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$Config;

    return-object p1
.end method


# virtual methods
.method protected final loadMountains()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Mountain;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$Config;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$Config;-><init>()V

    :try_start_0
    const-string v1, "mountains.json"

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains;->readMountains(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$Config;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$Config;->access$000(Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$Config;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$GameCity;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Mountain;

    iget-object v4, v2, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$GameCity;->Name:Ljava/lang/String;

    iget v5, v2, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$GameCity;->Elevation:I

    iget v6, v2, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$GameCity;->x:I

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Game_Mountains$GameCity;->y:I

    invoke-direct {v3, v4, v5, v6, v2}, Lage/of/civilizations2/jakowski/lukasz/Mountain;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-object v0
.end method
