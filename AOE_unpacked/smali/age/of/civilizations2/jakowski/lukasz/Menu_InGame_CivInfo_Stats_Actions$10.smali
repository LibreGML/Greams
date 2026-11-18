.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Actions$10;
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

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Actions$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Actions;

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
    .locals 2

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    invoke-direct {p1}, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;-><init>()V

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v0

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->iCivLEFT:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v0

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->iCivRIGHT:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_TradeRequest(I)V

    return-void
.end method
