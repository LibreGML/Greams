.class public Lage/of/civilizations2/jakowski/lukasz/Map$Config;
.super Ljava/lang/Object;
.source "Map.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Config"
.end annotation


# instance fields
.field private Age_of_Civilizations:Ljava/lang/String;

.field private Map:Ljava/util/ArrayList;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Map$Config;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$Config;->Map:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method protected setMapData(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map$Config;->Map:Ljava/util/ArrayList;

    return-void
.end method
