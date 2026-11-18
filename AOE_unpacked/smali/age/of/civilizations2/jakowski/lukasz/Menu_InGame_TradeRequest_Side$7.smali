.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side$7;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Statistics;
.source "Menu_InGame_TradeRequest_Side.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side;-><init>(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side;

.field final synthetic val$left:Z


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side;Ljava/lang/String;IIIIIZZ)V
    .locals 9

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side;

    move/from16 v0, p9

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side$7;->val$left:Z

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method protected getCheckboxState()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side$7;->val$left:Z

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->proclaimIndependence:Z

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->proclaimIndependence:Z

    goto :goto_0
.end method

.method protected getWidth()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side;->getElementW()I

    move-result v0

    return v0
.end method
