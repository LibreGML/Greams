.class Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;
.super Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;
.source "Event_Outcome_FormCivilization.java"


# instance fields
.field protected iCivID:I

.field protected sTag:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->iCivID:I

    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->sTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canMakeAction()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    if-ge v0, v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->sTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->sTag:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected final editViewID()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_FORM_CIV:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void
.end method

.method protected getCivID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->iCivID:I

    return v0
.end method

.method protected getConditionText()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "FormCivilization"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "FormCivilization"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getHoverText()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->canMakeAction()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "FormCivilization"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v3

    const/4 v4, 0x0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-direct {v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(III)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v3, " -> "

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->sTag:Ljava/lang/String;

    return-object v0
.end method

.method protected outcomeAction()V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->canMakeAction()Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v1, -0x1

    const/4 v7, 0x0

    :goto_0
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v14

    if-ge v7, v14, :cond_2

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->sTag:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    move v1, v7

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v14

    if-gtz v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v14

    if-ne v1, v14, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    if-lez v1, :cond_a

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivTag(Ljava/lang/String;)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14, v13}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivTag(Ljava/lang/String;)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->loadFlag()Z

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->loadFlag()Z

    const/4 v7, 0x0

    :goto_2
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegionsSize()I

    move-result v14

    if-ge v7, v14, :cond_3

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->buildScaleOfText()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_3
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegionsSize()I

    move-result v14

    if-ge v7, v14, :cond_4

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->buildScaleOfText()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v8

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v8

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v8

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14, v8}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateCivilizationIdeology()V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateCivilizationIdeology()V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameNewGame:Lage/of/civilizations2/jakowski/lukasz/Game_NewGame;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game_NewGame;->updateFormableCivilizations(I)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameNewGame:Lage/of/civilizations2/jakowski/lukasz/Game_NewGame;

    invoke-virtual {v14, v1}, Lage/of/civilizations2/jakowski/lukasz/Game_NewGame;->updateFormableCivilizations(I)V

    const/4 v7, 0x0

    :goto_4
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v14

    if-ge v7, v14, :cond_5

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->setFromCivID(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_5
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v14

    if-ge v7, v14, :cond_6

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v15, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->setFromCivID(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    :goto_6
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v14

    if-ge v7, v14, :cond_9

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    if-eq v14, v15, :cond_7

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v14

    if-ne v14, v1, :cond_8

    :cond_7
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Player;->loadPlayersFlag()V

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_9
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15, v1}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->swapIDsOfCivs(II)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v14

    if-ltz v14, :cond_0

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v9

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    goto/16 :goto_1

    :cond_a
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivTag(Ljava/lang/String;)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivName(Ljava/lang/String;)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->loadFlag()Z

    const/4 v7, 0x0

    :goto_7
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegionsSize()I

    move-result v14

    if-ge v7, v14, :cond_b

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->buildScaleOfText()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_b
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateCivilizationIdeology()V

    :try_start_0
    sget-object v14, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "game/civilizations/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getText()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v14

    invoke-static {v14}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    :goto_8
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameNewGame:Lage/of/civilizations2/jakowski/lukasz/Game_NewGame;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game_NewGame;->updateFormableCivilizations(I)V

    const/4 v7, 0x0

    :goto_9
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v14

    if-ge v7, v14, :cond_d

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v15

    invoke-virtual {v15, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Province;->setFromCivID(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :catch_0
    move-exception v2

    :try_start_1
    sget-object v14, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "game/civilizations/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v14

    invoke-static {v14}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeologyID(Ljava/lang/String;)I

    move-result v12

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v15, v15, v16

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x437f0000    # 255.0f

    div-float v16, v16, v17

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v17, v17, v18

    const v18, 0x3f466666    # 0.775f

    invoke-direct/range {v14 .. v18}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v15, Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    move/from16 v16, v0

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v17, v0

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v18, v0

    const v19, 0x3e666666    # 0.225f

    invoke-direct/range {v15 .. v19}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorMixed(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    iget v15, v11, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    iget v15, v11, Lcom/badlogic/gdx/graphics/Color;->g:F

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    iget v15, v11, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    goto/16 :goto_8

    :catch_1
    move-exception v5

    :try_start_2
    sget-object v14, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "game/civilizations/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getText()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v14

    invoke-static {v14}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    goto/16 :goto_8

    :catch_2
    move-exception v2

    :try_start_3
    sget-object v14, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "game/civilizations/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v14

    invoke-static {v14}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeologyID(Ljava/lang/String;)I

    move-result v12

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v15, v15, v16

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x437f0000    # 255.0f

    div-float v16, v16, v17

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v17, v17, v18

    const v18, 0x3f466666    # 0.775f

    invoke-direct/range {v14 .. v18}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v15, Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    move/from16 v16, v0

    sget-object v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v17, v0

    sget-object v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v18, v0

    const v19, 0x3e666666    # 0.225f

    invoke-direct/range {v15 .. v19}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getColorMixed(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    iget v15, v11, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    iget v15, v11, Lcom/badlogic/gdx/graphics/Color;->g:F

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    iget v15, v11, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V
    :try_end_3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    goto/16 :goto_8

    :catch_3
    move-exception v3

    :try_start_4
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z
    :try_end_4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    move-result v14

    if-eqz v14, :cond_c

    :try_start_5
    sget-object v14, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "game/civilizations_editor/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v14

    invoke-static {v14}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V
    :try_end_5
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_8

    :catch_4
    move-exception v4

    :try_start_6
    sget-object v14, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "game/civilizations_editor/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v14

    invoke-static {v14}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V

    goto/16 :goto_8

    :catch_5
    move-exception v14

    goto/16 :goto_8

    :cond_c
    sget-object v14, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "game/civilizations_editor/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v14

    invoke-static {v14}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getR()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setR(I)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getG()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setG(I)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->getCivID()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v14

    invoke-virtual {v10}, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->getB()I

    move-result v15

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setB(I)V
    :try_end_6
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto/16 :goto_8

    :catch_6
    move-exception v14

    goto/16 :goto_8

    :cond_d
    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v14

    if-ltz v14, :cond_0

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v9

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sget-object v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v14, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    goto/16 :goto_1

    :catch_7
    move-exception v14

    goto/16 :goto_8
.end method

.method protected setCivID(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->iCivID:I

    return-void
.end method

.method protected setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->sTag:Ljava/lang/String;

    return-void
.end method

.method protected updateCivIDAfterRemove(I)Z
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->iCivID:I

    if-ne v0, p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->iCivID:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->iCivID:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->iCivID:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_FormCivilization;->iCivID:I

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
