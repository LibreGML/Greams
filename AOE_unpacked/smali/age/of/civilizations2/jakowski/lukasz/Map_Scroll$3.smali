.class Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$3;
.super Ljava/lang/Object;
.source "Map_Scroll.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$BackgroundAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->updateEnableBackroundAnimation()V
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

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateBackgroundAnimation()V
    .locals 6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapTouchManager()Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->getActionMap()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->access$100(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x55

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosX()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->access$200(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    int-to-float v2, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosX(I)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->access$102(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;J)J

    :cond_1
    return-void
.end method
