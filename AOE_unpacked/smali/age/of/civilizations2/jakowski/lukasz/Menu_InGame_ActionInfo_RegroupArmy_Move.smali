.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ActionInfo_RegroupArmy_Move;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_InGame_ActionInfo_RegroupArmy_Move.java"


# direct methods
.method protected constructor <init>()V
    .locals 12

    const-string v0, "-"

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Move;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    const/4 v3, 0x0

    add-int/2addr v2, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    const-string v5, ""

    invoke-direct {v1, v5, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Move;-><init>(Ljava/lang/String;II)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x41200000    # 10.0f

    :try_start_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Game;->currentRegroupArmy:Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Game;->currentRegroupArmy:Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRoute(I)I

    move-result v8

    invoke-virtual {v2, v4, v6, v8}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getIsFreeMove(III)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ActionInfo_RegroupArmy_Move$1;

    const-string v4, "-0.0"

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v8

    sub-int/2addr v6, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v6, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    sub-int/2addr v6, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v6, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    invoke-direct {v2, p0, v4, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ActionInfo_RegroupArmy_Move$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ActionInfo_RegroupArmy_Move;Ljava/lang/String;II)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ActionInfo_RegroupArmy_Move$2;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Game;->currentRegroupArmy:Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {v9, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRoute(I)I

    move-result v9

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v10

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v10

    invoke-virtual {v6, v8, v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->costOfMoveArmy(III)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v8

    sub-int/2addr v6, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v6, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    sub-int/2addr v6, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v6, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    invoke-direct {v2, p0, v4, v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ActionInfo_RegroupArmy_Move$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ActionInfo_RegroupArmy_Move;Ljava/lang/String;II)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ActionInfo_RegroupArmy_Move$3;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v6

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Game;->currentRegroupArmy:Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRoute(I)I

    move-result v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v0, v6, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->costOfMoveArmy(III)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v4

    sub-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    sub-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    invoke-direct {v2, p0, v0, v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ActionInfo_RegroupArmy_Move$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ActionInfo_RegroupArmy_Move;Ljava/lang/String;II)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Turns;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    add-int/2addr v1, v3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {v0, v5, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Text_ActionInfo_Turns;-><init>(Ljava/lang/String;II)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ActionInfo_RegroupArmy_Move;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "MovementPoints"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ActionInfo_RegroupArmy_Move;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_INGAME_MOVEMENT_ZERO:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onHovered()V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setOrderOfMenu_InGame_Recruit()V

    return-void
.end method
