.class Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;
.super Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;
.source "Event_Conditions_AtWar.java"


# instance fields
.field protected iCivID:I

.field protected iCivID2:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;-><init>()V

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID2:I

    return-void
.end method


# virtual methods
.method protected final editViewID()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_ATWAR:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void
.end method

.method protected getCivID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID:I

    return v0
.end method

.method protected getCivID2()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID2:I

    return v0
.end method

.method protected getConditionText()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "AtWar"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->getCivID2()I

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

    const-string v2, "AtWar"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected outCondition()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->getCivID()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->getCivID2()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    float-to-int v2, v2

    const/16 v3, -0x64

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected setCivID(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID:I

    return-void
.end method

.method protected setCivID2(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID2:I

    return-void
.end method

.method protected updateCivIDAfterRemove(I)Z
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID:I

    if-ne v1, p1, :cond_2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID:I

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID2:I

    if-ne v1, p1, :cond_3

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID2:I

    const/4 v0, 0x1

    :cond_1
    :goto_1
    return v0

    :cond_2
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID:I

    if-ge p1, v1, :cond_0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID2:I

    if-ge p1, v1, :cond_1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID2:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_AtWar;->iCivID2:I

    goto :goto_1
.end method
