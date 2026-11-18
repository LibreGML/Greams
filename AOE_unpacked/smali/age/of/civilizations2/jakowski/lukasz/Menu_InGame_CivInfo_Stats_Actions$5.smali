.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Actions$5;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_Action;
.source "Menu_InGame_CivInfo_Stats_Actions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Actions;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Actions;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Actions;ILjava/lang/String;IIIIIZ)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Actions$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Actions;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_Action;-><init>(ILjava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 4

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWarID(II)I

    move-result p1

    if-ltz p1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Player;->iBefore_ActiveProvince:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveViewID()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Player;->iACTIVE_VIEW_MODE:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->disableAllViews()V

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty;->WAR_ID:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty;->WAR_ID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getWar(I)Lage/of/civilizations2/jakowski/lukasz/War_GameData;

    move-result-object p1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    invoke-virtual {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/War_GameData;->getIsAggressor(I)Z

    move-result p1

    invoke-direct {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;-><init>(IZ)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->peaceTreatyData:Lage/of/civilizations2/jakowski/lukasz/PeaceTreaty_Data;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->resetChooseProvinceData_Immediately()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->resetRegroupArmyData()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eINGAME_PEACE_TREATY:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    :cond_0
    return-void
.end method
