.class Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$32;
.super Ljava/lang/Object;
.source "Map_TouchManager.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->update_ExtraAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$32;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extraAction(II)V
    .locals 4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v0

    if-ltz v0, :cond_9

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->canBeReleasedAsVassal(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushTool:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$32;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->access$100(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$32;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    invoke-virtual {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionMoveMap(II)V

    return-void

    :cond_1
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$32;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->access$002(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;Z)Z

    :cond_2
    sget-boolean p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->selectMode:Z

    if-eqz p1, :cond_4

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object p1

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {p2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result p2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->canBeReleasedAsVassal(II)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-boolean p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushTool:Z

    if-eqz p1, :cond_3

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object p1

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->addProvince(I)Z

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->updateCreateAVassal_CivInfo()V

    goto :goto_3

    :cond_3
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object p1

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->addProvince(I)Z

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->updateCreateAVassal_CivInfo()V

    goto :goto_3

    :cond_4
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object p1

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->removeProvince(I)Z

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvincesSize()I

    move-result v0

    if-ge p2, v0, :cond_6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->createVassal_Data:Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->iCapitalProvinceID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v2

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->getProvince(I)I

    move-result v2

    if-ne v0, v2, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_7

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->createVassal_Data:Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;

    const/4 p2, -0x1

    iput p2, p1, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->iCapitalProvinceID:I

    :cond_7
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->updateCreateAVassal_CivInfo()V

    goto :goto_3

    :cond_8
    :goto_2
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushTool:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$32;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->access$000(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$32;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    invoke-virtual {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionMoveMap(II)V

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$32;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->access$102(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;Z)Z

    :cond_9
    :goto_3
    return-void
.end method
