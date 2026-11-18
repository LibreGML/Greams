.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Assimilate$2;
.super Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Date;
.source "Menu_InGame_Assimilate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Assimilate;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Assimilate;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Assimilate;Ljava/lang/String;IIIIIIIF)V
    .locals 11

    move-object v10, p0

    move-object v0, p1

    iput-object v0, v10, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Assimilate$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Assimilate;

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

    invoke-direct/range {v0 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Date;-><init>(Ljava/lang/String;IIIIIIIF)V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 2

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Assimilate$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Assimilate;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Assimilate;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Assimilate$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Assimilate;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Assimilate;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Assimilate;)I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Assimilate$2;->getCurrent()I

    move-result v1

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->assimilateCost(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void
.end method

.method protected getColorLEFT()Lcom/badlogic/gdx/graphics/Color;
    .locals 7

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method protected getDrawText()Ljava/lang/String;
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Assimilate$2;->getCurrent()I

    move-result v1

    const-string v2, "TurnsX"

    invoke-virtual {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSliderHeight()I
    .locals 1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getWidth()I
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Assimilate$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Assimilate;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Assimilate;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method
