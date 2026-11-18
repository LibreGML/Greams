.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side$1;
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

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side;

    move/from16 v0, p9

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side$1;->val$left:Z

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
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side$1;->val$left:Z

    if-eqz v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iGold:I

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iGold:I

    if-lez v2, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iManPower:I

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iManPower:I

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected getWidth()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_Side;->getElementW()I

    move-result v0

    return v0
.end method
