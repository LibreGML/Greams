.class Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;
.super Ljava/lang/Object;
.source "Civilization_Diplomacy_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iEmbassyClosedSize:I

.field private lEmabassyClosed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;",
            ">;"
        }
    .end annotation
.end field

.field private lImproveRelations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;",
            ">;"
        }
    .end annotation
.end field

.field protected messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmabassyClosed:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->iEmbassyClosedSize:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    return-void
.end method


# virtual methods
.method protected final addEmbeassyClosed(Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->iEmbassyClosedSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmabassyClosed:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iCivID:I

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iCivID:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmabassyClosed:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmabassyClosed:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iNumOfTurns:I

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iNumOfTurns:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iNumOfTurns:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmabassyClosed:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmabassyClosed:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->iEmbassyClosedSize:I

    return-void
.end method

.method protected final addImproveRelations(III)V
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->isEmassyClosed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iWithCivID:I

    if-ne v1, p2, :cond_1

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;

    iput p3, p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iNumOfTurns:I

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiplomacyPoints()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiplomacyPoints()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setDiplomacyPoints(I)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;

    invoke-direct {v1, p2, p3, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method protected final clearEmbassyClosed()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmabassyClosed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->iEmbassyClosedSize:I

    return-void
.end method

.method protected final getEmbassyClosed(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmabassyClosed:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;

    return-object p1
.end method

.method protected getEmbassyClosedSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->iEmbassyClosedSize:I

    return v0
.end method

.method protected final getImproveRelation(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;

    return-object p1
.end method

.method protected final getImproveRelationsSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final isEmassyClosed(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->iEmbassyClosedSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmabassyClosed:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iCivID:I

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final isEmbassyClosed_Turns(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->iEmbassyClosedSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmabassyClosed:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iCivID:I

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmabassyClosed:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iNumOfTurns:I

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final removeEmbassyClosedWithCivID(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->iEmbassyClosedSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmabassyClosed:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iCivID:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmabassyClosed:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmabassyClosed:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->iEmbassyClosedSize:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final removeImproveRelations(II)V
    .locals 2

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiplomacyPoints()I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setDiplomacyPoints(I)V

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final removeImproveRelations_WithCivID(II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iWithCivID:I

    if-ne v1, p2, :cond_0

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getDiplomacyPoints()I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    invoke-virtual {p2, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setDiplomacyPoints(I)V

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method protected final runImproveRelations(I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->action(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Message_Relations_Increase_Ended;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_ImproveRelations_GameData;->iWithCivID:I

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Message_Relations_Increase_Ended;-><init>(I)V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lImproveRelations:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final updateEmbassyClosed()V
    .locals 3

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->iEmbassyClosedSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmabassyClosed:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iNumOfTurns:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_ClosedEmbassy;->iNumOfTurns:I

    if-gtz v2, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmabassyClosed:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->lEmabassyClosed:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->iEmbassyClosedSize:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
