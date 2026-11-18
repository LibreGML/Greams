.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_InGame_FlagAction_Bot_Right_Left.java"


# static fields
.field protected static lTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 28

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LANDSCAPE:Z

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    sub-int/2addr v0, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v3

    sub-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/2addr v3, v2

    sub-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    mul-int/lit8 v4, v4, 0x2

    div-int/2addr v4, v1

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    goto :goto_1

    :cond_2
    :goto_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    sub-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/2addr v3, v2

    sub-int/2addr v0, v3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction;->getWindowWidth()I

    move-result v3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction;->getWindowWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    div-int/2addr v4, v1

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    :goto_1
    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_2
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_4

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-lt v7, v2, :cond_3

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v4, v7, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    const/4 v9, 0x1

    :goto_4
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v11

    if-ge v7, v11, :cond_6

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_5

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v4, v7, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_5
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v11

    if-ge v7, v11, :cond_9

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    if-eq v7, v11, :cond_8

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v11

    if-lez v11, :cond_8

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v11, v2, :cond_7

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v12

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetCivilization(I)Z

    move-result v11

    if-eqz v11, :cond_8

    :cond_7
    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v4, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v11, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v11

    invoke-virtual {v11}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v11, v9

    const/4 v9, 0x0

    :goto_6
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v13

    invoke-virtual {v13}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v12

    if-ge v9, v12, :cond_c

    move v12, v11

    const/4 v11, 0x0

    :goto_7
    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v15, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v5

    invoke-virtual {v14, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v13, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v5

    if-ge v11, v5, :cond_b

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v15, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    invoke-virtual {v14, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-virtual {v13, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    if-lez v1, :cond_a

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v13

    invoke-virtual {v5, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v13

    invoke-virtual {v5, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v14

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v13

    invoke-virtual {v13, v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v13

    invoke-virtual {v5, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v11}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    :cond_a
    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x5

    goto/16 :goto_7

    :cond_b
    add-int/lit8 v9, v9, 0x1

    move v11, v12

    const/4 v1, 0x5

    goto/16 :goto_6

    :cond_c
    :goto_8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    const/4 v1, 0x1

    const/4 v5, 0x0

    :goto_9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_e

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v9, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v9

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v12

    if-ge v9, v12, :cond_d

    move v5, v1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_e
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_8

    :cond_f
    invoke-interface {v7}, Ljava/util/List;->clear()V

    const/4 v1, 0x1

    :goto_a
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v5

    if-ge v1, v5, :cond_11

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_11
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->iViewMode:I

    const/4 v4, 0x3

    if-nez v1, :cond_14

    :goto_b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1e

    const/4 v1, 0x1

    const/4 v5, 0x0

    :goto_c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_13

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v9, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v9

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v12

    if-ge v9, v12, :cond_12

    move v5, v1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_13
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_b

    :cond_14
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->iViewMode:I

    if-ne v1, v8, :cond_18

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_15

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v9, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countPopulation()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_15
    :goto_e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1e

    const/4 v5, 0x1

    const/4 v9, 0x0

    :goto_f
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_17

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ge v12, v13, :cond_16

    move v9, v5

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_17
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_e

    :cond_18
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->iViewMode:I

    if-ne v1, v2, :cond_1b

    :goto_10
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1e

    const/4 v1, 0x1

    const/4 v5, 0x0

    :goto_11
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_1a

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v9, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v9

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v12

    cmpg-float v9, v9, v12

    if-gez v9, :cond_19

    move v5, v1

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1a
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_10

    :cond_1b
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->iViewMode:I

    if-ne v1, v4, :cond_1e

    :goto_12
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1e

    const/4 v1, 0x1

    const/4 v5, 0x0

    :goto_13
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_1d

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v9, v12}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRankScore()I

    move-result v9

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRankScore()I

    move-result v12

    if-ge v9, v12, :cond_1c

    move v5, v1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1d
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_12

    :cond_1e
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v7, "Turn"

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Right;->getViewName()Ljava/lang/String;

    move-result-object v14

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v15, v5, 0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v16, v5, 0x2

    mul-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0xa

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    sub-int v17, v3, v5

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v0, v5

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x3

    sub-int v18, v0, v7

    const/16 v19, 0x1

    const/4 v7, 0x5

    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v21

    move-object v11, v1

    move-object/from16 v12, p0

    move-object/from16 v20, v6

    invoke-direct/range {v11 .. v21}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;Ljava/lang/String;Ljava/lang/String;IIIIZLjava/util/List;I)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x1

    move-object/from16 v22, v1

    move/from16 v25, v3

    move/from16 v26, v0

    invoke-direct/range {v22 .. v27}, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;-><init>(IIIIZ)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction;->getWindowWidth()I

    move-result v6

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction;->getWindowWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    const/4 v4, 0x5

    div-int/2addr v7, v4

    sub-int/2addr v6, v7

    sget v4, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    add-int/2addr v6, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    add-int/2addr v5, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v5, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    add-int/2addr v5, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v5, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    add-int/2addr v5, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v5, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/2addr v4, v2

    add-int v7, v5, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object v5, v1

    move v8, v3

    move v9, v0

    invoke-virtual/range {v4 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 0

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 14

    move-object v8, p1

    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->lTime:J

    const-wide/16 v2, 0xe1

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/high16 v9, 0x3f400000    # 0.75f

    const/high16 v10, 0x3e800000    # 0.25f

    const v11, 0x3ccccccd    # 0.025f

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosX()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v12, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->lTime:J

    sub-long/2addr v5, v12

    long-to-float v5, v5

    const/high16 v6, 0x43610000    # 225.0f

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    float-to-int v4, v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line_horizontal:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line_horizontal:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v11, v11, v11, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v11, v11, v11, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getWidth()I

    move-result v1

    add-int/lit8 v4, v1, -0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v5, v1, 0x4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v4, v1, 0x4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getHeight()I

    move-result v1

    add-int/lit8 v5, v1, -0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEW_GAME_EDGE_LINE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    const/4 v4, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getHeight()I

    move-result v1

    add-int/lit8 v5, v1, -0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3ec00000    # 0.375f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    const/4 v4, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getHeight()I

    move-result v1

    add-int/lit8 v5, v1, -0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-super/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line_horizontal:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line_horizontal:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v11, v11, v11, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v11, v11, v11, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getWidth()I

    move-result v1

    add-int/lit8 v4, v1, -0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v5, v1, 0x4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v4, v1, 0x4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getHeight()I

    move-result v1

    add-int/lit8 v5, v1, -0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEW_GAME_EDGE_LINE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    const/4 v4, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->getHeight()I

    move-result v1

    add-int/lit8 v5, v1, -0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-super/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :catch_0
    :goto_0
    return-void
.end method

.method protected getVisible()Z
    .locals 1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LANDSCAPE:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getVisible()Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected onHovered()V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setOrderOfMenu_InGame_FlagAction()V

    return-void
.end method

.method protected setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Right_Left;->lTime:J

    return-void
.end method
