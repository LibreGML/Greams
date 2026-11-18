.class Lage/of/civilizations2/jakowski/lukasz/Civ_Mission_ChangeTypeOfGoverment;
.super Ljava/lang/Object;
.source "Civ_Mission_ChangeTypeOfGoverment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iCost:I

.field protected iToIdeologyID:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civ_Mission_ChangeTypeOfGoverment;->iToIdeologyID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getChangeGovernmentCost(I)I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civ_Mission_ChangeTypeOfGoverment;->iCost:I

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Civ_Mission_ChangeTypeOfGoverment;->action(I)Z

    return-void
.end method


# virtual methods
.method protected final action(I)Z
    .locals 8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civ_Mission_ChangeTypeOfGoverment;->iCost:I

    int-to-long v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-ltz v6, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civ_Mission_ChangeTypeOfGoverment;->iToIdeologyID:I

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->canBeAdded(II)Z

    move-result v0

    if-nez v0, :cond_0

    return v5

    :cond_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civ_Mission_ChangeTypeOfGoverment;->iToIdeologyID:I

    invoke-static {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->changeGovernmentType(II)Z

    move-result v0

    if-eqz v0, :cond_1

    return v5

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getChangeGovernmentCost(I)I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civ_Mission_ChangeTypeOfGoverment;->iCost:I

    return v4

    :cond_2
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->canTakeMoreLoans(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->takeLoan_MaxValue(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civ_Mission_ChangeTypeOfGoverment;->iCost:I

    int-to-long v6, v2

    cmp-long v3, v0, v6

    if-ltz v3, :cond_4

    int-to-long v0, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0xa

    invoke-static {p1, v1, v0}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->takeLoan(III)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civ_Mission_ChangeTypeOfGoverment;->iToIdeologyID:I

    invoke-virtual {v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->canBeAdded(II)Z

    move-result v0

    if-nez v0, :cond_3

    return v5

    :cond_3
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civ_Mission_ChangeTypeOfGoverment;->iToIdeologyID:I

    invoke-static {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->changeGovernmentType(II)Z

    move-result p1

    if-eqz p1, :cond_4

    return v5

    :cond_4
    return v4
.end method
