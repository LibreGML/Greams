.class Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$16;
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

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$16;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extraAction(II)V
    .locals 3

    sget-boolean p1, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Response;->DRAW_TREATY_PROVINCES:Z

    if-eqz p1, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iBrushCivID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iBrushCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iBrushCivID:I

    goto :goto_0

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->iPlayerTurnID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    :goto_0
    invoke-virtual {p1, p2, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;->takeProvince(III)Z

    :cond_1
    return-void
.end method
