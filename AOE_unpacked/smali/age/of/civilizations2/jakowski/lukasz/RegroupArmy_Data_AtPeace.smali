.class public Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_AtPeace;
.super Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;
.source "RegroupArmy_Data_AtPeace.java"


# direct methods
.method protected constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;-><init>(III)V

    return-void
.end method


# virtual methods
.method protected continueMovingArmy(I)Z
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWar()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->continueMovingArmy(I)Z

    move-result p1

    return p1
.end method
