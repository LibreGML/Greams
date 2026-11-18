.class Lage/of/civilizations2/jakowski/lukasz/Menu_RandomGame_Settings$3;
.super Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Clear;
.source "Menu_RandomGame_Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_RandomGame_Settings;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_RandomGame_Settings;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_RandomGame_Settings;Ljava/lang/String;IIIIIII)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_RandomGame_Settings$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_RandomGame_Settings;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Clear;-><init>(Ljava/lang/String;IIIIIII)V

    return-void
.end method


# virtual methods
.method protected getColorLEFT()Lcom/badlogic/gdx/graphics/Color;
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POPULATION:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POPULATION:[Lcom/badlogic/gdx/graphics/Color;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POPULATION:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POPULATION:[Lcom/badlogic/gdx/graphics/Color;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POPULATION:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_POPULATION:[Lcom/badlogic/gdx/graphics/Color;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f266666    # 0.65f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method protected getDrawText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_RandomGame_Settings$3;->getCurrent()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getWidth()I
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_RandomGame_Settings$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_RandomGame_Settings;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_RandomGame_Settings;->getW()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_RandomGame_Settings$3;->getPosX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method protected setCurrent(I)V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    mul-int/lit8 v1, p1, 0x64

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->setScenario_StartingPopulation(I)V

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Clear;->setCurrent(I)V

    return-void
.end method
