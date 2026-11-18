.class Lage/of/civilizations2/jakowski/lukasz/Menu_Scenario_Age_List;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_Scenario_Age_List.java"


# direct methods
.method protected constructor <init>()V
    .locals 23

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAgesSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Age;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge(I)Lage/of/civilizations2/jakowski/lukasz/Age;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Age;->getBeginningYear()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getYear(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge(I)Lage/of/civilizations2/jakowski/lukasz/Age;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Age;->getEndYear()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getYear(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v2, v2, v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v4, v0, 0x1

    mul-int v3, v3, v4

    add-int v11, v2, v3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v12, v2, 0x2

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v14, 0x1

    move-object v7, v1

    invoke-direct/range {v7 .. v14}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Age;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ReflectedBG;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge(I)Lage/of/civilizations2/jakowski/lukasz/Age;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Age;->getName()Ljava/lang/String;

    move-result-object v16

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v17, v2, 0x5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v18, v2, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v2, v2, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v0, v0, v4

    add-int v19, v2, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v20, v0, v2

    sget v21, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v22, 0x1

    move-object v15, v1

    invoke-direct/range {v15 .. v22}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ReflectedBG;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v5, v5, 0x2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x5

    add-int/2addr v5, v7

    sub-int v5, v0, v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_Scenario_Age_List;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Scenario_Age_List;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_AGE:I

    div-int/lit8 p1, p1, 0x2

    if-eq v0, p1, :cond_0

    sput p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_AGE:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_AGE:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge(I)Lage/of/civilizations2/jakowski/lukasz/Age;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Age;->getBeginningYear()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_AGE:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge(I)Lage/of/civilizations2/jakowski/lukasz/Age;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Age;->getEndYear()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_AGE:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge(I)Lage/of/civilizations2/jakowski/lukasz/Age;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Age;->getBeginningYear()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_AGE:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge(I)Lage/of/civilizations2/jakowski/lukasz/Age;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Age;->getEndYear()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_AGE:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge(I)Lage/of/civilizations2/jakowski/lukasz/Age;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Age;->getBeginningYear()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr v0, p1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_AGE:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge(I)Lage/of/civilizations2/jakowski/lukasz/Age;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Age;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_AGE:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge(I)Lage/of/civilizations2/jakowski/lukasz/Age;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Age;->getBeginningYear()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getYear(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_AGE:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge(I)Lage/of/civilizations2/jakowski/lukasz/Age;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Age;->getEndYear()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getYear(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v1, p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/util/List;Ljava/util/List;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateSelecetScenarioAge_Slider()V

    :cond_0
    return-void
.end method

.method protected getMenuElementIsActive(ZI)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElementIsActive(ZI)Z

    move-result p1

    if-nez p1, :cond_1

    rem-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_0

    div-int/lit8 p2, p2, 0x2

    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_AGE:I

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
