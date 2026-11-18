.class Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_CreateScenario_Assign_Select_Alphabet.java"


# instance fields
.field private lCharacters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 27

    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v11, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet$1;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x1

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v11, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet$2;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x1

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet;->lCharacters:Ljava/util/List;

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_4

    const/4 v2, 0x0

    :goto_2
    iget-object v4, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v2, 0x0

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_3

    iget-object v2, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet;->lCharacters:Ljava/util/List;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_4
    iget-object v2, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_7

    add-int/lit8 v2, v1, 0x1

    move v4, v2

    :goto_5
    iget-object v5, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    iget-object v5, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    iget-object v6, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Character;

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v6

    if-le v5, v6, :cond_5

    iget-object v5, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    iget-object v6, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet;->lCharacters:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    move v1, v2

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_6
    iget-object v2, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    const-string v4, "]"

    const-string v5, "["

    if-eqz v2, :cond_8

    iget-object v2, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v2, v6, :cond_8

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Active;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/lit8 v5, v1, 0x1

    mul-int v14, v4, v5

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v18, 0x1

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Active;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/lit8 v5, v1, 0x1

    mul-int v22, v4, v5

    sget v23, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v24, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v25, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v26, 0x1

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v26}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_9
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    if-ge v1, v2, :cond_b

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_8
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v0

    if-ge v2, v5, :cond_a

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosX(I)V

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setWidth(I)V

    add-int/2addr v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_a
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosX(I)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setWidth(I)V

    :cond_b
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    const/4 v0, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v0, v2, v3, v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;-><init>(Ljava/lang/String;IZZ)V

    const/4 v2, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v6, v10

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet;->lCharacters:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_ASSIGN_SELECT:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_ASSIGN_SELECT:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void
.end method

.method protected updateLanguage()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Assign_Select_Alphabet;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "SelectCivilization"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
