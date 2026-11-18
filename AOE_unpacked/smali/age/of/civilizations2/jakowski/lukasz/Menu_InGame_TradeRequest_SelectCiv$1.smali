.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_SelectCiv$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Game;
.source "Menu_InGame_TradeRequest_SelectCiv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_SelectCiv;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_SelectCiv;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_SelectCiv;Ljava/lang/String;IIIIZ)V
    .locals 7

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_SelectCiv$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_SelectCiv;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Game;-><init>(Ljava/lang/String;IIIIZ)V

    return-void
.end method


# virtual methods
.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_IMPORTANT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_SelectCiv$1;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest_SelectCiv$1;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_IMPORTANT_HOVER:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_IMPORTANT:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_NOT_CLICKABLE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0
.end method
