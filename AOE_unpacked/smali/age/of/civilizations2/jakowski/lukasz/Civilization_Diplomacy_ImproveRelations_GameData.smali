.class Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;
.super Ljava/lang/Object;
.source "Civilization_Diplomacy_ImproveRelations_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iNumOfTurns:I

.field protected iWithCivID:I


# direct methods
.method protected constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iWithCivID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iNumOfTurns:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iWithCivID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iNumOfTurns:I

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object p1

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance p2, Lage/of/civilizations2/jakowski/lukasz/Message_Relations_Increase;

    invoke-direct {p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Message_Relations_Increase;-><init>(I)V

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    return-void
.end method


# virtual methods
.method protected final action(I)Z
    .locals 4

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iWithCivID:I

    invoke-static {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->improveRelation(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iNumOfTurns:I

    sub-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iNumOfTurns:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiplomacyPoints()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiplomacyPoints()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setDiplomacyPoints(I)V

    :cond_2
    return v1
.end method
