.class Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$1;
.super Ljava/lang/Object;
.source "Map_Coordinates.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$WorldMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->updateWorldMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateMapPosX()V
    .locals 4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$300(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$300(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$102(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;I)I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapTouchManager()Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->setUpdateStartMovePosX(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$300(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v1

    neg-int v1, v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$300(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$102(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;I)I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapTouchManager()Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->setUpdateStartMovePosX(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$300(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)I

    move-result v1

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$102(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;I)I

    :goto_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->checkPositionOfMapX()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$1;->updateSecondSideOfMap()V

    return-void
.end method

.method public updateSecondSideOfMap()V
    .locals 4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$100(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$002(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;Z)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$000(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$202(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;I)I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-static {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$202(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;I)I

    :goto_1
    return-void
.end method
