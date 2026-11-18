.class public Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;
.super Ljava/lang/Object;
.source "Map.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MapInformations"
.end annotation


# instance fields
.field private Author:Ljava/lang/String;

.field private BackgroundName:Ljava/lang/String;

.field private ContinentsPackage:Ljava/lang/String;

.field private MapName:Ljava/lang/String;

.field private MapScale:I

.field private NumberOfProvinces:I

.field private RegionsPackage:Ljava/lang/String;

.field private Scenario:Ljava/lang/String;

.field private Wiki:Ljava/lang/String;

.field private WorldMap:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->Scenario:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->Wiki:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->MapName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->Author:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->BackgroundName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->ContinentsPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->RegionsPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)I
    .locals 0

    iget p0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->NumberOfProvinces:I

    return p0
.end method

.method static synthetic access$800(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)I
    .locals 0

    iget p0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->MapScale:I

    return p0
.end method

.method static synthetic access$900(Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;)Z
    .locals 0

    iget-boolean p0, p0, Lage/of/civilizations2/jakowski/lukasz/Map$MapInformations;->WorldMap:Z

    return p0
.end method
