.class Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;
.super Ljava/lang/Object;
.source "Save_Provinces_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected fDevelopmentLevel:F

.field protected fHappiness:F

.field protected fRevolutionaryRisk:F

.field protected iArmoury:I

.field public iBunker:I

.field protected iCivsSize:I

.field protected iDefensivePosition:I

.field protected iEconomy:I

.field protected iFarm:I

.field protected iFort:I

.field protected iLastPlagueTurnID:I

.field protected iLibrary:I

.field protected iNewColonyBonus:I

.field protected iNumOfPlaguesTotal:I

.field protected iNumOfRevolutions:I

.field protected iNumOfTurnsWithBalanceOnMinus:I

.field protected iPlaguesDeaths:I

.field protected iPort:I

.field protected iReactor:I

.field public iShaft:I

.field protected iSupply:I

.field protected iSupportRebelsSize:I

.field protected iTrueOwnerOfProvince:I

.field protected iWatchTower:I

.field protected iWorkshop:I

.field protected isCapital:Z

.field protected isNotSuppliedForXTurns:I

.field protected isPartOfHolyRomaEmpire:Z

.field protected lArmies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_Army;",
            ">;"
        }
    .end annotation
.end field

.field protected lSupportRebels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;",
            ">;"
        }
    .end annotation
.end field

.field protected neighbooringProvinceOfCivWasLost:B

.field protected oPopulation:Lage/of/civilizations2/jakowski/lukasz/Province_Population;

.field protected oProvinceCore:Lage/of/civilizations2/jakowski/lukasz/Province_Core;

.field protected provincePlague:Lage/of/civilizations2/jakowski/lukasz/PlagueProvince_GameData;

.field protected turnChange_Development:F

.field protected turnChange_Economy:I

.field protected turnChange_Happiness:F

.field protected turnChange_Population:I

.field protected turnChange_RevRisk:F

.field protected turnChange_Stability:F

.field protected wasAttacked:B

.field protected wasConquered:B

.field protected wastelandLevel:I


# direct methods
.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lArmies:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iTrueOwnerOfProvince:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->isCapital:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->isPartOfHolyRomaEmpire:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->provincePlague:Lage/of/civilizations2/jakowski/lukasz/PlagueProvince_GameData;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iNumOfPlaguesTotal:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iPlaguesDeaths:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iBunker:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iShaft:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iLastPlagueTurnID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iNumOfTurnsWithBalanceOnMinus:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iNewColonyBonus:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iSupportRebelsSize:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->turnChange_Population:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->turnChange_Economy:I

    const/4 v2, 0x0

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->turnChange_Development:F

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->turnChange_Happiness:F

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->turnChange_Stability:F

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->turnChange_RevRisk:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iNumOfRevolutions:I

    const v3, 0x3f59999a    # 0.85f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->fHappiness:F

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->fRevolutionaryRisk:F

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->oProvinceCore:Lage/of/civilizations2/jakowski/lukasz/Province_Core;

    const/4 v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->isNotSuppliedForXTurns:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iDefensivePosition:I

    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->wasConquered:B

    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->wasAttacked:B

    iput-byte v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->neighbooringProvinceOfCivWasLost:B

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->wastelandLevel:I

    return-void
.end method


# virtual methods
.method protected final resetData()V
    .locals 2

    const/16 v0, -0x13

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iLastPlagueTurnID:I

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iPlaguesDeaths:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iNumOfPlaguesTotal:I

    const/4 v1, 0x0

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->provincePlague:Lage/of/civilizations2/jakowski/lukasz/PlagueProvince_GameData;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->turnChange_Population:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->turnChange_Economy:I

    const/4 v1, 0x0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->turnChange_Development:F

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->turnChange_Happiness:F

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->turnChange_Stability:F

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->turnChange_RevRisk:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iNewColonyBonus:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iNumOfTurnsWithBalanceOnMinus:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iNumOfRevolutions:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->lSupportRebels:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Provinces_GameData;->iSupportRebelsSize:I

    return-void
.end method
