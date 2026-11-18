.class Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;
.super Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;
.source "Event_Outcome_WhitePeace.java"


# instance fields
.field protected iCivID:I

.field protected iCivID2:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome;-><init>()V

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->iCivID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->iCivID2:I

    return-void
.end method


# virtual methods
.method protected canMakeAction()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->getCivID()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->getCivID()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->getCivID2()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->getCivID2()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->getCivID()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->getCivID2()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    float-to-int v1, v1

    const/16 v2, -0x64

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected final editViewID()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_OUT_WHITEPEACE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void
.end method

.method protected getCivID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->iCivID:I

    return v0
.end method

.method protected getCivID2()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->iCivID2:I

    return v0
.end method

.method protected getConditionText()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "WhitePeace"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->getCivID2()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

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

    const-string v2, "WhitePeace"

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->canMakeAction()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "WhitePeace"

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

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->getCivID()I

    move-result v3

    const/4 v4, 0x0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-direct {v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(III)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v3, " - "

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->getCivID2()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->getCivID2()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(III)V

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

.method protected outcomeAction()V
    .locals 4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->canMakeAction()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->getCivID()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->getCivID2()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->whitePeace(II)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Peace;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->getCivID()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->getCivID2()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog_Peace;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->addHistoryLog(Lage/of/civilizations2/jakowski/lukasz/HistoryLog;)V

    :cond_0
    return-void
.end method

.method protected setCivID(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->iCivID:I

    return-void
.end method

.method protected setCivID2(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->iCivID2:I

    return-void
.end method

.method protected updateCivIDAfterRemove(I)Z
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->iCivID:I

    if-ne v1, p1, :cond_2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->iCivID:I

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->iCivID2:I

    if-ne v1, p1, :cond_3

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->iCivID2:I

    const/4 v0, 0x1

    :cond_1
    :goto_1
    return v0

    :cond_2
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->iCivID:I

    if-ge p1, v1, :cond_0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->iCivID:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->iCivID:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->iCivID2:I

    if-ge p1, v1, :cond_1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->iCivID2:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Outcome_WhitePeace;->iCivID2:I

    goto :goto_1
.end method
