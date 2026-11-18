.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_InGame_Plunder.java"


# static fields
.field protected static iProvinceID:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 10

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    mul-int/lit8 v4, v0, 0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Flag_JustFrame;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Button_Flag_JustFrame;-><init>(IIZ)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

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

    add-int v5, v0, v1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Plunder"

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x5

    invoke-direct {v1, v0, v2, v3, v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;-><init>(Ljava/lang/String;IZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v2, v4, 0x2

    sub-int v2, v0, v2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v0, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v7

    add-int/2addr v0, v5

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v7, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    if-le v0, v7, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sub-int/2addr v0, v5

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v3, v7

    mul-int/lit8 v3, v3, 0x6

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v3

    :goto_0
    move v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move v3, v5

    move v5, v7

    move v7, v8

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->updateLanguage()V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 20

    move-object/from16 v12, p0

    move/from16 v13, p1

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sput v13, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->iProvinceID:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    mul-int/lit8 v15, v0, 0x2

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder$1;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_PLUNDER:I

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v0

    const/4 v10, 0x0

    invoke-static {v0, v13, v10}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->plunderProvinceIncome(III)I

    move-result v4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v0, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x1

    sub-int/2addr v0, v9

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    add-int/lit8 v16, v0, 0x0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsPlunderSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getFromProvinceID()I

    move-result v1

    if-ne v1, v13, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getNumOfUnits()I

    move-result v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder$2;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Army"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v1, 0x2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v9

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int v1, v15, v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sub-int v5, v1, v5

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v1, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v1

    const/4 v7, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v9

    invoke-virtual {v1, v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v1

    add-int v9, v1, v0

    if-nez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v0

    :cond_2
    move v10, v0

    const v18, 0x3f266666    # 0.65f

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v19, v8

    move v8, v9

    move v9, v10

    move/from16 v10, v18

    move-object/from16 v17, v11

    move/from16 v11, p1

    invoke-direct/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;Ljava/lang/String;IIIIIIIFI)V

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x1

    sub-int/2addr v0, v9

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v16, v16, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v8, v16, v0

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder$3;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Cancel"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v4, v0, 0x2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    const/4 v7, 0x1

    move-object v0, v10

    move-object/from16 v1, p0

    move v5, v8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;Ljava/lang/String;IIIIZ)V

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder$4;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Confirm"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;Ljava/lang/String;IIIIZ)V

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    add-int v6, v0, v1

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder$5;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Plunder"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v13}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_3
    move-object/from16 v11, v17

    :goto_2
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;Ljava/lang/String;IZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v15, 0x2

    sub-int v2, v0, v1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v9

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v0, v6

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sub-int/2addr v0, v6

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v9

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    :goto_3
    move v5, v0

    const/4 v8, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v3, v6

    move v4, v15

    move-object v6, v14

    move v7, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->updateLanguage()V

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    invoke-virtual {v12, v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v2

    invoke-static {v1, v13, v2}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->plunderEfficiency(III)F

    move-result v1

    const/high16 v2, 0x44fa0000    # 2000.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_OfferAlliance;->lTime:J

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getMenuElementsSize()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    if-ltz p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->iProvinceID:I

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v1

    invoke-static {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->plunderProvince(III)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->getText()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->resetChooseProvinceData()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->resetRegroupArmyData()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGame_TOP_All(I)V

    :cond_0
    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->setVisible(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getMenuElementsSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->setVisible(Z)V

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->actionElement(I)V

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 13

    move-object v8, p1

    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_OfferAlliance;->lTime:J

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v9, 0x3ee66666    # 0.45f

    const/4 v10, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getPosY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getHeight()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v11, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_OfferAlliance;->lTime:J

    sub-long/2addr v5, v11

    long-to-float v5, v5

    const/high16 v6, 0x43960000    # 300.0f

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

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getWidth()I

    move-result v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    sub-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v1

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v10, v10, v10, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getWidth()I

    move-result v1

    add-int/lit8 v4, v1, -0x4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getHeight()I

    move-result v1

    div-int/lit8 v5, v1, 0x4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getWidth()I

    move-result v1

    add-int/lit8 v4, v1, -0x4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    invoke-virtual/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getWidth()I

    move-result v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    sub-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v1

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v10, v10, v10, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getWidth()I

    move-result v1

    add-int/lit8 v4, v1, -0x4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getHeight()I

    move-result v1

    div-int/lit8 v5, v1, 0x4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getWidth()I

    move-result v1

    add-int/lit8 v4, v1, -0x4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-virtual/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual/range {p0 .. p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :goto_0
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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getW()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected final getW()I
    .locals 1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    return v0
.end method

.method protected setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setVisible(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected updateLanguage()V
    .locals 0

    return-void
.end method
