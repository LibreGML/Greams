.class public final Lage/of/civilizations2/jakowski/lukasz/X;
.super Ljava/lang/Object;


# static fields
.field public static final VERSION:Ljava/lang/String; = "TKB2023.1"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changePlayerCiv(I)V
    .locals 4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Player;->setCivID(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToProvinceID(I)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->loadPlayersFlag()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->buildFogOfWar(I)V

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->buildMetProvincesAndCivs()V

    :cond_0
    return-void
.end method

.method public static rebuildSelectDecisionList()V
    .locals 5

    :try_start_0
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const-string v1, "menus"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getViewID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->onBackPressed()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getViewID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectDecision_List;

    invoke-direct {v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectDecision_List;-><init>()V

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getViewID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getViewID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static rebuildSelectEvents2List()V
    .locals 5

    :try_start_0
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const-string v1, "menus"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getViewID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->onBackPressed()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getViewID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectEvent_List;

    invoke-direct {v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectEvent_List;-><init>()V

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getViewID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getViewID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static rebuildSelectEventsList()V
    .locals 8

    :try_start_0
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const-string v1, "menus"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const-class v3, Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const-string v4, "CREATE_SCENARIO_EVENTS"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    const-class v5, Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const-string v6, "CREATE_SCENARIO_EVENTS_LIST"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->onBackPressed()V

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;

    invoke-direct {v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_List;-><init>()V

    invoke-interface {v6, v1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    const/4 v7, 0x0

    if-nez v6, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static rebuildSelectLeaderList()V
    .locals 5

    :try_start_0
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const-string v1, "menus"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getViewID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->onBackPressed()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getViewID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectLeader_List;

    invoke-direct {v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectLeader_List;-><init>()V

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getViewID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getViewID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static runMyEvent(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->eventsGD:Lage/of/civilizations2/jakowski/lukasz/Events_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Events_GameData;->lEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addEventToRunID(I)V

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getRepeatable()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->setWasFired(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static runMyEvent(Ljava/lang/String;)V
    .locals 1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-static {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/X;->runMyEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static varargs setMyView([Ljava/lang/Class;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Lage/of/civilizations2/jakowski/lukasz/SliderMenu;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->resetHoverActive()V

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const-string v1, "keyboard"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    const-class v2, Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const-string v4, "fromViewID"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getViewID()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    const-class v4, Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const-string v5, "viewID"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    aget-object v5, p0, v3

    const-string v6, "xMenu"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    const-class v9, Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const-string v10, "addMenu"

    new-array v11, v1, [Ljava/lang/Class;

    const-class v12, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    aput-object v12, v11, v3

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    new-array v11, v1, [Ljava/lang/Object;

    new-array v12, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    new-array v13, v3, [Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move v8, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    const/4 v10, 0x1

    :goto_0
    array-length v11, p0

    if-ge v10, v11, :cond_0

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    aget-object v12, p0, v10

    new-array v13, v3, [Ljava/lang/Class;

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    new-array v13, v3, [Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    invoke-virtual {v11, v8, v12}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->addNextMenuToView(ILage/of/civilizations2/jakowski/lukasz/SliderMenu;)I

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    goto :goto_2

    :cond_1
    const-class v9, Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const-string v10, "menus"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    const/4 v11, 0x0

    :goto_1
    array-length v12, p0

    if-ge v11, v12, :cond_2

    aget-object v12, p0, v11

    new-array v13, v3, [Ljava/lang/Class;

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    new-array v13, v3, [Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    invoke-interface {v10, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v4, v9, v7}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    const-class v7, Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const-string v9, "toViewID"

    invoke-virtual {v7, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    const-class v9, Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const-string v10, "updateViewID"

    new-array v11, v3, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menu;->eMAINMENU:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    :goto_3
    return-void
.end method

.method public static unifiedPopulation(I)V
    .locals 4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v2

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->clearData()V

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    return-void
.end method

.method public static updateKeyboard_Actions()V
    .locals 5

    :try_start_0
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const-string v1, "CREATE_SCENARIO_EVENTS"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getViewID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisibleCreateScenario_Events_Edit()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/X$1;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/X$1;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardSave:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/X$2;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/X$2;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardDelete:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/X$3;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/X$3;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardWrite:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    goto/16 :goto_0

    :cond_0
    const-class v2, Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const-string v3, "CREATE_SCENARIO_EVENTS_SELECTDECISION"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getViewID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-ne v3, v4, :cond_1

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/X$4;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/X$4;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardSave:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/X$5;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/X$5;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardDelete:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/X$6;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/X$6;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardWrite:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    goto :goto_0

    :cond_1
    const-class v3, Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const-string v4, "CREATE_SCENARIO_EVENTS_SELECTEVENT"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getViewID()I

    move-result v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-ne v1, v4, :cond_2

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/X$7;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/X$7;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardSave:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/X$8;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/X$8;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardDelete:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/X$9;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/X$9;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardWrite:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    goto :goto_0

    :cond_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getViewID()I

    move-result v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectLeader;->xMenu:I

    if-ne v1, v4, :cond_3

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/X$10;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/X$10;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardSave:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/X$11;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/X$11;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardDelete:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/X$12;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/X$12;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardWrite:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public l()V
    .locals 0

    return-void
.end method
