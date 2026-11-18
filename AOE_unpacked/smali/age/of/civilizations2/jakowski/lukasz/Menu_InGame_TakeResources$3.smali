.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources$3;
.super Lage/of/civilizations2/jakowski/lukasz/Slider_FlagAction_Date;
.source "Menu_InGame_TakeResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources;Ljava/lang/String;IIIIIIIF)V
    .locals 10

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

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
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v4, 0x1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources;

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources;

    invoke-virtual {v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v3

    invoke-static {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->takeResources_InterestRate(III)F

    move-result v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources;

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources;

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources;

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources;

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v4

    invoke-static {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->takeResources_InterestRate(III)F

    move-result v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMin(I)V

    return-void
.end method

.method protected getDrawText()Ljava/lang/String;
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "TurnsX"

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources$3;->getCurrent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

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

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TakeResources;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    return v0
.end method
