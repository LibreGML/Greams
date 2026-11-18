.class Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_Armoury;
.super Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;
.source "Construction_GameData_Armoury.java"


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;-><init>(II)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/ConstructionType;->ARMOURY:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_Armoury;->constructionType:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    return-void
.end method


# virtual methods
.method protected onConstructed(I)V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_Armoury;->iProvinceID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_Armoury;->iProvinceID:I

    invoke-static {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->buildArmoury(II)Z

    :cond_0
    return-void
.end method
