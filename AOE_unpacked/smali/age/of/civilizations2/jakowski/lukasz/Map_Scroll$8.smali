.class Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$8;
.super Ljava/lang/Object;
.source "Map_Scroll.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$ReverseDirection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->buildReverseDirectionY()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNewPos(I)I
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getNewPosY()I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method
