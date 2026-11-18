.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_InGame_EndOfGame.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0xe1

.field protected static final SCALE_CHANGE:F = 0.175f


# instance fields
.field private lTime:J


# direct methods
.method protected constructor <init>()V
    .locals 23

    move-object/from16 v12, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, v12, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->lTime:J

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame$1;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    const/4 v14, 0x2

    div-int/2addr v0, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getElementWidth()I

    move-result v1

    div-int/2addr v1, v14

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v4, v0, v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getElementWidth()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v6, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v7, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;Ljava/lang/String;IIIII)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame$2;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

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

    div-float/2addr v3, v1

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

    div-float/2addr v4, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "Score"

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->buildPlayerScore()F

    move-result v1

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->victoryPoints:I

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/2addr v0, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getElementWidth()I

    move-result v1

    div-int/2addr v1, v14

    sub-int v9, v0, v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getElementWidth()I

    move-result v11

    const/4 v10, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;III)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame$3;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/2addr v0, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getElementWidth()I

    move-result v1

    div-int/2addr v1, v14

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v4, v0, v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getElementWidth()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v6, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v7, v0, 0x5

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame$4;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/2addr v0, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getElementWidth()I

    move-result v1

    div-int/2addr v1, v14

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v4, v0, v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getElementWidth()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v6, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v7, v0, 0x5

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame$5;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/2addr v0, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getElementWidth()I

    move-result v1

    div-int/2addr v1, v14

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v4, v0, v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getElementWidth()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v6, v0, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v7, v0, 0x5

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Options_NS;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    div-int/2addr v1, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getElementWidth()I

    move-result v2

    div-int/2addr v2, v14

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v18, v1, v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getElementWidth()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v20, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v21, v1, 0x5

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v19, 0x0

    const/16 v22, 0x1

    move-object v15, v0

    invoke-direct/range {v15 .. v22}, Lage/of/civilizations2/jakowski/lukasz/Button_Options_NS;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v0, v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v2

    const/4 v7, 0x0

    move v2, v0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x5

    div-int/2addr v2, v14

    sub-int/2addr v4, v2

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosY(I)V

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    :goto_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    if-ne v1, v14, :cond_1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v3

    :cond_1
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x5

    sub-int/2addr v4, v2

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosY(I)V

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v19, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    const/16 v20, 0x1

    move-object v15, v0

    invoke-direct/range {v15 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;-><init>(IIIIZ)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    move-object/from16 v0, p0

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->updateLanguage()V

    invoke-super {v12, v7}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    return-void
.end method

.method protected static final clickBack()V
    .locals 2

    const/16 v0, 0x7d

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->SCALE_ANIMATION_TIME:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_EndOfGame(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkProvinceActionMenu()V

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Dialog;->END_GAME_EXIT_MAIN_MENU:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Dialog;)V

    goto :goto_1

    :cond_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Dialog;->END_GAME_SPECTACTOR:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Dialog;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Dialog;->END_GAME_ONE_MORE_TURN:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Dialog;)V

    goto :goto_1

    :cond_3
    sget-boolean p1, Lage/of/civilizations2/jakowski/lukasz/Menu_Victory;->VICTORIOUS:Z

    if-eqz p1, :cond_4

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eVICTORY:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    goto :goto_0

    :cond_4
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eDEFEAT:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    :goto_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->updateWorldMap_Shaders()V

    :goto_1
    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x0

    const v3, 0x3e19999a    # 0.15f

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->patt2:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->patt2:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->lTime:J

    const-wide/16 v11, 0xe1

    add-long/2addr v1, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/high16 v13, 0x43610000    # 225.0f

    const v5, 0x3ee66666    # 0.45f

    cmp-long v6, v1, v3

    if-ltz v6, :cond_0

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v14, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->lTime:J

    sub-long/2addr v6, v14

    long-to-float v6, v6

    div-float/2addr v6, v13

    mul-float v6, v6, v5

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getElementWidth()I

    move-result v2

    div-int/lit8 v5, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getElementWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getElementWidth()I

    move-result v2

    div-int/lit8 v5, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getElementWidth()I

    move-result v2

    div-int/lit8 v6, v2, 0x2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getElementWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getElementWidth()I

    move-result v2

    div-int/lit8 v6, v2, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->lTime:J

    add-long/2addr v1, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    sub-int v1, p3, v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->lTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    div-float/2addr v3, v13

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    move v11, v1

    goto :goto_1

    :cond_1
    move/from16 v11, p3

    :goto_1
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuPosY()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, v11

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElementsSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElementsSize()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v6

    add-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v6

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v6, v2, v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v3, v2, v10

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuPosY()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, v11

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElementsSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElementsSize()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v0, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v6

    add-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v6

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v6, v2, v6

    const/4 v7, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    move/from16 v1, p4

    invoke-super {v0, v9, v10, v11, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected getElementWidth()I
    .locals 2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    int-to-float v0, v0

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected final onBackPressed()V
    .locals 0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->clickBack()V

    return-void
.end method

.method protected setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->lTime:J

    return-void
.end method

.method protected updateLanguage()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Menu_Victory;->VICTORIOUS:Z

    if-eqz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Victory"

    goto :goto_0

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Defeat"

    :goto_0
    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Timeline"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "JustOneMoreTurnIPromise"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "SpectatorMode"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_EndOfGame;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "ExitToMainMenu"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    return-void
.end method
