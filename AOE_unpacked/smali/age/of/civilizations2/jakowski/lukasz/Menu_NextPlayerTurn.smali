.class Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_NextPlayerTurn.java"


# static fields
.field private static final ANIMATION_TIME:I = 0xbb8

.field protected static SCALE_BEFORE_NEXT_PLAYER_MENU:F = 1.0f

.field private static lTime:J = 0x0L

.field private static worldsProvinces:Ljava/lang/String; = ""


# instance fields
.field private sPlayer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 13

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn$1;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;IIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;-><init>(IIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->updateLanguage()V

    return-void
.end method

.method protected static final clickBack()V
    .locals 3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->resetTime()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eINGAME:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScroll()Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->stopScrollingTheMap()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->updateWorldMap_Shaders()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->disableDrawCivilizationRegions(I)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->clickEnd()V

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSED_BY_NEXT_TURN:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSE:Z

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->resetTime()V

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSED_BY_NEXT_TURN:Z

    :cond_0
    return-void
.end method

.method protected static final clickEnd()V
    .locals 9

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AoC"

    const-string v2, "clickEnd: 000"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->clickEnd_LoadPlayerData()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "clickEnd: 1111"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilizationsSize()I

    move-result v3

    if-ge v0, v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v5

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsSize()I

    move-result v4

    if-ge v3, v4, :cond_0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getAlliance(I)Lage/of/civilizations2/jakowski/lukasz/Alliance;

    move-result-object v5

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Alliance;->getCivilization(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->updateMoveTime()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsSize()I

    move-result v3

    if-ge v0, v3, :cond_2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->updateMoveTime()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrateSize()I

    move-result v3

    if-ge v0, v3, :cond_3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMigrate(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->updateMoveTime()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-nez v0, :cond_4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsSize()I

    move-result v0

    if-lez v0, :cond_4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->soundsManager:Lage/of/civilizations2/jakowski/lukasz/SoundsManager;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_MOVE_ARMY:I

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->playSound(I)V

    :cond_4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_4
    if-lez v0, :cond_6

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v5

    if-ne v4, v5, :cond_5

    const/4 v4, 0x0

    :goto_5
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsSize()I

    move-result v5

    if-ge v4, v5, :cond_5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->updateMoveTime()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v0

    add-int/2addr v0, v3

    :goto_6
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v4

    if-ge v0, v4, :cond_9

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v5

    if-ne v4, v5, :cond_8

    const/4 v4, 0x0

    :goto_7
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsSize()I

    move-result v5

    if-ge v4, v5, :cond_8

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v5

    if-eqz v5, :cond_7

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->updateMoveTime()V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    const-wide/16 v4, 0x0

    sput-wide v4, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->PROVINCE_COLOR_ANIMATION_TIMER:J

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->runNextEvent()V

    sput-boolean v3, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Messages;->START_ANIMATION:Z

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "clickEnd: END"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static final clickEnd_LoadPlayerData()V
    .locals 7

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSE:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-eqz v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    goto/16 :goto_3

    :cond_1
    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Player;->iBefore_ActiveProvince:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    goto/16 :goto_3

    :cond_2
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-nez v1, :cond_9

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->iBefore_PosY:I

    const v4, -0xf423f

    if-ne v1, v4, :cond_4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->SCALE_BEFORE_NEXT_PLAYER_MENU:F

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->setCurrentScale(F)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v4

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    if-ne v1, v4, :cond_3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v4

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToProvinceID(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v4

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    goto/16 :goto_3

    :cond_3
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToProvinceID(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    goto/16 :goto_3

    :cond_4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->updatePosOfMap_NewTurn:Z

    if-nez v1, :cond_5

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getNumOfPlayersInGame()I

    move-result v1

    if-le v1, v2, :cond_6

    :cond_5
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Player;->fBefore_Scale:F

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->setCurrentScale(F)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Player;->iBefore_PosX:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setStartingPosX(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Player;->iBefore_PosY:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setStartingPosY(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->updateSecondSideOfMap()V

    :cond_6
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-eqz v1, :cond_8

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    if-gez v1, :cond_7

    goto :goto_1

    :cond_7
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    goto :goto_3

    :cond_8
    :goto_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Player;->iBefore_ActiveProvince:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    goto :goto_3

    :cond_9
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-eqz v1, :cond_b

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    if-gez v1, :cond_a

    goto :goto_2

    :cond_a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    goto :goto_3

    :cond_b
    :goto_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Player;->iBefore_ActiveProvince:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    :goto_3
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->visible_CivInfo:I

    if-ltz v1, :cond_c

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->visible_CivInfo:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setActiveCivInfo(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_CivInfo(Z)V

    :cond_c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    iget-boolean v4, v4, Lage/of/civilizations2/jakowski/lukasz/Player;->visible_Outliner:Z

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_Menu_InGame_Outliner(Z)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    iget-boolean v4, v4, Lage/of/civilizations2/jakowski/lukasz/Player;->visible_Alliances:Z

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleInGame_MilitaryAlliances(Z)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    iget-boolean v4, v4, Lage/of/civilizations2/jakowski/lukasz/Player;->visible_MapModes:Z

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_MapModes(Z)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->visible_History:Z

    if-eqz v1, :cond_d

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_History()V

    :cond_d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->visible_HRE:Z

    if-eqz v1, :cond_e

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_HRE()V

    :cond_e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->visible_WorldPop:Z

    if-eqz v1, :cond_f

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_WorldPopulation()V

    :cond_f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->visible_CensusOfProvince:I

    if-ltz v1, :cond_10

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CensusOfProvince;->PROVINCE_ID:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_CensusOfProvince(I)V

    :cond_10
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->visible_Alliance:I

    if-ltz v1, :cond_11

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Player;->visible_Alliance:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_Alliance(I)V

    :cond_11
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->visible_Rank:Z

    if-eqz v1, :cond_12

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_Rank()V

    :cond_12
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->visible_ConqueredProvinces:Z

    if-eqz v1, :cond_13

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_ConqueredProvinces()V

    :cond_13
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->visible_VictoryConditions:Z

    if-eqz v1, :cond_14

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_VictoryConditions()V

    :cond_14
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->visible_BuildingsConstructed:Z

    if-eqz v1, :cond_15

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_BuildingsConstrcuted()V

    :cond_15
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->visible_RecruitedArmy:Z

    if-eqz v1, :cond_16

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_RecruitedArmy()V

    :cond_16
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->visible_Tribute:Z

    if-eqz v1, :cond_17

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_Tribute()V

    :cond_17
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->visible_Army:Z

    if-eqz v1, :cond_18

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_Army()V

    :cond_18
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->visible_Wars:Z

    if-eqz v1, :cond_19

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_Wars()V

    :cond_19
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->visible_WarStats:I

    if-ltz v1, :cond_1a

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->visible_WarStats:I

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_WarDetails;->WAR_ID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_WarDetails()V

    :cond_1a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->disableAllViews()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/Player;->iACTIVE_VIEW_MODE:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->setActiveViewID(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkProvinceActionMenu()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->visible_BuildingsMore:Z

    if-eqz v1, :cond_1b

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    iget-boolean v4, v4, Lage/of/civilizations2/jakowski/lukasz/Player;->visible_BuildingsMore:Z

    invoke-virtual {v1, v4, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceBuild(ZZ)V

    goto :goto_4

    :cond_1b
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1, v3, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceBuild(ZZ)V

    :goto_4
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/SaveManager;->gameSaved:Z

    if-eqz v1, :cond_1c

    sput-boolean v3, Lage/of/civilizations2/jakowski/lukasz/SaveManager;->gameSaved:Z

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildMenu_InGame_SavedGame()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :try_start_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    :catch_1
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catch_2
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catch_3
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catch_4
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catch_5
    move-exception v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :try_start_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_5

    :catch_6
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_7
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_8
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_9
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_a
    move-exception v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :try_start_3
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/StackOverflowError; {:try_start_3 .. :try_end_3} :catch_b

    goto :goto_5

    :catch_b
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_c
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_d
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_e
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_f
    move-exception v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :try_start_4
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/StackOverflowError; {:try_start_4 .. :try_end_4} :catch_10

    goto :goto_5

    :catch_10
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_11
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_12
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_13
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_5
    return-void
.end method

.method protected static final updateData()V
    .locals 6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v0

    const-wide/16 v1, 0x0

    const-string v3, ""

    if-lez v0, :cond_1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-nez v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->countLandProvinces_NotWasteland()I

    move-result v3

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getPercentage(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XOfAllProvines"

    invoke-virtual {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->worldsProvinces:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->lTime:J

    goto :goto_0

    :cond_0
    sput-object v3, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->worldsProvinces:Ljava/lang/String;

    sput-wide v1, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->lTime:J

    goto :goto_0

    :cond_1
    sput-object v3, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->worldsProvinces:Ljava/lang/String;

    sput-wide v1, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->lTime:J

    :goto_0
    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->onBackPressed()V

    goto :goto_0

    :cond_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScroll()Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->stopScrollingTheMap()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->SCALE_BEFORE_NEXT_PLAYER_MENU:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScroll()Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scroll;->stopScrollingTheMap()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToCivilizationBox(IZ)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 10

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const v2, 0x3ee66666    # 0.45f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v0

    neg-int v0, v0

    add-int v4, v0, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v6, v0, 0x2

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v6, v0, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3e000000    # 0.125f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->getPosX()I

    move-result v2

    add-int v5, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v6, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int v7, v2, v4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v8, v2, 0x2

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->getPosX()I

    move-result v2

    add-int v5, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->getPosY()I

    move-result v2

    const/4 v9, 0x1

    add-int/2addr v2, v9

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v6, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int v7, v2, v4

    const/4 v8, 0x1

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->getPosX()I

    move-result v2

    add-int v5, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v6, v2, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v7, v0, v2

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->getPosX()I

    move-result v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    add-int v4, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v6

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {p4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result p4

    invoke-virtual {p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p3

    iget-object p3, p3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p3, p3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    if-eqz p3, :cond_0

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {p4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result p4

    invoke-virtual {p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p3

    iget-object p3, p3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p3, p3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_0

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {p4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result p4

    invoke-virtual {p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p3

    iget-object p3, p3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p3, p3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getName()Ljava/lang/String;

    move-result-object p3

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 p4, p4, 0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    add-int/2addr p4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p4, v0

    add-int/2addr p4, p2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CIV_NAME:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p3, p4, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->sPlayer:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    add-int/2addr p4, v9

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 p4, p4, 0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    add-int/2addr p4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p4, v0

    add-int/2addr p4, p2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CIV_NAME:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p3, p4, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {p4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result p4

    invoke-virtual {p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p3

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object p3

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 p4, p4, 0x2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    add-int/2addr p4, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p4, v0

    add-int/2addr p4, p2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_RANK:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p3, p4, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-wide p3, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->lTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    sub-long/2addr v2, v4

    cmp-long v0, p3, v2

    if-lez v0, :cond_3

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p3

    const p4, 0x3f4ccccd    # 0.8f

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-wide v2, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->lTime:J

    long-to-float p3, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-float v0, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    sub-float/2addr v0, v2

    cmpg-float p3, p3, v0

    if-gtz p3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->lTime:J

    sub-long/2addr v2, v4

    long-to-float p3, v2

    const/high16 v0, 0x447a0000    # 1000.0f

    sub-float/2addr p3, v0

    const v0, 0x453b8000    # 3000.0f

    div-float/2addr p3, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p3, p3, v0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p3, v0

    sub-float p3, v1, p3

    goto :goto_1

    :cond_1
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->worldsProvinces:Ljava/lang/String;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, p4

    float-to-int p4, v3

    sub-int/2addr p2, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 p4, p4, 0x2

    sub-int/2addr p2, p4

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {p4, v3, v4, v5, p3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, v0, v2, p2, p4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    goto :goto_2

    :cond_2
    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected final onBackPressed()V
    .locals 0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->clickBack()V

    return-void
.end method

.method protected onMenuPressed()V
    .locals 0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->onBackPressed()V

    return-void
.end method

.method protected updateLanguage()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Player"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->sPlayer:Ljava/lang/String;

    return-void
.end method
