.class Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;
.super Ljava/lang/Object;
.source "WarCiv_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iCasualties:I

.field private iCivID:I

.field private iCivilianDeaths:I

.field private iConqueredProvinces:I

.field private iEconomicLosses:I


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCivID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCasualties:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCivilianDeaths:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iEconomicLosses:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iConqueredProvinces:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCivID:I

    return-void
.end method


# virtual methods
.method protected final addCasualties(I)V
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCasualties:I

    add-int/2addr v0, p1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCasualties:I

    return-void
.end method

.method protected final addCivilianDeaths(I)V
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCivilianDeaths:I

    add-int/2addr v0, p1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCivilianDeaths:I

    return-void
.end method

.method protected final addConqueredProvinces()V
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iConqueredProvinces:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iConqueredProvinces:I

    return-void
.end method

.method protected final addEconomicLosses(I)V
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iEconomicLosses:I

    add-int/2addr v0, p1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iEconomicLosses:I

    return-void
.end method

.method protected final getCasualties()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCasualties:I

    return v0
.end method

.method protected final getCivID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCivID:I

    return v0
.end method

.method protected final getCivilianDeaths()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCivilianDeaths:I

    return v0
.end method

.method protected final getConqueredProvinces()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iConqueredProvinces:I

    return v0
.end method

.method protected final getEconomicLosses()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iEconomicLosses:I

    return v0
.end method

.method protected final setCivID(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iCivID:I

    return-void
.end method

.method protected final setConqueredProvinces(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/WarCiv_GameData;->iConqueredProvinces:I

    return-void
.end method
