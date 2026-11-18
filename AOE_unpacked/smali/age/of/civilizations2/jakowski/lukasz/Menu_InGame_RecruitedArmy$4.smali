.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_RecruitedArmy$4;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Flag_Clip;
.source "Menu_InGame_RecruitedArmy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_RecruitedArmy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_RecruitedArmy;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_RecruitedArmy;ILjava/lang/String;IIIII)V
    .locals 8

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_RecruitedArmy$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_RecruitedArmy;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Flag_Clip;-><init>(ILjava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_LEFT_NS_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_RecruitedArmy$4;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_RecruitedArmy$4;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_LEFT_NS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_LEFT_NS:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_MENU_TEXT_NOT_CLICKABLE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0
.end method

.method protected getWidth()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_RecruitedArmy$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_RecruitedArmy;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_RecruitedArmy;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
