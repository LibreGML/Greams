.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$37;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Build;
.source "Menu_InGame_Build.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;Ljava/lang/String;IIIIIIZZIF)V
    .locals 12

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build$37;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Button_Build;-><init>(Ljava/lang/String;IIIIIIZZIF)V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    if-ltz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_Abadon(II)V

    :cond_0
    return-void
.end method
