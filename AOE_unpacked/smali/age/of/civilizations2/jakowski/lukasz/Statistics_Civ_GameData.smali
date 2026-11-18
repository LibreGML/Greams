.class Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;
.super Ljava/lang/Object;
.source "Statistics_Civ_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iBiggestEconomy:I

.field private iBuiltArmories:I

.field private iBuiltFarms:I

.field private iBuiltForts:I

.field private iBuiltLibraries:I

.field private iBuiltPorts:I

.field private iBuiltSupplies:I

.field private iBuiltTowers:I

.field private iBuiltWorkshops:I

.field private iConqueredProvinces:I

.field private iGamesWon:I

.field private iLargestArmy:I

.field private iLargestPopulation:I

.field private iRecruitedArmy:I

.field private iTurns:I

.field protected sTag:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->sTag:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iGamesWon:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iConqueredProvinces:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iTurns:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iRecruitedArmy:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iLargestArmy:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iLargestPopulation:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBiggestEconomy:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltForts:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltTowers:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltPorts:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltLibraries:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltSupplies:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltArmories:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltFarms:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltWorkshops:I

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->sTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final getBiggestEconomy()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBiggestEconomy:I

    return v0
.end method

.method protected final getConqueredProvinces()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iConqueredProvinces:I

    return v0
.end method

.method protected final getGamesWon()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iGamesWon:I

    return v0
.end method

.method protected final getLargestArmy()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iLargestArmy:I

    return v0
.end method

.method protected final getLargestPopulation()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iLargestPopulation:I

    return v0
.end method

.method protected final getRecruitedArmy()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iRecruitedArmy:I

    return v0
.end method

.method protected final getTurns()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iTurns:I

    return v0
.end method

.method protected final getiBuiltArmories()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltArmories:I

    return v0
.end method

.method protected final getiBuiltFarms()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltFarms:I

    return v0
.end method

.method protected final getiBuiltForts()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltForts:I

    return v0
.end method

.method protected final getiBuiltLibraries()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltLibraries:I

    return v0
.end method

.method protected final getiBuiltPorts()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltPorts:I

    return v0
.end method

.method protected final getiBuiltSupplies()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltSupplies:I

    return v0
.end method

.method protected final getiBuiltTowers()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltTowers:I

    return v0
.end method

.method protected final getiBuiltWorkshops()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltWorkshops:I

    return v0
.end method

.method protected final setBiggestEconomy(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBiggestEconomy:I

    return-void
.end method

.method protected final setConqueredProvinces(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iConqueredProvinces:I

    return-void
.end method

.method protected final setGamesWon(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iGamesWon:I

    return-void
.end method

.method protected final setLargestArmy(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iLargestArmy:I

    return-void
.end method

.method protected final setLargestPopulation(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iLargestPopulation:I

    return-void
.end method

.method protected final setRecruitedArmy(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iRecruitedArmy:I

    return-void
.end method

.method protected final setTurns(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iTurns:I

    return-void
.end method

.method protected final setiBuiltArmories(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltArmories:I

    return-void
.end method

.method protected final setiBuiltFarms(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltFarms:I

    return-void
.end method

.method protected final setiBuiltForts(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltForts:I

    return-void
.end method

.method protected final setiBuiltLibraries(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltLibraries:I

    return-void
.end method

.method protected final setiBuiltPorts(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltPorts:I

    return-void
.end method

.method protected final setiBuiltSupplies(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltSupplies:I

    return-void
.end method

.method protected final setiBuiltTowers(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltTowers:I

    return-void
.end method

.method protected final setiBuiltWorkshops(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Statistics_Civ_GameData;->iBuiltWorkshops:I

    return-void
.end method
