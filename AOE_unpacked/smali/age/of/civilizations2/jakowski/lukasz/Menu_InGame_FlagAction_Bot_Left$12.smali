.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left$12;
.super Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction;
.source "Menu_InGame_FlagAction_Bot_Left.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left;Ljava/lang/String;IIIIIIIZ)V
    .locals 11

    move-object v10, p0

    move-object v0, p1

    iput-object v0, v10, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left$12;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction;-><init>(Ljava/lang/String;IIIIIIIZ)V

    return-void
.end method


# virtual methods
.method protected getClickable()Z
    .locals 1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction;->getClickable()Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected getColorLEFT()Lcom/badlogic/gdx/graphics/Color;
    .locals 6

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f266666    # 0.65f

    const v2, 0x3f49c9ca

    const v3, 0x3f49c9ca

    const v4, 0x3f40c0c1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f40c0c1

    const v4, 0x3f40c0c1

    const v5, 0x3f40c0c1

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left$12;->getCurrent()I

    move-result v3

    const/16 v4, 0x64

    invoke-static {v0, v2, v3, v4, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method protected getDrawText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left$12;->getCurrent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSFX()I
    .locals 1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_TECHNOLOGY:I

    return v0
.end method
