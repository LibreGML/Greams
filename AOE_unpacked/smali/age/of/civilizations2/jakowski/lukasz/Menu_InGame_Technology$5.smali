.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology$5;
.super Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle;
.source "Menu_InGame_Technology.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology;Ljava/lang/String;IIIIIZ)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology;->iCivID:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/SkillsManager;->add_EcoGrowth(I)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->skills:Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->getPointsLeft(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setMin(I)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->skills:Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_ECONOMY_GROWTH:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void
.end method

.method protected buildElementHover()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "AddPoint"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology;->iCivID:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "EconomyGrowthModifier"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    const-string v4, "+2.0%"

    invoke-direct {v2, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology$5;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    return-void
.end method

.method protected getPosX()I
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Technology$5;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getSFX()I
    .locals 1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_CLICK2:I

    return v0
.end method
