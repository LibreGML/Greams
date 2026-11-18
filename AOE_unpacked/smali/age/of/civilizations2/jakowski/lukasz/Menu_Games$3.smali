.class Lage/of/civilizations2/jakowski/lukasz/Menu_Games$3;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale;
.source "Menu_Games.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_Games;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Games;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Games;Ljava/lang/String;IIIIIZ)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_Games$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Games;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_TextScale;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method protected getClickable()Z
    .locals 1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/SaveManager;->gameCanBeContinued:Z

    return v0
.end method
