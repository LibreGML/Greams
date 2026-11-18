.class Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$2;
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

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateBackgroundAnimation()V
    .locals 7

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapTouchManager()Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->getActionMap()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInNewGamePlayers()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->access$000(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->access$004(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->access$000(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->access$002(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;I)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->access$100(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x9c4

    sub-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    :try_start_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->access$000(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->setScrollEvent(I)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->access$008(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->access$002(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;I)I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->access$000(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->setScrollEvent(I)V

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->access$000(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;)I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v2

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->access$002(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;I)I

    goto :goto_1

    :catch_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->access$002(Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;I)I

    :cond_2
    :goto_1
    return-void
.end method
