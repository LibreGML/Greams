.class Lage/of/civilizations2/jakowski/lukasz/ViewsManager$149;
.super Lage/of/civilizations2/jakowski/lukasz/View_Type;
.source "ViewsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/ViewsManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$149;->this$0:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/View_Type;-><init>()V

    return-void
.end method


# virtual methods
.method protected disableViewAction()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->updateWorldMap_Shaders()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_View_Diseases(Z)V

    :cond_0
    return-void
.end method

.method protected enableViewAction()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->updateWorldMap_Shaders()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_View_Diseases(Z)V

    :cond_0
    return-void
.end method

.method protected getProvinceInformations()Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;
    .locals 8

    const-string v0, ": "

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHoveredProvinceID()I

    move-result v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "Undiscovered"

    const/4 v6, -0x1

    if-nez v4, :cond_0

    :try_start_1
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto/16 :goto_2

    :cond_0
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHoveredProvinceID()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v4

    if-ltz v4, :cond_1

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "Wasteland"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto/16 :goto_2

    :cond_1
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHoveredProvinceID()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHoveredProvinceID()I

    move-result v4

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHoveredProvinceID()I

    move-result v5

    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getFogOfWar(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHoveredProvinceID()I

    move-result v5

    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHoveredProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_2
    :goto_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHoveredProvinceID()I

    move-result v5

    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivsSize()I

    move-result v0

    if-ge v4, v0, :cond_8

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHoveredProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID(I)I

    move-result v5

    invoke-direct {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHoveredProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHoveredProvinceID()I

    move-result v4

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHoveredProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto/16 :goto_2

    :cond_4
    return-object v1

    :cond_5
    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_7

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHoveredProvinceID()I

    move-result v7

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    invoke-direct {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto/16 :goto_2

    :cond_7
    :goto_1
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHoveredProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-direct {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHoveredProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHoveredProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->provincePlague:Lage/of/civilizations2/jakowski/lukasz/PlagueProvince_GameData;

    if-eqz v4, :cond_8

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v7, "Name"

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->plagueManager:Lage/of/civilizations2/jakowski/lukasz/PlagueManager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHoveredProvinceID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->provincePlague:Lage/of/civilizations2/jakowski/lukasz/PlagueProvince_GameData;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/PlagueProvince_GameData;->iPlagueID_InGame:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/PlagueManager;->getPlague_InGame(I)Lage/of/civilizations2/jakowski/lukasz/Plague_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Plague_GameData;->getPlagueName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->disease:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-direct {v4, v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;

    invoke-direct {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v7, "Deaths"

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHoveredProvinceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Province;->saveProvinceData:Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->provincePlague:Lage/of/civilizations2/jakowski/lukasz/PlagueProvince_GameData;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/PlagueProvince_GameData;->iDeaths:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->population:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v6, 0x0

    invoke-direct {v0, v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_8
    :goto_2
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method protected updateActiveProvinceID_ExtraAction(II)V
    .locals 0

    return-void
.end method
