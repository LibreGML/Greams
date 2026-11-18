.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$3;
.super Lage/of/civilizations2/jakowski/lukasz/Text_CivInfo;
.source "Menu_InGame_CivInfo_Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;

    invoke-direct {p0, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Text_CivInfo;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method protected buildElementHover()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getHover_CapitalCity(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    move-result-object v1

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$3;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$3;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    goto :goto_0

    :cond_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getHover_CapitalCity(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    move-result-object v1

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$3;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$3;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    :goto_0
    return-void
.end method
