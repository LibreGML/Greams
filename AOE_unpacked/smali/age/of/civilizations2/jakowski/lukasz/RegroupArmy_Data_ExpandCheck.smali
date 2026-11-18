.class Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_ExpandCheck;
.super Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;
.source "RegroupArmy_Data_ExpandCheck.java"


# direct methods
.method protected constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;-><init>(III)V

    return-void
.end method


# virtual methods
.method protected continueMovingArmy(I)Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_ExpandCheck;->getToProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data_ExpandCheck;->getToProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->continueMovingArmy(I)Z

    move-result p1

    return p1
.end method
