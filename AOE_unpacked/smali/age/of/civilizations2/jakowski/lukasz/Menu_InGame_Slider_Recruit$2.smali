.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Slider_Recruit$2;
.super Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Perc;
.source "Menu_InGame_Slider_Recruit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Slider_Recruit;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Slider_Recruit;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Slider_Recruit;IIIIIII)V
    .locals 8

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Slider_Recruit$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Slider_Recruit;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Slider_LR_Perc;-><init>(IIIIIII)V

    return-void
.end method


# virtual methods
.method protected getColorLEFT()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_SLIDER_LEFT_BG2:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method
