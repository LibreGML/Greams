.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame$1;
.super Lage/of/civilizations2/jakowski/lukasz/Minimap;
.source "Menu_InGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame;II)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame;

    invoke-direct {p0, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Minimap;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected getPosY()I
    .locals 2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
