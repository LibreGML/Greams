.class Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Happiness_Low;
.super Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;
.source "Event_Conditions_Happiness_Low.java"


# instance fields
.field protected iCivID:I

.field protected iValue:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Happiness_Low;->iCivID:I

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Happiness_Low;->iValue:I

    return-void
.end method


# virtual methods
.method protected final editViewID()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_COND_HAPPINESS_LOW:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void
.end method

.method protected getCivID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Happiness_Low;->iCivID:I

    return v0
.end method

.method protected getConditionText()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Happiness"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Happiness_Low;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Happiness_Low;->getCivID()I

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

    const-string v2, "Happiness"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getValue()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Happiness_Low;->iValue:I

    return v0
.end method

.method protected outCondition()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Happiness_Low;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getHappiness()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Happiness_Low;->getValue()I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ge v2, v3, :cond_0

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

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Happiness_Low;->iCivID:I

    return-void
.end method

.method protected setValue(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Happiness_Low;->iValue:I

    return-void
.end method

.method protected updateCivIDAfterRemove(I)Z
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Happiness_Low;->iCivID:I

    if-ne v0, p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Happiness_Low;->iCivID:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Happiness_Low;->iCivID:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Happiness_Low;->iCivID:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions_Happiness_Low;->iCivID:I

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
