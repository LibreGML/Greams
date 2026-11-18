.class Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$2;
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

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateMapPosX()V
    .locals 5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$300(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$400(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/4 v2, 0x1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getWidth()I

    move-result v1

    neg-int v1, v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$400(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$102(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;I)I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapTouchManager()Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->setUpdateStartMovePosX(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$300(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)I

    move-result v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$400(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$400(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)I

    move-result v1

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$102(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;I)I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapTouchManager()Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->setUpdateStartMovePosX(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$300(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)I

    move-result v1

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$102(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;I)I

    :goto_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$100(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)I

    move-result v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$400(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$400(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;)I

    move-result v1

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$302(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;I)I

    move-result v1

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$102(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;I)I

    :cond_2
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->checkPositionOfMapX()V

    return-void
.end method

.method public updateSecondSideOfMap()V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$002(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;Z)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->access$202(Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;I)I

    return-void
.end method
