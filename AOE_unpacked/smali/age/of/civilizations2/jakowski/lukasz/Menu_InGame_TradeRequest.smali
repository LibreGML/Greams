.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_InGame_TradeRequest.java"


# static fields
.field protected static iOnCivID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->iOnCivID:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 10

    const/4 v8, 0x1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    mul-int/lit8 v4, v0, 0x2

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Flag_JustFrame;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-direct {v0, v1, v9, v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Flag_JustFrame;-><init>(IIZ)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v9, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left2:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    add-int v3, v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "TradeRequest"

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x5

    invoke-direct {v1, v0, v2, v8, v8}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;-><init>(Ljava/lang/String;IZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v2, v4, 0x2

    sub-int v2, v0, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v5

    add-int/2addr v0, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v5, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    if-le v0, v5, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    sub-int/2addr v0, v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    mul-int/lit8 v5, v5, 0x6

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_0
    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->updateLanguage()V

    return-void

    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v0

    goto :goto_0
.end method

.method protected constructor <init>(I)V
    .locals 20

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->iOnCivID:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    mul-int/lit8 v19, v2, 0x2

    const/4 v8, 0x0

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "LikelihoodOfSuccess"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->getTradeRequest_LikelihoodOfSuccess_Text()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1.0"

    const/4 v7, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v9, v3, 0x2

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iGold:I

    if-lez v2, :cond_0

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$2;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Gold"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v2, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int v2, v19, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sub-int v9, v2, v3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int v10, v2, v3

    const/4 v11, 0x1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    long-to-int v12, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v13, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iGold:I

    const v14, 0x3f266666    # 0.65f

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;Ljava/lang/String;IIIIIIIF)V

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iManPower:I

    if-lez v2, :cond_1

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$3;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Resources"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v2, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int v2, v19, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sub-int v9, v2, v3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int v10, v2, v3

    const/4 v11, 0x1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getManPower()I

    move-result v12

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v13, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iManPower:I

    const v14, 0x3f266666    # 0.65f

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;Ljava/lang/String;IIIIIIIF)V

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    :cond_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->lProvinces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$4;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->provinces:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v6, "Provinces"

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->lProvinces:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget v6, v3, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->iCivLEFT:I

    const/4 v7, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v9, v3, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v3, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x4

    add-int/2addr v10, v3

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;ILjava/lang/String;IIIII)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    :cond_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iDeclarWarOnCivID:I

    if-lez v2, :cond_3

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$5;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_war:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v6, "DeclareWar"

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iDeclarWarOnCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v6, v3, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iDeclarWarOnCivID:I

    const/4 v7, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v9, v3, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v3, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x4

    add-int/2addr v10, v3

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;ILjava/lang/String;IIIII)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    :cond_3
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iFormCoalitionAgainst:I

    if-lez v2, :cond_4

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$6;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_war_preparations:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v6, "FormACoalitionAgainst"

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iFormCoalitionAgainst:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v6, v3, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iFormCoalitionAgainst:I

    const/4 v7, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v9, v3, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v3, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x4

    add-int/2addr v10, v3

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;ILjava/lang/String;IIIII)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    :cond_4
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->defensivePact:Z

    if-eqz v2, :cond_5

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$7;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "DefensivePact"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v9, v2, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int v10, v2, v4

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;Ljava/lang/String;IIIII)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    :cond_5
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->nonAggressionPact:Z

    if-eqz v2, :cond_6

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$8;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "NonAggressionPact"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v9, v2, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int v10, v2, v4

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;Ljava/lang/String;IIIII)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    :cond_6
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->proclaimIndependence:Z

    if-eqz v2, :cond_7

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$9;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "ProclaimIndependence"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v9, v2, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int v10, v2, v4

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;Ljava/lang/String;IIIII)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    :cond_7
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listLEFT:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->militaryAccess:Z

    if-eqz v2, :cond_8

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$10;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "MilitaryAccess"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v9, v2, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int v10, v2, v4

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;Ljava/lang/String;IIIII)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v8, v2

    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v3

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int v8, v3, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iGold:I

    if-lez v2, :cond_9

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$11;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Gold"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int v2, v19, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sub-int v9, v2, v3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int v10, v2, v3

    const/4 v11, 0x1

    const v12, 0xf4240

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v13, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iGold:I

    const v14, 0x3f266666    # 0.65f

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;Ljava/lang/String;IIIIIIIF)V

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    :cond_9
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iGold:I

    if-lez v2, :cond_a

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$12;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Resources"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int v2, v19, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sub-int v9, v2, v3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int v10, v2, v3

    const/4 v11, 0x1

    const v12, 0xea60

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v13, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iGold:I

    const v14, 0x3f266666    # 0.65f

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;Ljava/lang/String;IIIIIIIF)V

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    :cond_a
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->lProvinces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$13;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->provinces:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v6, "Provinces"

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->lProvinces:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget v6, v3, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->iCivRIGHT:I

    const/4 v7, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v9, v3, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v3, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x4

    add-int/2addr v10, v3

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;ILjava/lang/String;IIIII)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    :cond_b
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iDeclarWarOnCivID:I

    if-lez v2, :cond_c

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$14;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_war:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v6, "DeclareWar"

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iDeclarWarOnCivID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v6, v3, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iDeclarWarOnCivID:I

    const/4 v7, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v9, v3, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v3, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x4

    add-int/2addr v10, v3

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;ILjava/lang/String;IIIII)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    :cond_c
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iFormCoalitionAgainst:I

    if-lez v2, :cond_d

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$15;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_war_preparations:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v6, "FormACoalitionAgainst"

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iFormCoalitionAgainst:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget v6, v3, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->iFormCoalitionAgainst:I

    const/4 v7, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v9, v3, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v3, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x4

    add-int/2addr v10, v3

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;ILjava/lang/String;IIIII)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    :cond_d
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->defensivePact:Z

    if-eqz v2, :cond_e

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$16;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "DefensivePact"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v9, v2, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int v10, v2, v4

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$16;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;Ljava/lang/String;IIIII)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    :cond_e
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->nonAggressionPact:Z

    if-eqz v2, :cond_f

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$17;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "NonAggressionPact"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v9, v2, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int v10, v2, v4

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$17;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;Ljava/lang/String;IIIII)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    :cond_f
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->proclaimIndependence:Z

    if-eqz v2, :cond_10

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$18;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "ProclaimIndependence"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v9, v2, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int v10, v2, v4

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$18;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;Ljava/lang/String;IIIII)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    :cond_10
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;->listRight:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/TradeRequest_List;->militaryAccess:Z

    if-eqz v2, :cond_11

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$19;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "MilitaryAccess"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v9, v2, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int v10, v2, v4

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$19;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;Ljava/lang/String;IIIII)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v8, v2

    :cond_11
    const/16 v18, 0x0

    :goto_0
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_13

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v3

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v2, v3

    if-gt v2, v8, :cond_12

    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :cond_12
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v3

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int v8, v3, v2

    goto :goto_1

    :cond_13
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$20;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "Cancel"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v8, v2

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    const/4 v10, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$20;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;Ljava/lang/String;IIIIZ)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$21;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "SendProposal"

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    sget v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    const/4 v10, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$21;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;Ljava/lang/String;IIIIZ)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left2:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    add-int v12, v2, v3

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$22;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "TradeRequest"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v5, v3, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest$22;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;Ljava/lang/String;IZZ)V

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v19, 0x2

    sub-int v11, v3, v4

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v4

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v3, v12

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_14

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v3, v12

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_2
    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v9, p0

    move-object v10, v2

    move/from16 v13, v19

    invoke-virtual/range {v9 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->updateLanguage()V

    const/16 v18, 0x0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getMenuElementsSize()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_16

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v2

    if-gtz v2, :cond_15

    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    :cond_14
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v4

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v14, v3, v4

    goto :goto_2

    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    goto :goto_4

    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_OfferAlliance;->lTime:J

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getMenuElementsSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->iOnCivID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    invoke-static {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->sendTradeRequest(IILage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;)Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGame_TOP_All(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Sent"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v1, 0x1194

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->setVisible(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getMenuElementsSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->setVisible(Z)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->actionElement(I)V

    goto :goto_0
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 10

    const/4 v9, 0x0

    const/4 v7, 0x1

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getWidth()I

    move-result v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getPosY()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getHeight()I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v6, v0, v2

    move-object v2, p1

    move v8, v7

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_TITLE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_vertical:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int v5, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getPosY()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_vertical:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int v6, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getHeight()I

    move-result v0

    add-int/lit8 v8, v0, -0x2

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ee66666    # 0.45f

    invoke-direct {v0, v9, v9, v9, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getHeight()I

    move-result v1

    div-int/lit8 v5, v1, 0x4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getPosY()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int v5, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getWidth()I

    move-result v6

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :cond_0
    return-void
.end method

.method protected final getElementW()I
    .locals 1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getW()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected final getH()I
    .locals 1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getHeight()I

    move-result v0

    return v0
.end method

.method protected final getW()I
    .locals 1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getWidth()I

    move-result v0

    return v0
.end method

.method protected onHovered()V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setOrderOfMenu_InGame_TradeRequest()V

    return-void
.end method

.method protected setHeight(I)V
    .locals 2

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setHeight(I)V

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_SendMessage_TradeLEFT()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setHeight(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_SendMessage_TradeRIGHT()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setHeight(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_SendMessage_TradeLEFT()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateScrollable()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_SendMessage_TradeRIGHT()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateScrollable()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_SendMessage_TradeLEFT()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateMenuElements_IsInView()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_SendMessage_TradeRIGHT()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateMenuElements_IsInView()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected setPosX(I)V
    .locals 3

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setPosX(I)V

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_SendMessage_TradeLEFT()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getPosX()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_SendMessage_TradeLEFT()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setPosX(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_SendMessage_TradeRIGHT()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setPosX(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected setPosY(I)V
    .locals 2

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setPosY(I)V

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_SendMessage_TradeLEFT()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getPosY()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setPosY(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_SendMessage_TradeRIGHT()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getPosY()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setPosY(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected setVisible(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setVisible(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_SendMessage_TradeLEFT()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_SendMessage_TradeRIGHT()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method protected setWidth(I)Z
    .locals 4

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setWidth(I)Z

    move-result v0

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_SendMessage_TradeRIGHT()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_TradeRequest;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setPosX(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected updateLanguage()V
    .locals 0

    return-void
.end method
