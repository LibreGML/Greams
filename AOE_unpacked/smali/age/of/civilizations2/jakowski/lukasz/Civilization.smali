.class Lage/of/civilizations2/jakowski/lukasz/Civilization;
.super Ljava/lang/Object;
.source "Civilization.java"


# static fields
.field protected static final ADD_CIV_DEFAULT_TECH_LEVEL:I = 0x2d

.field protected static final MIN_MONEY_REQUIRED_TO_ENABLE_RESEARCH:I = -0x1f4

.field protected static iNumOfTurnsForNuclearWeapon:I


# instance fields
.field private bordersWithEnemy:I

.field private canExpandOnContinent:Z

.field private civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

.field protected civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

.field protected civsInRange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/AI_CivsInRange;",
            ">;"
        }
    .end annotation
.end field

.field protected civsInfluenced:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/AI_Influence;",
            ">;"
        }
    .end annotation
.end field

.field protected civsInfluencedSize:I

.field protected civsIsAlliedIncludeVassal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private controlledByPlayer:Z

.field protected fAverageDevelopment:F

.field protected fStability:F

.field protected holdLookingForFriends_UntilTurnID:I

.field protected iAdministrationCosts:I

.field protected iArmiesPositionSize:I

.field private iArmyInAnotherProvinceSize:I

.field protected iAveragePopulation:I

.field protected iBorderWithCivsSize:I

.field protected iBudget:I

.field private iCivID:I

.field private iCivNameHeight:I

.field private iCivNameLength:I

.field private iCivNameWidth:I

.field private iCivRegionsSize:I

.field private iHappiness:I

.field private iIdeologyID:I

.field protected iIncomeProduction:I

.field protected iIncomeTaxation:I

.field protected iLeague:I

.field private iMigrateSize:I

.field protected iMilitaryUpkeep_PERC:F

.field protected iMilitaryUpkeep_Total:I

# Long budget ledgers (BudgetCore) — source of truth past int/float saturation
.field protected lAdministrationCosts:J

.field protected lBudget:J

.field protected lIncomeProduction:J

.field protected lIncomeTaxation:J

.field protected lMilitaryUpkeep_Total:J

.field private iMovePoints:I

.field private iMoveUnitsSize:I

.field private iMove_Units_PlunderSize:I

.field private iNumOfNeighboringNeutralProvinces:I

.field private iNumOfProvinces:I

.field private iNumOfProvincesWithoutOccupied:I

.field private iNumOfUnits:I

.field protected iNumOf_Armories:I

.field public iNumOf_Bunkers:I

.field protected iNumOf_Farms:I

.field protected iNumOf_Farms_ProvincesPossibleToBuild:I

.field protected iNumOf_Forts:I

.field protected iNumOf_Libraries:I

.field public iNumOf_NuclearReactors:I

.field protected iNumOf_Ports:I

.field protected iNumOf_SuppliesCamp:I

.field protected iNumOf_Towers:I

.field protected iNumOf_Workshops:I

.field private iRankPosition:I

.field private iRankScore:I

.field private iRecruitArmySize:I

.field protected isAssimilateProvincesPlayer:I

.field private isAtNuclearWar:Z

.field private isAtWar:Z

.field protected isAtWarWithCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isAvailable:Z

.field protected isBuildBuildingsForPlayer:I

.field protected isMoveAtWarPlayer:I

.field protected isRegroupArmyForPlayer:I

.field protected lArmiesPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lArmyInAnotherProvince:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected lBorderWithCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI_BordersWith;",
            ">;"
        }
    .end annotation
.end field

.field protected lBordersWithNeutralProvincesID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected lBordersWithWastelandProvincesID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lCivNameChars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private lCivRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;",
            ">;"
        }
    .end annotation
.end field

.field private lCurrentRegroupArmyLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;",
            ">;>;"
        }
    .end annotation
.end field

.field protected lDefensivePact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lEventsToRun:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected lGuarantee:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private lMigrate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Move_Units;",
            ">;"
        }
    .end annotation
.end field

.field protected lMilitirayAccess:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private lMoveUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Move_Units;",
            ">;"
        }
    .end annotation
.end field

.field private lMove_Units_Plunder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;",
            ">;"
        }
    .end annotation
.end field

.field protected lNonAggressionPact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected lOpt_DefensivePact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected lOpt_Guarantee:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected lOpt_MilitirayAccess:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected lOpt_NonAggressionPact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected lOpt_Truce:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected lProvincesWithHighRevRisk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected lProvincesWithLowHappiness:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected lProvincesWithLowStability:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected lProvincesWithMoreRecruitableArmy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lRecruitArmy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;",
            ">;"
        }
    .end annotation
.end field

.field protected lTruce:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sTagsCanForm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private seaAccess:I

.field private seaAccess_Port:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private seaAccess_Provinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private updateRegions:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfTurnsForNuclearWeapon:I

    return-void
.end method

.method protected constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civsInfluenced:Ljava/util/List;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civsInRange:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->controlledByPlayer:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAvailable:Z

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivNameLength:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civsInfluencedSize:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->holdLookingForFriends_UntilTurnID:I

    const/4 v2, 0x0

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sTagsCanForm:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civsIsAlliedIncludeVassal:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lEventsToRun:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIdeologyID:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvinces:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lArmyInAnotherProvince:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iArmyInAnotherProvinceSize:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lArmiesPosition:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iArmiesPositionSize:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBorderWithCivs:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iBorderWithCivsSize:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBordersWithWastelandProvincesID:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBordersWithNeutralProvincesID:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCivRegions:Ljava/util/List;

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateRegions:Z

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iLeague:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iBudget:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIncomeTaxation:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIncomeProduction:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iAdministrationCosts:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMilitaryUpkeep_Total:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBudget:J

    iput-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeTaxation:J

    iput-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeProduction:J

    iput-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lAdministrationCosts:J

    iput-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMilitaryUpkeep_Total:J

    const/4 v2, 0x0

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMilitaryUpkeep_PERC:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iAveragePopulation:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvincesWithLowStability:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvincesWithLowHappiness:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvincesWithMoreRecruitableArmy:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvincesWithHighRevRisk:Ljava/util/List;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fStability:F

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fAverageDevelopment:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Forts:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Towers:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Ports:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Farms:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_NuclearReactors:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Bunkers:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Farms_ProvincesPossibleToBuild:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Workshops:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Libraries:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Armories:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_SuppliesCamp:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lNonAggressionPact:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_NonAggressionPact:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lTruce:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Truce:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lDefensivePact:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_DefensivePact:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lGuarantee:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Guarantee:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMilitirayAccess:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_MilitirayAccess:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccess:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccess_Provinces:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccess_Port:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->bordersWithEnemy:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWar:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWarWithCivs:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfNeighboringNeutralProvinces:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->canExpandOnContinent:Z

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRankPosition:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRankScore:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCurrentRegroupArmyLine:Ljava/util/List;

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivID(I)V

    iget-object p2, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->sCivName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivName(Ljava/lang/String;)V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateCivilizationIdeology()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sTagsCanForm:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMoveUnits:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMoveUnitsSize:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMove_Units_Plunder:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMove_Units_PlunderSize:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRecruitArmySize:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMigrate:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMigrateSize:I

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCurrentRegroupArmyLine:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->controlledByPlayer:Z

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAvailable:Z

    const/16 p1, 0x4b

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iHappiness:I

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lEventsToRun:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lEventsToRun:Ljava/util/List;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lEvents_DecisionsTaken:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lEvents_DecisionsTaken:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->loadFlag()Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIIII)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civsInRange:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->controlledByPlayer:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAvailable:Z

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivNameLength:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->holdLookingForFriends_UntilTurnID:I

    const/4 v2, 0x0

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sTagsCanForm:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lEventsToRun:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIdeologyID:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvinces:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lArmyInAnotherProvince:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iArmyInAnotherProvinceSize:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lArmiesPosition:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iArmiesPositionSize:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBorderWithCivs:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iBorderWithCivsSize:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBordersWithWastelandProvincesID:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civsIsAlliedIncludeVassal:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBordersWithNeutralProvincesID:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCivRegions:Ljava/util/List;

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateRegions:Z

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iLeague:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iBudget:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIncomeTaxation:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIncomeProduction:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iAdministrationCosts:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMilitaryUpkeep_Total:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBudget:J

    iput-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeTaxation:J

    iput-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lIncomeProduction:J

    iput-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lAdministrationCosts:J

    iput-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMilitaryUpkeep_Total:J

    const/4 v2, 0x0

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMilitaryUpkeep_PERC:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iAveragePopulation:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvincesWithLowStability:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvincesWithLowHappiness:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvincesWithMoreRecruitableArmy:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvincesWithHighRevRisk:Ljava/util/List;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fStability:F

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fAverageDevelopment:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Forts:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Towers:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Ports:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Farms:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Farms_ProvincesPossibleToBuild:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Workshops:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Libraries:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Armories:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_NuclearReactors:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_Bunkers:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOf_SuppliesCamp:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lNonAggressionPact:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_NonAggressionPact:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lTruce:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Truce:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lDefensivePact:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_DefensivePact:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lGuarantee:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Guarantee:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMilitirayAccess:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_MilitirayAccess:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccess:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccess_Provinces:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccess_Port:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->bordersWithEnemy:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWar:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWarWithCivs:Ljava/util/List;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfNeighboringNeutralProvinces:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->canExpandOnContinent:Z

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRankPosition:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRankScore:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCurrentRegroupArmyLine:Ljava/util/List;

    invoke-virtual {p0, p6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivID(I)V

    invoke-direct/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->initCivilization(Ljava/lang/String;IIII)V

    return-void
.end method

.method private final applyBonusChanges(Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;)V
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_PopGrowth:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_PopGrowth:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_PopGrowth:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_EconomyGrowth:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_EconomyGrowth:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_EconomyGrowth:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_IncomeTaxation:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_IncomeTaxation:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_IncomeTaxation:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_IncomeProduction:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_IncomeProduction:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_IncomeProduction:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_Research:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_Research:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_Research:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_MilitaryUpkeep:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_MilitaryUpkeep:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_MilitaryUpkeep:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_AttackBonus:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_AttackBonus:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_AttackBonus:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_DefenseBonus:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_DefenseBonus:F

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_DefenseBonus:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_MovementPoints:F

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_MovementPoints:F

    add-float/2addr v1, p1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_MovementPoints:F

    return-void
.end method

.method private final applyBonusChanges_Expired(Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;)V
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_PopGrowth:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_PopGrowth:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_PopGrowth:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_EconomyGrowth:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_EconomyGrowth:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_EconomyGrowth:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_IncomeTaxation:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_IncomeTaxation:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_IncomeTaxation:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_IncomeProduction:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_IncomeProduction:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_IncomeProduction:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_Research:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_Research:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_Research:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_MilitaryUpkeep:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_MilitaryUpkeep:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_MilitaryUpkeep:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_AttackBonus:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_AttackBonus:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_AttackBonus:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_DefenseBonus:F

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_DefenseBonus:F

    sub-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_DefenseBonus:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_MovementPoints:F

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_MovementPoints:F

    sub-float/2addr v1, p1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_MovementPoints:F

    return-void
.end method

.method private final buildCivilizationRegion(II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    if-ne v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCivRegions:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->addProvince(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivRegionID(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->buildCivilizationRegion(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private final initCivilization(Ljava/lang/String;IIII)V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivName(Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput-object p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateCivilizationIdeology()V

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p5, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iCapitalProvinceID:I

    const/4 p1, 0x1

    if-ltz p5, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p5

    invoke-virtual {p5, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setIsCapital(Z)V

    :cond_0
    iget-object p5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    int-to-short p2, p2

    iput-short p2, p5, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iR:S

    int-to-short p2, p3

    iput-short p2, p5, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iG:S

    int-to-short p2, p4

    iput-short p2, p5, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iB:S

    new-instance p2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    invoke-direct {p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;-><init>()V

    iput-object p2, p5, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civilization_Diplomacy_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->buildCivPersonality()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sTagsCanForm:Ljava/util/List;

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lLoansTaken:Ljava/util/List;

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsPay:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMoveUnits:Ljava/util/List;

    const/4 p2, 0x0

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMoveUnitsSize:I

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMove_Units_Plunder:Ljava/util/List;

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMove_Units_PlunderSize:I

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRecruitArmySize:I

    iget-object p3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    iget-object p3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p2, p3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iRegroupArmySize:I

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMigrate:Ljava/util/List;

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMigrateSize:I

    iget-object p3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCurrentRegroupArmyLine:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    iput-boolean p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->controlledByPlayer:Z

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAvailable:Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    const/16 p2, 0x2d

    iput p2, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fTechnologyLevel:I

    const/16 p1, 0x4b

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iHappiness:I

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lEventsToRun:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lEventsToRun:Ljava/util/List;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lEvents_DecisionsTaken:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lEvents_DecisionsTaken:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->loadFlag()Z

    return-void
.end method

.method private final removeCivRegionID(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCivRegions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCivRegions:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->getProvince(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivRegionID(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCivRegions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCivRegions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivRegionsSize:I

    :goto_1
    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivRegionsSize:I

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCivRegions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->setRegionID(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method protected final addArmyInAnotherProvince(I)V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addArmyInAnotherProvince: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nProvinceID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iArmyInAnotherProvinceSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AoC"

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProvinceSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProvince(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lArmyInAnotherProvince:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lArmyInAnotherProvince:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iArmyInAnotherProvinceSize:I

    return-void
.end method

.method protected final addAssimilate(Lage/of/civilizations2/jakowski/lukasz/CivFestival;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    if-ne v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method protected final addBordersWithCivID(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iBorderWithCivsSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBorderWithCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI_BordersWith;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI_BordersWith;->iWithCivID:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBorderWithCivs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/AI_BordersWith;

    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/AI_BordersWith;->iNumOfConnections:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/AI_BordersWith;->iNumOfConnections:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBorderWithCivs:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/AI_BordersWith;

    invoke-direct {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/AI_BordersWith;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iBorderWithCivsSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iBorderWithCivsSize:I

    return-void
.end method

.method protected final addEventToRunID(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lEventsToRun:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final addEvent_DecisionTaken(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lEvents_DecisionsTaken:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final addFestival(Lage/of/civilizations2/jakowski/lukasz/CivFestival;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    if-ne v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method protected final addFriendlyCiv(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFriendlyCivs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFriendlyCivs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;->iCivID:I

    if-ne p1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFriendlyCivs:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    invoke-direct {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Message_Relations_Friendly;

    invoke-direct {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Message_Relations_Friendly;-><init>(I)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/HistoryLog_FriendlyCivs;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog_FriendlyCivs;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->addHistoryLog(Lage/of/civilizations2/jakowski/lukasz/HistoryLog;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1
.end method

.method protected final addHatedCiv(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getHatedCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;->iCivID:I

    if-ne p1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addHatedCiv_By(I)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;

    invoke-direct {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iHatedCivsSize:I

    const/4 p1, 0x1

    return p1
.end method

.method protected final addHatedCiv_By(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getHatedCivs_BySize()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lHatedCivs_By:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lHatedCivs_By:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lHatedCivs_By:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iHatedCivs_BySize:I

    return-void
.end method

.method protected final addInvest(Lage/of/civilizations2/jakowski/lukasz/CivInvest;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iProvinceID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iProvinceID:I

    if-ne v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method protected final addInvest_Development(Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iProvinceID:I

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iProvinceID:I

    if-ne v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method protected final addLoan(II)V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lLoansTaken:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Loan_GameData;

    invoke-direct {v1, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Loan_GameData;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final addNewBonus(Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;)Z
    .locals 4

    iget-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->BONUS_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_PROSPERITY:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lBonuses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lBonuses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->BONUS_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_PROSPERITY:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->BONUS_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_SCIENCE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lBonuses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lBonuses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->BONUS_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_SCIENCE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    if-ne v1, v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->BONUS_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_MILITARY:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lBonuses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lBonuses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->BONUS_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_MILITARY:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    if-ne v1, v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lBonuses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->applyBonusChanges(Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected final addNewConstruction(Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->iProvinceID:I

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->iProvinceID:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->constructionType:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->constructionType:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final addProvince(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvinces:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvinces:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivRegionID(I)V

    return-void
.end method

.method protected final addProvince_Just(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvinces:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvinces:I

    return-void
.end method

.method protected final addRegroupArmy(Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;)V
    .locals 5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iRegroupArmySize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line_Highlighted;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getFromProvinceID()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRoute(I)I

    move-result v4

    invoke-direct {v1, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line_Highlighted;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line_Highlighted;

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRoute(I)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRoute(I)I

    move-result v4

    invoke-direct {v1, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line_Highlighted;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCurrentRegroupArmyLine:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final addResearchProgress(F)V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fResearchProgress:F

    add-float/2addr v1, p1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fResearchProgress:F

    return-void
.end method

.method protected final addSeaAccess_PortProvinces(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccess_Port:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final addSeaAccess_Provinces(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccess_Provinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final addSentMessages(Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;)V
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lSentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lSentMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->iToCivID:I

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->iToCivID:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lSentMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-ne v1, v2, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lSentMessages:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->iSentInTurnID:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lSentMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final addTagsCanForm(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final addVassal(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    invoke-direct {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iVassalsSize:I

    return-void
.end method

.method protected final addWarReparationsGets(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xc

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iFromCivID:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    iput v2, p1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iTurnsLeft:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    invoke-direct {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/WarReparations;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final addWarReparationsPay(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsPay:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xc

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsPay:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iFromCivID:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsPay:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    iput v2, p1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iTurnsLeft:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsPay:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    invoke-direct {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/WarReparations;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final buildCivPersonality()V
    .locals 12

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildCivPersonality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AoC"

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x3

    add-int/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_CLOSE_REGION_PROVINCES:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x2a3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v1, v4

    const v5, 0x3f8eb852    # 1.115f

    add-float/2addr v1, v5

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_CLOSE_REGION_EXTRA_SCORE:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAI_Style()I

    move-result v5

    invoke-virtual {v1, v5}, Lage/of/civilizations2/jakowski/lukasz/AI;->getAI_Style(I)Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->PERSONALITY_MIN_DIFFERENCE_IN_DEVELOPMENT_TO_TECHNOLOGY_DEFAULT:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAI_Style()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/AI;->getAI_Style(I)Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    move-result-object v6

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->PERSONALITY_MIN_DIFFERENCE_IN_DEVELOPMENT_TO_TECHNOLOGY_RANDOM:I

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    add-float/2addr v1, v5

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_DIFFERENCE_IN_DEVELOPMENT_TO_TECHNOLOGY:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->buildCivPersonality_MoreOften()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v5, 0x271

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    const v7, 0x40766666    # 3.85f

    add-float/2addr v1, v7

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->TREASURY_RESERVE:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v7, 0x96

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const v8, 0x3d4ccccd    # 0.05f

    add-float/2addr v1, v8

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->TREASURY_RESERVE_MODIFIER:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAI_Style()I

    move-result v9

    invoke-virtual {v1, v9}, Lage/of/civilizations2/jakowski/lukasz/AI;->getAI_Style(I)Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->PERSONALITY_PLUNDER_MIN:I

    int-to-float v1, v1

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAI_Style()I

    move-result v11

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/AI;->getAI_Style(I)Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    move-result-object v10

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->PERSONALITY_PLUNDER_RANDOM:I

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v4

    add-float/2addr v1, v9

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->PLUNDER_CHANCE:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v9, 0x177

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const v9, 0x3e8ccccd    # 0.275f

    add-float/2addr v1, v9

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_POTENTIAL:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v10, 0x20d

    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const v10, 0x3f066666    # 0.525f

    add-float/2addr v1, v10

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_DANGER:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v10, 0x113

    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const v10, 0x3d19999a    # 0.0375f

    add-float/2addr v1, v10

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_REGION_NUM_OF_PROVINCES:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const v10, 0x3ed9999a    # 0.425f

    add-float/2addr v1, v10

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_REGION_POTENTIAL:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v10, 0x2d5

    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const v10, 0x3f6ccccd    # 0.925f

    sub-float/2addr v10, v1

    iput v10, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_NUM_OF_UNITS:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v10, 0x14f

    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const v10, 0x3f31eb85    # 0.695f

    sub-float/2addr v10, v1

    iput v10, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_ATTACK_NAVAL_DISTANCE:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v10, 0x113

    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const/high16 v10, 0x3f200000    # 0.625f

    sub-float/2addr v10, v1

    iput v10, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_ATTACK_DISTANCE:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v10, 0x15e

    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const v10, 0x3ea147ae    # 0.315f

    sub-float/2addr v10, v1

    iput v10, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_ATTACK_SCORE_ARMY:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v10, 0x15e

    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const v10, 0x3ea66666    # 0.325f

    sub-float/2addr v10, v1

    iput v10, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_ATTACK_SCORE_POTENTIAL:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v10, 0x2d5

    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    sub-float v1, v9, v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_ATTACK_SCORE_WAS_CONQUERED:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_REGROUP_SPLIT_MIN:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->WAR_REGROUP_SPLIT_EXTRA:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v2, 0x177

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v9

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_POTENTIAL:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v2, 0x6d6

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const/high16 v2, 0x3fd00000    # 1.625f

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_POTENTIAL_MODIFIED_OWN_LOST_PROVINCE:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const v2, 0x3f133333    # 0.575f

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_DANGER:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v2, 0xaf

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const v2, 0x3ccccccd    # 0.025f

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_REGION_NUM_OF_PROVINCES:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v9

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_REGION_POTENTIAL:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v2, 0x1a9

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const v2, 0x3f6ccccd    # 0.925f

    sub-float/2addr v2, v1

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_NUM_OF_UNITS:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v2, 0x1db

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const/4 v2, 0x0

    sub-float/2addr v2, v1

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_NUM_OF_UNITS_RECRUITMENT:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAI_Style()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/AI;->getAI_Style(I)Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->PERSONALITY_MIN_MILITARY_SPENDINGS_DEFAULT:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAI_Style()I

    move-result v9

    invoke-virtual {v5, v9}, Lage/of/civilizations2/jakowski/lukasz/AI;->getAI_Style(I)Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    move-result-object v5

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->PERSONALITY_MIN_MILITARY_SPENDINGS_RANDOM:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_MILITARY_SPENDINGS:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v2, 0x36

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VALUABLE_RECRUIT_FROM_FAR_AWAY_CHANCE:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAI_Style()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/AI;->getAI_Style(I)Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->PERSONALITY_MIN_AGGRESION_DEFAULT:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAI_Style()I

    move-result v9

    invoke-virtual {v5, v9}, Lage/of/civilizations2/jakowski/lukasz/AI;->getAI_Style(I)Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    move-result-object v5

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->PERSONALITY_MIN_AGGRESION_RANDOM:I

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->AGGRESSION:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const v2, 0x3f67ae14    # 0.905f

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_MILITARY_SPENDINGS_RECRUIT_AT_WAR:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v2, 0x104

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const v2, 0x3efae148    # 0.49f

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_MILITARY_SPENDINGS_NOT_BORDERING_WITH_ENEMY:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v2, 0xa5

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const v2, 0x3f828f5c    # 1.02f

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_MILITARY_SPENDINGS_WAR_MODIFIER:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAI_Style()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/AI;->getAI_Style(I)Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->PERSONALITY_MIN_HAPPINESS_DEFAULT:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAI_Style()I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/AI;->getAI_Style(I)Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->PERSONALITY_MIN_HAPPINESS_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_HAPPINESS_FOR_CIV:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x36

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_HAPPINESS_CRISIS:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->RISE_REVOLT_RISK_HAPPINESS:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_PROVINCE_HAPPINESS_RUN_FESTIVAL:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->DEFENSE:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAI_Style()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/AI;->getAI_Style(I)Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->PERSONALITY_FORGIVNESS_DEFAULT:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAI_Style()I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/AI;->getAI_Style(I)Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->PERSONALITY_FORGIVNESS_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAI_Style()I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/AI;->getAI_Style(I)Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->PERSONALITY_FORGIVNESS_RANDOM:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->FORGIVENESS:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x3f35c28f    # 0.71f

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_PROVINCE_STABILITY:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x3ed70a3d    # 0.42f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    add-float/2addr v2, v1

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_PROVINCE_STABILITY:F

    :goto_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x3ee66666    # 0.45f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    add-float/2addr v2, v1

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->MIN_HAPPINESS_TO_ASSMILIATE_PROVINCE:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v2, 0x41

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    const v3, 0x3dcccccd    # 0.1f

    add-float/2addr v1, v3

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->ASSIMILATE_PERC_DISTANCE_SCORE:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    add-float/2addr v1, v3

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->ASSIMILATE_PERC_LOW_STABILITY_SCORE:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v5, 0x4b

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    add-float/2addr v1, v3

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->ASSIMILATE_PERC_POPULATION_SCORE:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x40de6666    # 6.95f

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v10, 0x5a

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    add-float/2addr v9, v1

    iput v9, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->RESPONSE_MILITARY_ACCESS_DISTANCE_SCORE:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x42014ccd    # 32.325f

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v11, 0x1c

    invoke-virtual {v9, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v1

    iput v9, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->RESPONSE_MILITARY_ACCESS_RELATION_SCORE:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x40a4cccd    # 5.15f

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v9, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v11, 0x41200000    # 10.0f

    div-float/2addr v9, v11

    add-float/2addr v9, v1

    iput v9, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->RESPONSE_MILITARY_ACCESS_RANK_SCORE:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x40a80000    # 5.25f

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v9, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v11

    add-float/2addr v9, v1

    iput v9, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->RESPONSE_MILITARY_ACCESS_RANK_OWN_SCORE:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x41820000    # 16.25f

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v9, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v11

    add-float/2addr v7, v1

    iput v7, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->RESPONSE_MILITARY_ACCESS_DEFENSIVE_PACT_SCORE:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x41600000    # 14.0f

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v9, 0x10

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v1

    iput v7, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->HRE_VOTE_FOR_RANK:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x41800000    # 16.0f

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v1

    iput v7, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->HRE_VOTE_FOR_PROVINCES:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x42020000    # 32.5f

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v9, 0xdc

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v11

    add-float/2addr v7, v1

    iput v7, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->RESPONSE_ALLIANCE_OPINION:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x41ce0000    # 25.75f

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v9, 0x109

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v11

    add-float/2addr v7, v1

    iput v7, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->RESPONSE_ALLIANCE_STRENTGH:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x3f23d70a    # 0.64f

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v9, 0x1a

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    add-float/2addr v7, v1

    iput v7, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_MIN_STABILITY:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x3f051eb8    # 0.52f

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v9, 0x24

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    add-float/2addr v7, v1

    iput v7, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_STABILITY_SCORE:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/4 v1, 0x0

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    add-float/2addr v7, v1

    iput v7, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_MAX_REV_RISK:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v7, 0x22

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    const v7, 0x3c23d70a    # 0.01f

    add-float/2addr v1, v7

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_DANGER_SCORE:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->buildCivPersonality_Buildings()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->buildCivPersonality_Colonization()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x3e19999a    # 0.15f

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v11, 0x55

    invoke-virtual {v9, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    add-float/2addr v9, v1

    iput v9, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->TECH_POP:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v9, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    add-float/2addr v9, v1

    iput v9, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->TECH_ECO:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    add-float/2addr v1, v3

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->TECH_TAXATION:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    add-float/2addr v1, v3

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->TECH_PRODUCTION:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    add-float/2addr v1, v7

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->TECH_ADMINISTARTION:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    add-float/2addr v1, v7

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->TECH_MILITARY_UPKEEP:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v5, 0x46

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    add-float/2addr v1, v7

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->TECH_RESEARCH:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x42

    int-to-float v1, v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->LIBERITY_DECLARATION:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x3ee66666    # 0.45f

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v7, 0x28

    invoke-virtual {v5, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr v5, v1

    iput v5, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->LIBERITY_ACCEPTABLE_TRIBUTE:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v5, 0x3c

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    add-float/2addr v1, v3

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VASSALS_TRIBUTE_PERC:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x3c

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    add-float/2addr v1, v8

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VASSALS_TRIBUTE_PERC_RAND:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x3e99999a    # 0.3f

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    add-float/2addr v2, v1

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->VASSALS_TRIBUTE_PERC_FRIENDLY:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x41c20000    # 24.25f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x270f

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->POTENTIAL_POPULATION:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x41ac0000    # 21.5f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->POTENTIAL_ECONOMY:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x3fe9999a    # 1.825f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x145

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->DANGER_EXTRA_KEY_REGION:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x3ccccccd    # 0.025f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0xaf

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->DANGER_EXTRA_PER_OWN_PROVINCE:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x3eb33333    # 0.35f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x1a9

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->DANGER_PERC_OF_UNITS:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x41640000    # 14.25f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x62a2

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->NEUTRAL_EXPAND_CAPITAL:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x40e80000    # 7.25f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x251c

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->NEUTRAL_EXPAND_OWN_PROVINCE:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x40300000    # 2.75f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x1f40

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->NEUTRAL_EXPAND_MORE_NEUTRAL:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x40200000    # 2.5f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x222e

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->NEUTRAL_EXPAND_OTHER_CIV:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x42270000    # 41.75f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const v3, 0xc350

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->NEUTRAL_EXPAND_GROWTH_RATE:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x423b0000    # 46.75f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->NEUTRAL_EXPAND_LAST_PROVINCE:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x410c0000    # 8.75f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x4a38

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->NEUTRAL_EXPAND_SEA_ACCESS:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x3fe00000    # 1.75f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0xdac

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->NEUTRAL_EXPAND_SEA_ACCESS_EXTRA:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x3fd33333    # 1.65f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0xea6

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->NEUTRAL_EXPAND_NEIGHBORING_PROVINCES:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x418ecccd    # 17.85f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x61a8

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->NEUTRAL_EXPAND_NEIGHBORING_PROVINCES_POTENITAL:F

    return-void
.end method

.method protected final buildCivPersonality_Buildings()V
    .locals 9

    const/16 v8, 0x64

    const v7, 0x3dcccccd    # 0.1f

    const v6, 0x3c23d70a    # 0.01f

    const/high16 v5, 0x447a0000    # 1000.0f

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/4 v1, 0x0

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_FORT:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x3a83126f    # 0.001f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_FORT:F

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/4 v1, 0x0

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_TOWER:F

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x3983126f    # 2.5E-4f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_TOWER:F

    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/4 v1, 0x0

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_PORT:F

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v6

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_PORT:F

    :goto_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x3f800000    # 1.0f

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v7

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_FARM:F

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v7

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_FARM:F

    :goto_3
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x3f800000    # 1.0f

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v7

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_WORKSHOP:F

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v7

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_WORKSHOP:F

    :goto_4
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x3f800000    # 1.0f

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v7

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_WORKSHOP_POP_SCORE:F

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x3f028f5c    # 0.51f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_WORKSHOP_POP_SCORE:F

    :goto_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x3f800000    # 1.0f

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v7

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_WORKSHOP_ECO_SCORE:F

    goto :goto_6

    :cond_6
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x3f51eb85    # 0.82f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_WORKSHOP_ECO_SCORE:F

    :goto_6
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x3f400000    # 0.75f

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v7

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_LIBRARY:F

    goto :goto_7

    :cond_7
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x3d99999a    # 0.075f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_LIBRARY:F

    :goto_7
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/4 v1, 0x0

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_ARMOURY:F

    goto :goto_8

    :cond_8
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x3ca3d70a    # 0.02f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_ARMOURY:F

    :goto_8
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/4 v1, 0x0

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_ARMOURY_RECRUITABLE_SCORE:F

    goto :goto_9

    :cond_9
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x3ec00000    # 0.375f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x145

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_ARMOURY_RECRUITABLE_SCORE:F

    :goto_9
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/4 v1, 0x0

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_SUPPLYLINE:F

    goto :goto_a

    :cond_a
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v6

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_SUPPLYLINE:F

    :goto_a
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x3f800000    # 1.0f

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v7

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST:F

    goto :goto_b

    :cond_b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x3e000000    # 0.125f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v2, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST:F

    :goto_b
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x3f400000    # 0.75f

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v7

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_DEVELOPMENT:F

    goto :goto_c

    :cond_c
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x3c4ccccd    # 0.0125f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x4b

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_DEVELOPMENT:F

    :goto_c
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x3e800000    # 0.25f

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_POP_SCORE:F

    goto :goto_d

    :cond_d
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_POP_SCORE:F

    :goto_d
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x3e800000    # 0.25f

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_DEVELOPMENT_SCORE:F

    goto :goto_e

    :cond_e
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const v1, 0x0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_DEVELOPMENT_SCORE:F

    :goto_e
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_POP_ECO_DIFFERENCE_SCORE:F

    goto :goto_f

    :cond_f
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x3f800000    # 1.0f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0xb09

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_POP_ECO_DIFFERENCE_SCORE:F

    :goto_f
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/4 v1, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_SECOND_INVEST_MAX_PERC:I

    goto :goto_10

    :cond_10
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_SECOND_INVEST_MAX_PERC:I

    :goto_10
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/4 v1, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_SECOND_INVEST_CHANCE:I

    goto :goto_11

    :cond_11
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_INVEST_SECOND_INVEST_CHANCE:I

    :goto_11
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/4 v1, 0x5

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_RESRVE_RAND:I

    goto :goto_12

    :cond_12
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->BUILD_RESRVE_RAND:I

    :goto_12
    return-void
.end method

.method protected final buildCivPersonality_Colonization()V
    .locals 5

    const/16 v4, 0xb

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lColonies_Founded:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->COLONIZATION_SEA:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x41f00000    # 30.0f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->COLONIZATION_OWN_PROVINCES:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x41400000    # 12.0f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->COLONIZATION_GROWTH_RATE:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    const/high16 v1, 0x40800000    # 4.0f

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->COLONIZATION_DISTANCE:F

    return-void
.end method

.method protected final buildCivPersonality_MoreOften()V
    .locals 7

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->REBUILD_PERSONALITY_MORE_OFTEN:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    const v3, 0x3f666666    # 0.9f

    add-float/2addr v1, v3

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->TAXATION_LEVEL:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAI_Style()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/AI;->getAI_Style(I)Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->USE_OF_BUDGET_FOR_SPENDINGS:I

    int-to-float v1, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAI_Style()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/AI;->getAI_Style(I)Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    move-result-object v5

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->USE_OF_BUDGET_FOR_SPENDINGS_RANDOM:I

    mul-int/lit8 v5, v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    add-float/2addr v1, v4

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->USE_OF_BUDGET_FOR_SPENDINGS:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAI_Style()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/AI;->getAI_Style(I)Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->PERSONALITY_GOODS_RANDOM:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const v2, 0x3d23d70a    # 0.04f

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->GOODS_EXTRA_PERC_OF_BUDGET:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAI_Style()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/AI;->getAI_Style(I)Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    move-result-object v4

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->PERSONALITY_INVESTMENTS_RANDOM:I

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->INVESTMENTS_EXTRA_PERC_OF_BUDGET:F

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAI_Style()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/AI;->getAI_Style(I)Lage/of/civilizations2/jakowski/lukasz/AI_Style;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->PERSONALITY_RESEARCH_RANDOM:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/4 v2, 0x0

    add-float/2addr v1, v2

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;->RESEARCH_PERC_OF_BUDGET:F

    return-void
.end method

.method protected final buildDiplomacy(Z)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRelation:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x1

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRelation:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lGuarantee:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMilitirayAccess:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lNonAggressionPact:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lTruce:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lDefensivePact:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Truce:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_MilitirayAccess:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_DefensivePact:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Guarantee:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_NonAggressionPact:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iAllianceID:I

    :cond_1
    const/4 p1, 0x1

    :goto_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v2

    if-ge p1, v2, :cond_2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lGuarantee:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMilitirayAccess:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    add-int/2addr p1, v0

    :goto_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lNonAggressionPact:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lTruce:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lDefensivePact:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected final buildNumOfUnits()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfUnits:I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfUnits:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfUnits:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfUnits:I

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getNumOfUnits()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfUnits:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProvinceSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfUnits:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProvince(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfUnits:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected final buildRegroupLines_AfterLoading()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iRegroupArmySize:I

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line_Highlighted;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getFromProvinceID()I

    move-result v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRoute(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line_Highlighted;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line_Highlighted;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRoute(I)I

    move-result v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRoute(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line_Highlighted;-><init>(II)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCurrentRegroupArmyLine:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final civRegionsContainsProvince(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivRegionsSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCivRegions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;->containsProvince(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final clearCivRegions()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivRegionID(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCivRegions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivRegionsSize:I

    return-void
.end method

.method protected final clearConstructions()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected final clearFreidnlyCivs()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFriendlyCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected final clearHatedCivs()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getHatedCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeHatedCiv_BY(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iHatedCivsSize:I

    return-void
.end method

.method protected final clearLoans()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lLoansTaken:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected final clearMigrate()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMigrate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMigrate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMigrateSize:I

    return-void
.end method

.method protected final clearMoveUnits()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMoveUnitsSize:I

    return-void
.end method

.method protected final clearMoveUnits_Plunder()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMove_Units_Plunder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMove_Units_Plunder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMove_Units_PlunderSize:I

    return-void
.end method

.method protected final clearProvinces_FillTheMap(Z)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCivRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivRegionsSize:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvinces:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvinces:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->createCivilizationRegion(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvinces:I

    :goto_0
    return-void
.end method

.method protected final clearRecruitArmy()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRecruitArmySize:I

    return-void
.end method

.method protected final clearRegroupArmy()V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCurrentRegroupArmyLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iRegroupArmySize:I

    return-void
.end method

.method protected final clearSeaAccess_PortProvinces()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccess_Port:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected final clearSeaAccess_Provinces()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccess_Provinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected final clearSentMessages()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lSentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected final clearTagsCanForm()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected final controlsProvince(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final countEconomy()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvinces:I

    if-ge v0, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected final countEconomy_WithoutOccupied()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvinces:I

    if-ge v0, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected final countNumOfProvinces()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvinces:I

    return-void
.end method

.method protected final countNumOfProvinces_WithoutOccupied()I
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvincesWithoutOccupied:I

    return v1
.end method

.method protected final countPopulation()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvinces:I

    if-ge v0, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected final countPopulation_WithoutOccupied()I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvinces:I

    if-ge v0, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v3

    if-nez v2, :cond_occupy_manpower

    add-int/2addr v1, v3

    goto :cond_0

    :cond_occupy_manpower
    int-to-float v2, v3

    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected final countRevolutionaryRisks_WithoutOccupied()F
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvinces:I

    if-ge v0, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->isOccupied()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRevolutionaryRisk()F

    move-result v2

    add-float/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvincesWithoutOccupied:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method protected final createCivilizationRegion(I)V
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCivRegions:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivRegionsSize:I

    invoke-direct {v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCivRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivRegionsSize:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivRegionsSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivRegionID(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    iput-boolean v2, v0, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivRegionsSize:I

    sub-int/2addr v0, v2

    invoke-direct {p0, p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->buildCivilizationRegion(II)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    iput-boolean p1, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->was:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final disposeFlag()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    :cond_0
    return-void
.end method

.method protected final getAI_Style()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iAI_Style:I

    return v0
.end method

.method protected final getAllianceID()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iAllianceID:I

    return v0
.end method

.method protected final getArmyInAnotherProvince(I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lArmyInAnotherProvince:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method protected final getArmyInAnotherProvinceSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iArmyInAnotherProvinceSize:I

    return v0
.end method

.method protected final getAssimilate(I)Lage/of/civilizations2/jakowski/lukasz/CivFestival;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    return-object p1
.end method

.method protected final getAssimilatesSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getB()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-short v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iB:S

    return v0
.end method

.method protected final getBonus(I)Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lBonuses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;

    return-object p1
.end method

.method protected final getBonusesSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lBonuses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getBordersWithCiv(I)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iBorderWithCivsSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBorderWithCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI_BordersWith;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI_BordersWith;->iWithCivID:I

    if-eq v1, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected final getBordersWithEnemy()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->bordersWithEnemy:I

    return v0
.end method

.method protected final getBordersWithHatedCivsSize()I
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iBorderWithCivsSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lBorderWithCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/AI_BordersWith;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/AI_BordersWith;->iWithCivID:I

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isHatedCivBy(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method protected final getBoundaryDistance(I)F
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvinces:I

    if-ge v0, v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvinces:I

    if-ge v1, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getDistanceFromCapital_PercOfMax(II)F

    move-result v2

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v5
.end method

.method protected final getCanExpandOnContinent()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->canExpandOnContinent:Z

    return v0
.end method

.method protected final getCapitalMoved_LastTurnID()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iCapitalMoved_LastTurnID:I

    return v0
.end method

.method protected final getCapitalProvinceID()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iCapitalProvinceID:I

    return v0
.end method

.method protected final getChangeGovermentStatus()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIdeologyID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ELECTION_PERIOD:I

    if-lez v1, :cond_1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNextElection()I

    move-result v1

    if-lt v0, v1, :cond_0

    const-string v0, "z12"

    goto :goto_0

    :cond_0
    const-string v0, "z13"

    goto :goto_0

    :cond_1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIdeologyID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REFORMATION_PERIOD:I

    if-lez v1, :cond_4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getInReformation()I

    move-result v1

    if-lez v1, :cond_2

    const-string v0, "z14"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iChangeGoverment_SinceTurn:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    if-lt v1, v0, :cond_3

    const-string v0, "z15"

    goto :goto_0

    :cond_3
    const-string v0, "z16"

    :goto_0
    return-object v0

    :cond_4
    const-string v0, "ChangeTypeOfGovernment"

    goto :goto_0
.end method

.method protected final getCivBuildArmyCost()I
    .locals 5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getManPower_ThisTurn()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x32

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getManPowerIncreasing()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iAdministrationCosts:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIncomeTaxation:I

    sub-int/2addr v2, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIncomeProduction:I

    add-int/2addr v1, v2

    int-to-float v0, v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIdeologyID:I

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MIN_INVESTMENTS:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIdeologyID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MIN_GOODS:F

    add-float/2addr v3, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    mul-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    div-float v1, v0, v1

    cmpg-float v2, v1, v4

    if-gez v2, :cond_0

    div-float v0, v1, v4

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_0
    div-float v0, v1, v4

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3feb333333333333L    # 0.85

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_0
    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected final getCivCommercePower()F
    .locals 4

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvinces:I

    int-to-float v0, v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fTechnologyLevel:I

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_TechStandard(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iAdministrationCosts:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIncomeTaxation:I

    sub-int/2addr v2, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIncomeProduction:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->LEAGUE_BUDGET:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivCommercePower_CountBuildings()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method protected final getCivCommercePower_CountBuildings()F
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvinces:I

    if-ge v1, v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    add-int/2addr v5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-float v5, v5

    return v5
.end method

.method protected final getCivCommercePower_GDP()F
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIncomeTaxation:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIncomeProduction:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42480000    # 50.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method protected final getCivCommercePower_Other()F
    .locals 3

    const/high16 v1, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWar:Z

    if-eqz v0, :cond_0

    const/high16 v1, 0x3e800000    # 0.25f

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->closingTheCommerce:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3e000000    # 0.125f

    mul-float/2addr v1, v0

    :cond_1
    return v1
.end method

.method protected final getCivID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    return v0
.end method

.method protected final getCivName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->sCivName:Ljava/lang/String;

    return-object v0
.end method

.method protected final getCivNameCharacter(I)C
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCivNameChars:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    return p1
.end method

.method protected final getCivNameHeight()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivNameHeight:I

    return v0
.end method

.method protected final getCivNameLength()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivNameLength:I

    return v0
.end method

.method protected final getCivNameWidth()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivNameWidth:I

    return v0
.end method

.method protected final getCivPersonality()Lage/of/civilizations2/jakowski/lukasz/CivPersonality;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    return-object v0
.end method

.method protected final getCivPlans()Lage/of/civilizations2/jakowski/lukasz/CivPlans;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    return-object v0
.end method

.method protected final getCivRegion(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCivRegions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateRegions:Z

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;

    invoke-direct {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_Region;-><init>()V

    return-object p1
.end method

.method protected final getCivRegionsSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivRegionsSize:I

    return v0
.end method

.method protected final getCivTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    return-object v0
.end method

.method protected final getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civilization_Diplomacy_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    return-object v0
.end method

.method protected final getClosingTheCommerce()Z
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->closingTheCommerce:Z

    return v0
.end method

.method protected final getConstruction(I)Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;

    return-object p1
.end method

.method protected final getConstructionsSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getControlledByPlayer()Z
    .locals 1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->controlledByPlayer:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final getCoreCapitalProvinceID()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iCoreCapitalProvinceID:I

    return v0
.end method

.method protected final getCurrentRegroupArmyLine(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCurrentRegroupArmyLine:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method protected final getDeclareWarStatus(I)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-static {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->getCivIsInRange_War(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    const/4 v1, 0x1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAreAllied_IncludeVassal(IIZ)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "z17"

    goto :goto_0

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->HIGH_AUTONOMY:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->VASSAL_CAN_DECLARE_WAR:Z

    if-nez v1, :cond_1

    const-string v0, "z18"

    goto :goto_0

    :cond_1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v1

    const/high16 v0, 0x42480000    # 50.0f

    cmpl-float v1, v1, v0

    if-lez v1, :cond_2

    const-string v0, "z19"

    goto :goto_0

    :cond_2
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivTruce(II)I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "z20"

    goto :goto_0

    :cond_3
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivNonAggressionPact(II)I

    move-result v1

    if-lez v1, :cond_4

    const-string v0, "z21"

    goto :goto_0

    :cond_4
    const-string v0, "z22"

    goto :goto_0

    :cond_5
    const-string v0, "z23"

    :goto_0
    return-object v0
.end method

.method protected final getDefensivePact(I)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lDefensivePact:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lDefensivePact:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method protected final getDiplomacyPoints()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iDiplomacyPoints:I

    return v0
.end method

.method protected final getDiplomacyStatus_Ally(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-static {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->getCivIsInRange(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "z24"

    goto :goto_0

    :cond_0
    const-string v0, "z25"

    :goto_0
    return-object v0
.end method

.method protected final getDiplomacyStatus_Improvement(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-static {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->getCivIsInRange(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "z26"

    goto :goto_0

    :cond_0
    const-string v0, "z27"

    :goto_0
    return-object v0
.end method

.method protected final getDiplomacyStatus_Insult(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-static {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->getCivIsInRange(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "z28"

    goto :goto_0

    :cond_0
    const-string v0, "z29"

    :goto_0
    return-object v0
.end method

.method protected final getEvent_TookDecision(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lEvents_DecisionsTaken:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lEvents_DecisionsTaken:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final getEventsToRun(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lEventsToRun:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getEventsToRunSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lEventsToRun:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getFestival(I)Lage/of/civilizations2/jakowski/lukasz/CivFestival;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    return-object p1
.end method

.method protected final getFestivalsSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-nez v0, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final getFlag_IsNull()Z
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final getFriendlyCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFriendlyCivs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;

    return-object p1
.end method

.method protected final getFriendlyCivsSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFriendlyCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getG()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-short v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iG:S

    return v0
.end method

.method public getGoldenAge_Military()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iGoldenAge_Military:I

    return v0
.end method

.method public getGoldenAge_Prosperity()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iGoldenAge_Prosperity:I

    return v0
.end method

.method public getGoldenAge_Science()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iGoldenAge_Science:I

    return v0
.end method

.method protected final getGuarantee(I)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lGuarantee:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lGuarantee:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method protected final getHappiness()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iHappiness:I

    return v0
.end method

.method protected final getHappiness_10Turn()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iHappiness_10Turn:F

    return v0
.end method

.method protected final getHatedCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;

    return-object p1
.end method

.method protected final getHatedCiv_By(I)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lHatedCivs_By:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getHatedCivsSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iHatedCivsSize:I

    return v0
.end method

.method protected final getHatedCivs_BySize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iHatedCivs_BySize:I

    return v0
.end method

.method protected final getIdeologyID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIdeologyID:I

    return v0
.end method

.method protected final getInReformation()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iInReformation:I

    return v0
.end method

.method protected final getInvest(I)Lage/of/civilizations2/jakowski/lukasz/CivInvest;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    return-object p1
.end method

.method protected final getInvest_Development(I)Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    return-object p1
.end method

.method protected final getInvestsSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getInvestsSize_Development()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getIsAlliedWithPlayer()Z
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->isAlliedWithPlayer:Z

    return v0
.end method

.method protected final getIsAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAvailable:Z

    return v0
.end method

.method protected final getIsPartOfHolyRomanEmpire()Z
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->isPartOfHolyRomaEmpire:Z

    return v0
.end method

.method protected final getIsPupet()Z
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final getLoan(I)Lage/of/civilizations2/jakowski/lukasz/Loan_GameData;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lLoansTaken:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Loan_GameData;

    return-object p1
.end method

.method protected final getLoansSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lLoansTaken:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getLoans_GoldTotalPerTurn()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lLoansTaken:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lLoansTaken:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Loan_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Loan_GameData;->iGoldPerTurn:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected final getManPower()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iManPower:I

    return v0
.end method

.method protected final getManPowerIncreasing()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iManPowerIncreasing_PerTurn:I

    return v0
.end method

.method protected final getManPower_ThisTurn()I
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iManPower_InThisTurn:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected final getMigrate(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMigrate:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    return-object p1
.end method

.method protected final getMigrateSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMigrateSize:I

    return v0
.end method

.method protected final getMilitaryAccess(I)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMilitirayAccess:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMilitirayAccess:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method protected final getModifier_Administation()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_Administration:F

    return v0
.end method

.method protected final getModifier_AttackBonus()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_AttackBonus:F

    return v0
.end method

.method protected final getModifier_AttackBonus_GoldenAge()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_AttackBonus_GoldenAge:F

    return v0
.end method

.method protected final getModifier_AttackBonus_Leader()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_AttackBonus_Leader:F

    return v0
.end method

.method protected final getModifier_DefenseBonus()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_DefenseBonus:F

    return v0
.end method

.method protected final getModifier_DefenseBonus_GoldenAge()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_DefenseBonus_GoldenAge:F

    return v0
.end method

.method protected final getModifier_DefenseBonus_Leader()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_DefenseBonus_Leader:F

    return v0
.end method

.method protected final getModifier_EconomyGrowth()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_EconomyGrowth:F

    return v0
.end method

.method protected final getModifier_IncomeProduction()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_IncomeProduction:F

    return v0
.end method

.method protected final getModifier_IncomeTaxation()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_IncomeTaxation:F

    return v0
.end method

.method protected final getModifier_MilitaryUpkeep()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_MilitaryUpkeep:F

    return v0
.end method

.method protected final getModifier_MovementPoints()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_MovementPoints:F

    return v0
.end method

.method protected final getModifier_PopGrowth()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_PopGrowth:F

    return v0
.end method

.method protected final getModifier_Research()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_Research:F

    return v0
.end method

.method protected final getMoney()J
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-wide v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iMoney:J

    return-wide v0
.end method

.method protected final getMovePoints()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMovePoints:I

    return v0
.end method

.method protected final getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    return-object p1
.end method

.method protected final getMoveUnitsPlunderSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMove_Units_PlunderSize:I

    return v0
.end method

.method protected final getMoveUnitsSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMoveUnitsSize:I

    return v0
.end method

.method protected final getMoveUnits_Plunder(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMove_Units_Plunder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    return-object p1
.end method

.method protected final getNextElection()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNextElection:I

    return v0
.end method

.method protected final getNonAggressionPact(I)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lNonAggressionPact:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lNonAggressionPact:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method protected final getNuclearWeapons()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNuclearWeapons:I

    return v0
.end method

.method protected final getNuclearWeaponsPerTurn()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNuclearWeaponsPerTurn:I

    return v0
.end method

.method protected final getNuclearWeaponsTurn()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNuclearWeaponsTurn:I

    return v0
.end method

.method protected final getNumOfNeighboringNeutralProvinces()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfNeighboringNeutralProvinces:I

    return v0
.end method

.method protected final getNumOfProvinces()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvinces:I

    return v0
.end method

.method protected final getNumOfProvincesWithoutOccupied()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvincesWithoutOccupied:I

    return v0
.end method

.method protected final getNumOfUnits()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfUnits:I

    return v0
.end method

.method protected final getProvinceID(I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method protected final getPuppetOfCivID()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    return v0
.end method

.method protected final getR()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-short v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iR:S

    return v0
.end method

.method protected final getRGB()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getRGB(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method protected final getRGB(F)Lcom/badlogic/gdx/graphics/Color;
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getR()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getG()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getB()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-direct {v0, v1, v3, v4, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method protected final getRankPosition()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRankPosition:I

    return v0
.end method

.method protected final getRankScore()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRankScore:I

    return v0
.end method

.method protected final getRecruitArmy(I)Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    return-object p1
.end method

.method protected final getRecruitArmySize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRecruitArmySize:I

    return v0
.end method

.method protected final getRecruitArmy_BasedOnProvinceID(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRecruitArmySize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getArmy()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final getRegroupArmy(I)Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    return-object p1
.end method

.method protected final getRegroupArmySize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iRegroupArmySize:I

    return v0
.end method

.method protected final getRelation(I)F
    .locals 2

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRelation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRelation:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method protected final getResearchProgress()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fResearchProgress:F

    return v0
.end method

.method protected final getSeaAccess()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccess:I

    return v0
.end method

.method protected final getSeaAccess_PortProvinces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccess_Port:Ljava/util/List;

    return-object v0
.end method

.method protected final getSeaAccess_PortProvinces_Size()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccess_Port:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getSeaAccess_Provinces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccess_Provinces:Ljava/util/List;

    return-object v0
.end method

.method protected final getSeaAccess_Provinces_Size()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccess_Provinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getSentMessage(I)Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lSentMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;

    return-object p1
.end method

.method protected final getSentMessagesSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lSentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getSpendings_Goods()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fSpendings_Goods:F

    return v0
.end method

.method protected final getSpendings_Investments()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fSpendings_Investments:F

    return v0
.end method

.method protected final getSpendings_Research()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fSpendings_Research:F

    return v0
.end method

.method protected final getSpendings_attackbonus()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_AttackBonus:F

    return v0
.end method

.method protected final getStability()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fStability:F

    return v0
.end method

.method protected final getSupportRate()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iSupport_Rate:F

    return v0
.end method

.method protected final getTagsCanForm(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final getTagsCanFormSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getTaxationLevel()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fTaxationLevel:F

    return v0
.end method

.method protected final getTechnologyLevel()F
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fTechnologyLevel:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected final getTechnologyLevel_INT()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fTechnologyLevel:I

    return v0
.end method

.method protected final getTruce(I)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lTruce:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lTruce:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method protected final getUpdateRegions()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateRegions:Z

    return v0
.end method

.method protected final getVassalLiberityDesire()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fVassalLiberityDisere:F

    return v0
.end method

.method protected final getVassal_Tribute(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iTribute:I

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    invoke-direct {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iVassalsSize:I

    const/16 p1, 0x19

    return p1
.end method

.method protected final getWarReparationsGets(I)Lage/of/civilizations2/jakowski/lukasz/WarReparations;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    return-object p1
.end method

.method protected final getWarReparationsGetsSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getWarReparationsGets_TurnsLeft(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iFromCivID:I

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iTurnsLeft:I

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final getWarReparationsPays(I)Lage/of/civilizations2/jakowski/lukasz/WarReparations;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsPay:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    return-object p1
.end method

.method protected final getWarReparationsPaysSize()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsPay:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getWarReparationsPays_TurnsLeft(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsPay:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsPay:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iFromCivID:I

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsPay:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iTurnsLeft:I

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final getWarWeariness()F
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fWarWeariness:F

    return v0
.end method

.method protected final isAssimialateOrganized_TurnsLeft(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iTurnsLeft:I

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final isAssimilateOrganized(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final isAssimilateOrganized_GET(I)Lage/of/civilizations2/jakowski/lukasz/CivFestival;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public isAtNuclearWar()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtNuclearWar:Z

    return v0
.end method

.method protected final isAtWar()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWar:Z

    return v0
.end method

.method protected final isFestivalOrganized(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final isFestivalOrganized_GET(I)Lage/of/civilizations2/jakowski/lukasz/CivFestival;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final isFestivalOrganized_TurnsLeft(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iTurnsLeft:I

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final isFirstReactor()Z
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iFirstReactor:Z

    return v0
.end method

.method protected final isFriendlyCiv(I)I
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFriendlyCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFriendlyCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;->iCivID:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFriendlyCivs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;->iSinceTurnID:I

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected final isHatedCiv(I)Z
    .locals 3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getHatedCivsSize()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;->iCivID:I

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected final isHatedCivBy(I)Z
    .locals 3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getHatedCivsSize()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;->iCivID:I

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected final isInConstruction(ILage/of/civilizations2/jakowski/lukasz/ConstructionType;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->iProvinceID:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->constructionType:Lage/of/civilizations2/jakowski/lukasz/ConstructionType;

    if-ne v2, p2, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->iNumOfTurnsLeft:I

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final isInvestOrganized(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iProvinceID:I

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final isInvestOrganized_Development(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iProvinceID:I

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final isInvestOrganized_EconomyLeft(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iProvinceID:I

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iEconomyLeft:I

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final isInvestOrganized_EconomyLeft_Development(I)F
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iProvinceID:I

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iDevelopemntLeft:F

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected final isInvestOrganized_GET(I)Lage/of/civilizations2/jakowski/lukasz/CivInvest;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iProvinceID:I

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final isInvestOrganized_GET_Development(I)Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iProvinceID:I

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final isInvestOrganized_TurnsLeft(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iProvinceID:I

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iTurnsLeft:I

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final isInvestOrganized_TurnsLeft_Development(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iProvinceID:I

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iTurnsLeft:I

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final isMovingUnitsFromProvinceID(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final isMovingUnitsToProvinceID(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final isMovingUnitsToProvinceID_Num(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnitsSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getToProvinceID()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoveUnits(I)Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getNumOfUnits()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final isPlundred(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMove_Units_PlunderSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMove_Units_Plunder:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getFromProvinceID()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final isRecruitingArmyInProvinceID(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRecruitArmySize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected final isRegoupingArmy_ToProvinceID(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iRegroupArmySize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getToProvinceID()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getNumOfUnits()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final loadFlag()Z
    .locals 12

    const-string v0, "game/flags/"

    const-string v1, ".png"

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v4, "game/flags/ran.png"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v2, :cond_1

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->lFlags:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->lFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    array-length v2, v1

    if-ge v5, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->lFlags:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->lTags:Ljava/util/List;

    aget-object v3, v1, v5

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->lFlags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;->CIV_ID_SMALL:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    iput-object v2, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->typeOfAction:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->lFlags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate;->iID:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return v6

    :cond_1
    :try_start_1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->disposeFlag()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7

    :cond_2
    :try_start_2
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v2, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_2

    :catch_2
    :try_start_3
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    if-eqz v2, :cond_3

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "game/flags/rb"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v8

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/2addr v8, v9

    rem-int/lit8 v8, v8, 0x6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    return v6

    :cond_3
    :try_start_4
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v2, v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_2

    :catch_3
    :try_start_5
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v0
    :try_end_5
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    const-string v1, "_FL.png"

    const-string v2, "/"

    const-string v3, "game/civilizations_editor/"

    if-eqz v0, :cond_4

    :try_start_6
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v7, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v8, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v11, v11, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_6
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_2

    :catch_4
    :try_start_7
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v7, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v8, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v3, v10}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v7, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    goto :goto_2

    :cond_4
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v7, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v8, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v3, v10}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v7, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_7
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_2

    :catch_5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->addFlagToLoad(I)V

    return v5

    :catch_6
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    :goto_2
    return v6

    :catch_7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->addFlagToLoad(I)V

    return v5
.end method

.method protected final messageWasSent(I)Z
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lSentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lSentMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->iToCivID:I

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected final messageWasSent(ILage/of/civilizations2/jakowski/lukasz/Message_Type;)Z
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lSentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lSentMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->iToCivID:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lSentMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-ne v2, p2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected final messageWasSent(Lage/of/civilizations2/jakowski/lukasz/Message_Type;)Z
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lSentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lSentMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected final migratesFromProvinceID(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMigrateSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMigrate:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final moveRegroupArmy()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iRegroupArmySize:I

    if-ge v1, v2, :cond_6

    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRoute(I)I

    move-result v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getToProvinceID()I

    move-result v4

    invoke-static {v2, v3, v0, v4}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->canBeUsedInPath(IIZI)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeRegroupArmy(I)V

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->continueMovingArmy(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeRegroupArmy(I)V

    goto/16 :goto_1

    :cond_1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getObsolate()I

    move-result v2

    if-gez v2, :cond_2

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeRegroupArmy(I)V

    goto/16 :goto_1

    :cond_2
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->updateObsolate()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getFromProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getNumOfUnits()I

    move-result v3

    if-gt v2, v3, :cond_4

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getFromProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v2

    if-gtz v2, :cond_3

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeRegroupArmy(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getFromProvinceID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->setNumOfUnits(I)V

    :cond_4
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getFromProvinceID()I

    move-result v5

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRoute(I)I

    move-result v6

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getNumOfUnits()I

    move-result v7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->moveArmy(IIIIZZ)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRoute(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->setFromProvinceID(I)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->removeRoute(I)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCurrentRegroupArmyLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;->getRouteSize()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeRegroupArmy(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeRegroupArmy(I)V

    goto :goto_1

    :catch_1
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeRegroupArmy(I)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method protected final newMigrate(IIZ)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMigrateSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMigrate:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->getFromProvinceID()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeMigrate(I)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMigrate:Ljava/util/List;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v4

    const/4 v6, 0x1

    move-object v1, v7

    move v2, p1

    move v3, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;-><init>(IIIZZ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMigrate:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMigrateSize:I

    return-void
.end method

.method protected final newMove(IIIZ)V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMoveUnits:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Move_Units;

    invoke-direct {v1, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;-><init>(IIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMoveUnitsSize:I

    return-void
.end method

.method protected final newPlunder(II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMove_Units_PlunderSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMove_Units_Plunder:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getFromProvinceID()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMove_Units_Plunder:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->setNumOfUnits(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMove_Units_Plunder:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    invoke-direct {v1, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMove_Units_Plunder:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMove_Units_PlunderSize:I

    return-void
.end method

.method protected final recruitArmy(II)Z
    .locals 12

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getRecruitableArmy(I)I

    move-result v2

    if-lt p2, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getRecruitableArmy(I)I

    move-result p2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRecruitArmySize:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v2

    if-ne v2, p1, :cond_2

    if-nez p2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getArmy()I

    move-result v2

    if-lez v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v5

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_RECRUIT:I

    add-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v5

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v6

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getArmy()I

    move-result v2

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getCostOfRecruitArmyMoney(I)I

    move-result v5

    mul-int/2addr v2, v5

    int-to-long v8, v2

    add-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getManPower()I

    move-result v6

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getArmy()I

    move-result v2

    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setManPower(I)V

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeRecruitArmy(I)V

    move v2, v4

    goto/16 :goto_1

    :cond_1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getArmy()I

    move-result v2

    sub-int v1, v2, p2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->setArmy(I)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v6

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getCostOfRecruitArmyMoney(I)I

    move-result v3

    mul-int/2addr v3, v1

    int-to-long v8, v3

    add-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getManPower()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setManPower(I)V

    move v2, v4

    goto/16 :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getManPower()I

    move-result v6

    if-lez v6, :cond_7

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v5

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v5

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_RECRUIT:I

    if-ge v2, v5, :cond_4

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "AoC"

    const-string v5, "RECRUIT NO MOVEMNETS POINTS 1111"

    invoke-interface {v2, v4, v5}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto/16 :goto_1

    :cond_4
    int-to-long v6, p2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v5

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v8

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getCostOfRecruitArmyMoney(I)I

    move-result v2

    int-to-long v10, v2

    div-long/2addr v8, v10

    cmp-long v2, v6, v8

    if-ltz v2, :cond_5

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v5

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v6

    long-to-int v2, v6

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getCostOfRecruitArmyMoney(I)I

    move-result v5

    div-int p2, v2, v5

    :cond_5
    if-gtz p2, :cond_6

    move v2, v3

    goto/16 :goto_1

    :cond_6
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v5

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_RECRUIT:I

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v6

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getCostOfRecruitArmyMoney(I)I

    move-result v3

    mul-int/2addr v3, p2

    int-to-long v8, v3

    sub-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getManPower()I

    move-result v7

    sub-int/2addr v7, p2

    invoke-virtual {p0, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setManPower(I)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-direct {v3, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRecruitArmySize:I

    move v2, v4

    :goto_1
    return v2

    :cond_7
    move v2, v3

    goto :goto_1
.end method

.method protected final recruitArmyAutoPlan(II)Z
    .locals 12

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getRecruitableArmyAutoplan(I)I

    move-result v2

    if-lt p2, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getRecruitableArmyAutoplan(I)I

    move-result p2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRecruitArmySize:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v2

    if-ne v2, p1, :cond_2

    if-nez p2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getArmy()I

    move-result v2

    if-lez v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v5

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_RECRUIT:I

    add-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v5

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v6

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getArmy()I

    move-result v2

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getCostOfRecruitArmyMoneyAutoplan(I)I

    move-result v5

    mul-int/2addr v2, v5

    int-to-long v8, v2

    add-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getManPower()I

    move-result v6

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getArmy()I

    move-result v2

    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setManPower(I)V

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeRecruitArmy(I)V

    move v2, v4

    goto/16 :goto_1

    :cond_1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getArmy()I

    move-result v2

    sub-int v1, v2, p2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->setArmy(I)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v6

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getCostOfRecruitArmyMoneyAutoplan(I)I

    move-result v3

    mul-int/2addr v3, v1

    int-to-long v8, v3

    add-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getManPower()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setManPower(I)V

    move v2, v4

    goto/16 :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getManPower()I

    move-result v6

    if-lez v6, :cond_7

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v5

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v5

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_RECRUIT:I

    if-ge v2, v5, :cond_4

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "AoC"

    const-string v5, "RECRUIT NO MOVEMNETS POINTS 1111"

    invoke-interface {v2, v4, v5}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto/16 :goto_1

    :cond_4
    int-to-long v6, p2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v5

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v8

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getCostOfRecruitArmyMoneyAutoplan(I)I

    move-result v2

    int-to-long v10, v2

    div-long/2addr v8, v10

    cmp-long v2, v6, v8

    if-ltz v2, :cond_5

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v5

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v6

    long-to-int v2, v6

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getCostOfRecruitArmyMoneyAutoplan(I)I

    move-result v5

    div-int p2, v2, v5

    :cond_5
    if-gtz p2, :cond_6

    move v2, v3

    goto/16 :goto_1

    :cond_6
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v5

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_RECRUIT:I

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v6

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getCostOfRecruitArmyMoneyAutoplan(I)I

    move-result v3

    mul-int/2addr v3, p2

    int-to-long v8, v3

    sub-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getManPower()I

    move-result v7

    sub-int/2addr v7, p2

    invoke-virtual {p0, v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setManPower(I)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-direct {v3, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRecruitArmySize:I

    move v2, v4

    :goto_1
    return v2

    :cond_7
    move v2, v3

    goto :goto_1
.end method

.method protected final recruitArmyAutoplan_AI(II)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRecruitArmySize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getArmy()I

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmyAutoPlan(II)Z

    move-result v1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmyAutoPlan(II)Z

    move-result v1

    goto :goto_1
.end method

.method protected final recruitArmy_AI(II)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRecruitArmySize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getArmy()I

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy(II)Z

    move-result v1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->recruitArmy(II)Z

    move-result v1

    goto :goto_1
.end method

.method protected final recruitArmy_NewTurn()V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRecruitArmySize:I

    if-ge v0, v1, :cond_1

    :try_start_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v1

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v2

    if-ne v1, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getArmy()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->recruitArmy(III)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v4

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getArmy()I

    move-result v3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getCostOfRecruitArmyMoney(I)I

    move-result v1

    mul-int/2addr v1, v3

    int-to-float v1, v1

    const v3, 0x3f39999a    # 0.725f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->clearRecruitArmy()V

    return-void

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected final removeArmyInAnotherProvince(I)V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeArmyInAnotherProvince: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nProvinceID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iArmyInAnotherProvinceSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AoC"

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProvinceSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getArmyInAnotherProvince(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lArmyInAnotherProvince:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lArmyInAnotherProvince:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iArmyInAnotherProvinceSize:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final removeAssimilate(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method protected final removeAssimilate_ProvinceID(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected final removeEventToRun(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lEventsToRun:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method protected final removeFestival(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method protected final removeFestival_ProvinceID(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected final removeFriendlyCiv(I)V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFriendlyCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFriendlyCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;->iCivID:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFriendlyCivs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final removeHatedCiv(I)V
    .locals 2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getHatedCivsSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;->iCivID:I

    if-ne v1, p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;->iCivID:I

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v1

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeHatedCiv_BY(I)V

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iHatedCivsSize:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final removeHatedCiv_BY(I)V
    .locals 2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getHatedCivs_BySize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lHatedCivs_By:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lHatedCivs_By:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lHatedCivs_By:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iHatedCivs_BySize:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final removeInvest(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method protected final removeInvest_Development(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method protected final removeInvest_ProvinceID(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iProvinceID:I

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected final removeInvest_ProvinceID_Development(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iProvinceID:I

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected final removeLoan(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lLoansTaken:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method protected final removeMigrate(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMigrate:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMigrate:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMigrateSize:I

    return-void
.end method

.method protected final removeMove(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMoveUnitsSize:I

    return-void
.end method

.method protected final removePlunder(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMove_Units_Plunder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMove_Units_Plunder:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMove_Units_PlunderSize:I

    return-void
.end method

.method protected final removePlunder_ProvinceID(I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMove_Units_PlunderSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMove_Units_Plunder:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getFromProvinceID()I

    move-result v1

    if-ne v1, p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMove_Units_Plunder:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getFromProvinceID()I

    move-result v1

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMove_Units_Plunder:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getFromProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getArmyCivID(I)I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMove_Units_Plunder:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->getNumOfUnits()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateArmy(II)V

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMove_Units_Plunder:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMove_Units_Plunder:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMove_Units_PlunderSize:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final removeProvince(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvinces:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvinces:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivRegionID(I)V

    return-void
.end method

.method protected final removeRecruitArmy(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lRecruitArmy:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRecruitArmySize:I

    return-void
.end method

.method protected final removeRegroupArmy(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCurrentRegroupArmyLine:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRegroupArmy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iRegroupArmySize:I

    return-void
.end method

.method protected final removeSentMessage(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lSentMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method protected final removeSentMessages(Lage/of/civilizations2/jakowski/lukasz/Message_Type;)V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lSentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lSentMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lSentMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final removeTagsCanForm(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method protected final removeTagsCanForm(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final removeVassal(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iVassalsSize:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final runAssimilates()V
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v3

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iTurnsLeft:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iTurnsLeft:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNationalitiesSize()I

    move-result v5

    if-ge v3, v5, :cond_1

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v6

    if-eq v5, v6, :cond_0

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v5

    add-int/2addr v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getNationalitiesSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    :goto_2
    if-ltz v3, :cond_4

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v7

    if-eq v6, v7, :cond_3

    const v6, 0x3b8b4396    # 0.00425f

    const v7, 0x3d4b9cb7    # 0.04971f

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v9, 0x43f

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x461c4000    # 10000.0f

    div-float/2addr v8, v9

    add-float/2addr v8, v7

    int-to-float v7, v2

    add-int v9, v4, v2

    int-to-float v9, v9

    div-float/2addr v7, v9

    float-to-double v10, v7

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v11, v11

    const v12, -0x3f71c726

    mul-float/2addr v11, v12

    const v12, 0x40871c11

    mul-float/2addr v7, v12

    const v12, 0x3e999999    # 0.29999998f

    add-float/2addr v7, v11

    add-float/2addr v7, v12

    mul-float v8, v8, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappiness()F

    move-result v7

    mul-float v8, v8, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v7, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v7

    const/high16 v9, 0x40700000    # 3.75f

    div-float/2addr v7, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v7, v9, v7

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    mul-float v8, v8, v7

    add-float/2addr v8, v6

    const v6, 0x3e666666    # 0.225f

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v10

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getStability()F

    move-result v7

    sub-float v7, v9, v7

    mul-float v7, v7, v6

    sub-float/2addr v9, v7

    const v6, 0x3d99999a    # 0.075f

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v7, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getRevolutionaryRisk()F

    move-result v7

    mul-float v7, v7, v6

    sub-float/2addr v9, v7

    mul-float v8, v8, v9

    const/high16 v6, 0x3ea20000    # 0.31640625f

    mul-float v8, v8, v6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v9

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v6

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v7

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ASSIMILATE_RATE:F

    mul-float/2addr v8, v7

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_AssimilateRate(I)F

    move-result v6

    mul-float/2addr v8, v6

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v6

    invoke-virtual {v6, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v8

    float-to-int v6, v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :cond_2
    add-int/2addr v5, v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v8, v8, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v8, v8, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v7

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v9, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v9, v9, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v9, v9, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v8

    invoke-virtual {v8, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getCivID(I)I

    move-result v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v10, v10, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v10, v10, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v9

    invoke-virtual {v9, v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationID(I)I

    move-result v9

    sub-int/2addr v9, v6

    invoke-virtual {v7, v8, v9}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2

    :cond_4
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v6

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulationOfCivID(I)I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->setPopulationOfCivID(II)Z

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iTurnsLeft:I

    if-gtz v2, :cond_6

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Message_AssimilationEnd;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Message_AssimilationEnd;-><init>(II)V

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_3
    move v1, v3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method protected final runCommerce()V
    .locals 9

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->closingTheCommerce:Z

    if-nez v0, :cond_2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvinces:I

    if-lez v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v0

    if-ge v1, v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvinces:I

    if-lez v2, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIdeologyID:I

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COMMERCE_RANGE:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAge_CommerceRange(I)F

    move-result v2

    mul-float/2addr v3, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getDistanceFromAToB_PercOfMax(II)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivCommercePower()F

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivCommercePower()F

    move-result v3

    div-float/2addr v3, v2

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivCommercePower_GDP()F

    move-result v2

    mul-float/2addr v3, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivCommercePower_Other()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivCommercePower_Other()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, v1, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivRelation_OfCivB(II)F

    move-result v5

    const/high16 v6, 0x41f00000    # 30.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-wide v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iMoney:J

    const-wide/16 v7, 0x2

    div-long v7, v2, v7

    sub-long v4, v4, v7

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput-wide v4, v6, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iMoney:J

    const-wide/16 v7, 0x3

    mul-long/2addr v2, v7

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-wide v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iMoney:J

    add-long v4, v4, v2

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput-wide v4, v6, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iMoney:J

    goto :goto_1

    :cond_0
    iget-object v4, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-wide v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iMoney:J

    const-wide/16 v7, 0x2

    div-long v7, v2, v7

    sub-long v4, v4, v7

    iget-object v6, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput-wide v4, v6, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iMoney:J

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-wide v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iMoney:J

    add-long v4, v4, v2

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput-wide v4, v6, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iMoney:J

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method protected final runConstruction()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->iProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->iNumOfTurnsLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->iNumOfTurnsLeft:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->iNumOfTurnsLeft:I

    if-gtz v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;->onConstructed(I)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected final runFestivals()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iTurnsLeft:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iTurnsLeft:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappiness()F

    move-result v3

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->festivalHappinessPerTurn(I)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappiness(F)V

    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getHappiness()F

    move-result v4

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->festivalHappinessPerTurn_NeighboringProvinces()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->setHappiness(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iTurnsLeft:I

    if-gtz v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Message_FestivalIsOver;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/CivFestival;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/CivFestival;->iProvinceID:I

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Message_FestivalIsOver;-><init>(II)V

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    move v3, v1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v3, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method protected final runInvests()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iTurnsLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iTurnsLeft:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iEconomyPerTurn:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iEconomyLeft:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iTurnsLeft:I

    if-nez v2, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iEconomyLeft:I

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setEconomy(I)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iEconomyLeft:I

    sub-int/2addr v3, v1

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iEconomyLeft:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iTurnsLeft:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iEconomyLeft:I

    if-gtz v1, :cond_3

    :cond_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Message_InvestDone;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/CivInvest;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivInvest;->iProvinceID:I

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Message_InvestDone;-><init>(II)V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1
    move v0, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method protected final runInvests_Development()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iTurnsLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iTurnsLeft:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iDevelopemntPerTurn:F

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iDevelopemntLeft:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iTurnsLeft:I

    if-nez v2, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iDevelopemntLeft:F

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iProvinceID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iProvinceID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setDevelopmentLevel(F)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iDevelopemntLeft:F

    sub-float/2addr v3, v1

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iDevelopemntLeft:F

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iTurnsLeft:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iDevelopemntLeft:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    :cond_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Message_InvestDone_Development;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;

    iget v4, v4, Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;->iProvinceID:I

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Message_InvestDone_Development;-><init>(II)V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1
    move v0, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method protected final runNextEvent()V
    .locals 8

    const-string v0, "runEvent: "

    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRunSize()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRun(I)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Event;->EVENT_ID:I

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeEventToRun(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_Event()V

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRunSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRun(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Commands;->addMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    :try_start_1
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRun(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRun(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->iAIChance:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRun(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    if-lt v3, v5, :cond_2

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRun(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->iAIChance:I

    add-int/2addr v6, v5

    if-ge v3, v6, :cond_2

    goto :goto_3

    :cond_2
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRun(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v6

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget v6, v6, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->iAIChance:I

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_3
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRun(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getCivID()I

    move-result v3

    if-ltz v3, :cond_4

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRun(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getCivID()I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRun(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addEvent_DecisionTaken(Ljava/lang/String;)V

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": Decision: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRun(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v5

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->sTitle:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Commands;->addMessage(Ljava/lang/String;)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getEventsToRun(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->executeDecision()V

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeEventToRun(I)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_0
    move-exception v3

    :try_start_2
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :catch_1
    :cond_5
    :goto_5
    return-void
.end method

.method protected final runWarReparations()V
    .locals 4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsPay:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsPay:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iTurnsLeft:I

    add-int/lit8 v3, v2, -0x1

    iput v3, v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iTurnsLeft:I

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Message_WarReparationsRepaid_Green;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsPay:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iFromCivID:I

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Message_WarReparationsRepaid_Green;-><init>(I)V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsPay:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iTurnsLeft:I

    add-int/lit8 v3, v2, -0x1

    iput v3, v1, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iTurnsLeft:I

    if-gtz v2, :cond_2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Message_WarReparationsRepaid;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/WarReparations;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/WarReparations;->iFromCivID:I

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Message_WarReparationsRepaid;-><init>(I)V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lWarReparationsGets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected final setAI_Style(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iAI_Style:I

    return-void
.end method

.method protected final setAllianceID(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iAllianceID:I

    return-void
.end method

.method public setAtNuclearWar()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtNuclearWar:Z

    return-void
.end method

.method protected final setB(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    int-to-short p1, p1

    iput-short p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iB:S

    return-void
.end method

.method protected final setBordersWithEnemy(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->bordersWithEnemy:I

    return-void
.end method

.method protected final setCanExpandOnContinent(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->canExpandOnContinent:Z

    return-void
.end method

.method protected final setCapitalMoved_LastTurnID(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iCapitalMoved_LastTurnID:I

    return-void
.end method

.method protected final setCapitalProvinceID(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iCapitalProvinceID:I

    return-void
.end method

.method protected final setCivID(I)V
    .locals 1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRankPosition:I

    return-void
.end method

.method protected final setCivID_Just(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    return-void
.end method

.method protected final setCivName(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    const-string p1, "A"

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput-object p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->sCivName:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivNameWidth:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivNameHeight:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCivNameChars:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->sCivName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCivNameChars:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lCivNameChars:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivNameLength:I

    return-void
.end method

.method protected final setCivTag(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput-object p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->sCivTag:Ljava/lang/String;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, ""

    move-object v2, v1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v4, p1, v0

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    const-string v2, " \u0438 "

    goto :goto_1

    :cond_0
    move-object v2, v1

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivName(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivName(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method protected final setClosingTheCommerce(Z)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput-boolean p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->closingTheCommerce:Z

    return-void
.end method

.method protected final setControlledByPlayer(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->controlledByPlayer:Z

    return-void
.end method

.method protected final setCoreCapitalProvinceID(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iCoreCapitalProvinceID:I

    return-void
.end method

.method protected final setDefensivePact(II)Z
    .locals 3

    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-le p2, v0, :cond_1

    const/16 p2, 0xc8

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lDefensivePact:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-lez p2, :cond_4

    const/4 p2, 0x0

    :goto_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_DefensivePact:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_DefensivePact:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_2

    return v1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_DefensivePact:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    :goto_2
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_DefensivePact:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_6

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_DefensivePact:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_5

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_DefensivePact:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :catch_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lDefensivePact:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    return v1
.end method

.method protected final setDiplomacyPoints(I)V
    .locals 4

    int-to-float v0, p1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v1

    const/high16 v2, 0x42aa0000    # 85.0f

    mul-float v1, v1, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    const/16 v2, 0x1f4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iDiplomacyPoints:I

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iDiplomacyPoints:I

    add-int/lit8 p1, p1, 0x1

    if-le p1, v2, :cond_0

    const/16 p1, 0x1f4

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iDiplomacyPoints:I

    return-void
.end method

.method protected final setFirstReactor(Z)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput-boolean p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iFirstReactor:Z

    return-void
.end method

.method protected final setFlag(Lage/of/civilizations2/jakowski/lukasz/Image;)V
    .locals 0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->disposeFlag()V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civFlag:Lage/of/civilizations2/jakowski/lukasz/Image;

    return-void
.end method

.method protected final setG(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    int-to-short p1, p1

    iput-short p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iG:S

    return-void
.end method

.method public setGoldenAge_Military(I)V
    .locals 1

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iGoldenAge_Military:I

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iGoldenAge_Military:I

    return-void
.end method

.method public setGoldenAge_Prosperity(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iGoldenAge_Prosperity:I

    return-void
.end method

.method public setGoldenAge_Science(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iGoldenAge_Science:I

    return-void
.end method

.method protected final setGuarantee(II)Z
    .locals 3

    const/16 v0, 0x7d

    const/4 v1, 0x0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-le p2, v0, :cond_1

    const/16 p2, 0x7d

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lGuarantee:Ljava/util/List;

    int-to-byte v2, p2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-lez p2, :cond_4

    const/4 p2, 0x0

    :goto_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Guarantee:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Guarantee:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_2

    return v1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Guarantee:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    :goto_2
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Guarantee:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_6

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Guarantee:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_5

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Guarantee:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :catch_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lGuarantee:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    return v1
.end method

.method protected final setHappiness(I)V
    .locals 1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iHappiness:I

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iHappiness:I

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iHappiness:I

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/16 p1, 0x0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iHappiness:I

    :cond_1
    :goto_0
    return-void
.end method

.method protected final setHappiness_10Turn(F)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iHappiness_10Turn:F

    return-void
.end method

.method protected final setIdeologyID(I)V
    .locals 2

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIdeologyID:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->AI_TYPE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/AI;->getAIStyle_ByTag(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setAI_Style(I)V

    return-void
.end method

.method protected final setInReformation(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iInReformation:I

    return-void
.end method

.method protected final setIsAlliedWithPlayer(Z)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput-boolean p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->isAlliedWithPlayer:Z

    return-void
.end method

.method protected final setIsAtWar(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWar:Z

    return-void
.end method

.method protected final setIsAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAvailable:Z

    return-void
.end method

.method protected final setIsPartOfHolyRomanEmpire(Z)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput-boolean p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->isPartOfHolyRomaEmpire:Z

    return-void
.end method

.method protected final setManPower(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iManPower:I

    return-void
.end method

.method protected final setManPowerPerTurn(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iManPowerIncreasing_PerTurn:I

    return-void
.end method

.method protected final setManPower_ThisTurn(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iManPower_InThisTurn:I

    return-void
.end method

.method protected final setMilitaryAccess(II)Z
    .locals 3

    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-le p2, v0, :cond_1

    const/16 p2, 0xc8

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMilitirayAccess:Ljava/util/List;

    int-to-byte v2, p2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-lez p2, :cond_4

    const/4 p2, 0x0

    :goto_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_MilitirayAccess:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_MilitirayAccess:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_2

    return v1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_MilitirayAccess:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    :goto_2
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_MilitirayAccess:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_6

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_MilitirayAccess:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_5

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_MilitirayAccess:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :catch_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMilitirayAccess:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    return v1
.end method

.method protected final setModifier_AttackBonus(F)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_AttackBonus:F

    return-void
.end method

.method protected final setModifier_DefenseBonus(F)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_DefenseBonus:F

    return-void
.end method

.method protected final setModifier_EconomyGrowth(F)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_EconomyGrowth:F

    return-void
.end method

.method protected final setModifier_IncomeProduction(F)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_IncomeProduction:F

    return-void
.end method

.method protected final setModifier_IncomeTaxation(F)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_IncomeTaxation:F

    return-void
.end method

.method protected final setModifier_MilitaryUpkeep(F)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_MilitaryUpkeep:F

    return-void
.end method

.method protected final setModifier_MovementPoints(F)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_MovementPoints:F

    return-void
.end method

.method protected final setModifier_PopGrowth(F)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_PopGrowth:F

    return-void
.end method

.method protected final setModifier_Research(F)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_Research:F

    return-void
.end method

.method protected final setMoney(J)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput-wide p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iMoney:J

    return-void
.end method

.method protected final setMovePoints(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iMovePoints:I

    return-void
.end method

.method protected final setNextElection(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNextElection:I

    return-void
.end method

.method protected final setNonAggressionPact(II)Z
    .locals 3

    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-le p2, v0, :cond_1

    const/16 p2, 0xc8

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lNonAggressionPact:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-lez p2, :cond_4

    const/4 p2, 0x0

    :goto_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_NonAggressionPact:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_NonAggressionPact:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_2

    return v1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_NonAggressionPact:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    :goto_2
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_NonAggressionPact:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_6

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_NonAggressionPact:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_5

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_NonAggressionPact:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :catch_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lNonAggressionPact:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    return v1
.end method

.method protected final setNuclearWeapons(I)V
    .locals 1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNuclearWeapons:I

    return-void
.end method

.method protected final setNuclearWeaponsPerTurn(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNuclearWeaponsPerTurn:I

    return-void
.end method

.method protected final setNuclearWeaponsTurn(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNuclearWeaponsTurn:I

    return-void
.end method

.method protected final setNumOfNeighboringNeutralProvinces(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfNeighboringNeutralProvinces:I

    return-void
.end method

.method protected final setNumOfProvincesWithoutOccupied(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfProvincesWithoutOccupied:I

    return-void
.end method

.method protected final setNumOfUnits(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfUnits:I

    return-void
.end method

.method protected final setPuppetOfCivID(I)V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    if-eq v0, p1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeVassal(I)V

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    iget p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    if-eq p1, v0, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addVassal(I)V

    :cond_1
    return-void
.end method

.method protected final setPuppetOfCivID(IZ)V
    .locals 8

    if-nez p2, :cond_a

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->leaveAlliance(I)V

    :cond_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    if-eq v1, p1, :cond_a

    const/4 v1, 0x0

    :goto_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    if-eq v0, v1, :cond_1

    if-eq p1, v1, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->setCivRelation_OfCivB(IIF)V

    invoke-virtual {v0, v2, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->setCivRelation_OfCivB(IIF)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v4, :cond_3

    if-gt v0, v1, :cond_3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setPuppetOfCivID(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v0

    if-ne v0, p1, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeVassal(I)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    if-eq v0, v1, :cond_7

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v6

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v7

    iget-boolean v7, v7, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CANT_CHANGE_GOV_OF_VASSAL:Z

    if-nez v7, :cond_4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getExtraTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->updateCivilizationIdeology(ILjava/lang/String;)V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->addFlagToLoad(I)V

    const/4 v6, 0x0

    :goto_2
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v7

    if-ge v6, v7, :cond_4

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    if-ne v7, v1, :cond_8

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->loadPlayersFlag()V

    :cond_4
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->leaveAlliance(I)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addVassal(I)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->acceptAllianceProposal(II)V

    goto/16 :goto_4

    :cond_5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeVassal(I)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    if-eq v0, v1, :cond_7

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v6

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v7

    iget-boolean v7, v7, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CANT_CHANGE_GOV_OF_VASSAL:Z

    if-nez v7, :cond_6

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getExtraTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->updateCivilizationIdeology(ILjava/lang/String;)V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->addFlagToLoad(I)V

    const/4 v6, 0x0

    :goto_3
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v7

    if-ge v6, v7, :cond_6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    if-ne v7, v1, :cond_9

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->loadPlayersFlag()V

    :cond_6
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->leaveAlliance(I)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addVassal(I)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->acceptAllianceProposal(II)V

    :cond_7
    :goto_4
    return-void

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    if-eq v0, p1, :cond_b

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeVassal(I)V

    :cond_b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    if-eq v0, v1, :cond_c

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addVassal(I)V

    :cond_c
    goto :goto_4
.end method

.method protected final setPuppetOfCivID_Empire(IZ)V
    .locals 8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v0, v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->leaveAlliance(I)V

    :cond_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    if-eq v1, p1, :cond_4

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setPuppetOfCivID_Empire(IZ)V

    goto :goto_0

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v0

    if-ne v0, p1, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeVassal(I)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->leaveAlliance(I)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addVassal(I)V

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeVassal(I)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->leaveAlliance(I)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addVassal(I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    if-eq v0, p1, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeVassal(I)V

    :cond_5
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    if-eq v0, v1, :cond_6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addVassal(I)V

    :cond_6
    goto :goto_1
.end method

.method protected final setPuppetOfCivID_PeaceTreaty(IZ)V
    .locals 8

    if-nez p2, :cond_b

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAllianceID()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->leaveAlliance(I)V

    :cond_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    if-eq v1, p1, :cond_b

    const/4 v1, 0x0

    :goto_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    if-eq v0, v1, :cond_2

    if-eq p1, v1, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsAtWar(II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->controlOccupiedProvinceFrom(II)V

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->setCivRelation_OfCivB(IIF)V

    invoke-virtual {v0, v2, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->setCivRelation_OfCivB(IIF)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v4, :cond_4

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setPuppetOfCivID(IZ)V

    goto :goto_1

    :cond_4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v0

    if-ne v0, p1, :cond_6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeVassal(I)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v6

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v7

    iget-boolean v7, v7, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CANT_CHANGE_GOV_OF_VASSAL:Z

    if-nez v7, :cond_5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getExtraTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->updateCivilizationIdeology(ILjava/lang/String;)V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->addFlagToLoad(I)V

    const/4 v6, 0x0

    :goto_2
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v7

    if-ge v6, v7, :cond_5

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    if-ne v7, v1, :cond_9

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->loadPlayersFlag()V

    :cond_5
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->leaveAlliance(I)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addVassal(I)V

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->holyRomanEmpire_Manager:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->getHRE()Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getIsEmperor(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->addPrince(I)V

    goto/16 :goto_4

    :cond_6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeVassal(I)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v6

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v7

    iget-boolean v7, v7, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CANT_CHANGE_GOV_OF_VASSAL:Z

    if-nez v7, :cond_7

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getExtraTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->updateCivilizationIdeology(ILjava/lang/String;)V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->unionFlagsToGenerate_Manager:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_Manager;->addFlagToLoad(I)V

    const/4 v6, 0x0

    :goto_3
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v7

    if-ge v6, v7, :cond_7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v7

    if-ne v7, v1, :cond_a

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->loadPlayersFlag()V

    :cond_7
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->leaveAlliance(I)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addVassal(I)V

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->holyRomanEmpire_Manager:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->getHRE()Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getIsEmperor(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->addPrince(I)V

    :cond_8
    :goto_4
    return-void

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    if-eq v0, p1, :cond_c

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->removeVassal(I)V

    :cond_c
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    if-eq v0, v1, :cond_d

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPuppetOfCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addVassal(I)V

    :cond_d
    goto :goto_4
.end method

.method protected final setR(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    int-to-short p1, p1

    iput-short p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iR:S

    return-void
.end method

.method protected final setRankPosition(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRankPosition:I

    return-void
.end method

.method protected final setRankScore(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iRankScore:I

    return-void
.end method

.method protected final setRelation(IF)V
    .locals 3

    const/high16 v0, -0x3d380000    # -100.0f

    const/high16 v1, 0x437a0000    # 250.0f

    cmpl-float v2, p2, v1

    if-lez v2, :cond_0

    const/high16 p2, 0x437a0000    # 250.0f

    goto :goto_0

    :cond_0
    cmpg-float v1, p2, v0

    if-gez v1, :cond_1

    const/high16 p2, -0x3d380000    # -100.0f

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRelation:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRelation:Ljava/util/List;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method protected final setResearchProgress(F)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fResearchProgress:F

    return-void
.end method

.method protected final setResources(J)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput-wide p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iManPower:J

    return-void
.end method

.method protected final setSeaAccess(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->seaAccess:I

    return-void
.end method

.method protected final setSpendings_Goods(F)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fSpendings_Goods:F

    iget p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fSpendings_Goods:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fSpendings_Goods:F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fSpendings_Goods:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fSpendings_Goods:F

    :cond_1
    :goto_0
    return-void
.end method

.method protected final setSpendings_Investments(F)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fSpendings_Investments:F

    iget p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fSpendings_Investments:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fSpendings_Investments:F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fSpendings_Investments:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fSpendings_Investments:F

    :cond_1
    :goto_0
    return-void
.end method

.method protected final setSpendings_Research(F)V
    .locals 6

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, -0x1f4

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput v2, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fSpendings_Research:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fSpendings_Research:F

    iget p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fSpendings_Research:F

    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput v2, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fSpendings_Research:F

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fSpendings_Research:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fSpendings_Research:F

    :cond_2
    :goto_0
    return-void
.end method

.method protected final setStability(F)V
    .locals 1

    const v0, 0x3c23d70a    # 0.01f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->fStability:F

    return-void
.end method

.method protected final setSupportRate(F)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iSupport_Rate:F

    return-void
.end method

.method protected final setTaxationLevel(F)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fTaxationLevel:F

    iget p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fTaxationLevel:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fTaxationLevel:F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fTaxationLevel:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fTaxationLevel:F

    :cond_1
    :goto_0
    return-void
.end method

.method protected final setTechnologyLevel(F)V
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fTechnologyLevel:I

    iget p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fTechnologyLevel:I

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    const/16 v0, 0x3e8

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fTechnologyLevel:I

    :cond_0
    return-void
.end method

.method protected final setTechnologyLevel_INT(I)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fTechnologyLevel:I

    iget p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fTechnologyLevel:I

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    const/16 v0, 0x3e8

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fTechnologyLevel:I

    :cond_0
    return-void
.end method

.method protected final setTruce(II)Z
    .locals 3

    const/16 v0, 0x32

    const/4 v1, 0x0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-le p2, v0, :cond_1

    const/16 p2, 0x32

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lTruce:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-lez p2, :cond_4

    const/4 p2, 0x0

    :goto_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Truce:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Truce:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_2

    return v1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Truce:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    :goto_2
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Truce:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_6

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Truce:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_5

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Truce:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :catch_0
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lTruce:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    return v1
.end method

.method protected final setUpdateRegions(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateRegions:Z

    return-void
.end method

.method protected final setVassalLiberityDesire(F)V
    .locals 3

    const/high16 v0, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x42c80000    # 100.0f

    :cond_1
    :goto_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fVassalLiberityDisere:F

    return-void
.end method

.method protected final setVassal_Tribute(II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->iCivID:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;->setTribute(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p2, p2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;

    invoke-direct {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object p2, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iVassalsSize:I

    return-void
.end method

.method protected final setWarWeariness(F)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fWarWeariness:F

    return-void
.end method

.method protected final updateBonuses()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lBonuses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lBonuses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->iTurnsLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->iTurnsLeft:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lBonuses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->iTurnsLeft:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lBonuses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->applyBonusChanges_Expired(Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lBonuses:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final updateChangeGoverment()V
    .locals 3

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIdeologyID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ELECTION_PERIOD:I

    if-lez v1, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNextElection()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->isAtWar()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSupportRate()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSupportRate(F)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIdeologyID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REFORMATION_PERIOD:I

    if-lez v1, :cond_1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getInReformation()I

    move-result v1

    if-lez v1, :cond_1

    if-lt v0, v1, :cond_1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iWillChangeToIdeologyID:I

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Civ_Mission_ChangeTypeOfGoverment;

    invoke-direct {v2, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civ_Mission_ChangeTypeOfGoverment;-><init>(II)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->changeTypeOfGoverment:Lage/of/civilizations2/jakowski/lukasz/Civ_Mission_ChangeTypeOfGoverment;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setInReformation(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected final updateCivilizationIdeology()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeologyID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setIdeologyID(I)V

    return-void
.end method

.method protected final updateCivilizationIdeology(Ljava/lang/String;III)V
    .locals 0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setCivTag(Ljava/lang/String;)V

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    int-to-short p2, p2

    iput-short p2, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iR:S

    int-to-short p2, p3

    iput-short p2, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iG:S

    int-to-short p2, p4

    iput-short p2, p1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iB:S

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->updateCivilizationIdeology()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->loadFlag()Z

    return-void
.end method

.method protected final updateDiplomacy_AfterAddingCivilization()V
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRelation:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lGuarantee:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMilitirayAccess:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lNonAggressionPact:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lTruce:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lDefensivePact:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final updateDiplomacy_AfterRemoveCivilization(I)V
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lNonAggressionPact:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lTruce:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lDefensivePact:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Truce:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Truce:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Truce:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_DefensivePact:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_DefensivePact:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_DefensivePact:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_NonAggressionPact:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_NonAggressionPact:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_4

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_NonAggressionPact:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method

.method protected final updateDiplomacy_AfterRemoveCivilization_Relations(I)V
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRelation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lGuarantee:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lMilitirayAccess:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Guarantee:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Guarantee:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_Guarantee:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_MilitirayAccess:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_MilitirayAccess:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lOpt_MilitirayAccess:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method protected final updateFriendlyCiv()V
    .locals 0

    return-void
.end method

.method protected final updateLoansNextTurn()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lLoansTaken:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lLoansTaken:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Loan_GameData;

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/Loan_GameData;->iTurnsLeft:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/Loan_GameData;->iTurnsLeft:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lLoansTaken:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Loan_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Loan_GameData;->iTurnsLeft:I

    if-gtz v2, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lLoansTaken:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Message_Repaid;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivID()I

    move-result v4

    invoke-direct {v2, v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Message_Repaid;-><init>(II)V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    move v1, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final updateManPowerIncreasing()V
    .locals 13

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countPopulation_WithoutOccupied()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    move v4, v1

    const/16 v0, 0x12c

    div-int/2addr v1, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIdeologyID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    iget v6, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MANPOWER_BONUS:F

    int-to-float v1, v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfTurnsAtWar:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    add-float/2addr v6, v2

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v1, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->modifierManPower_CivID(I)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v5

    if-eq v2, v5, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countPopulation_WithoutOccupied()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    div-int/lit8 v6, v6, 0x8

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getManPower()I

    move-result v5

    div-int/lit8 v3, v1, 0x5

    iget v8, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfUnits:I

    int-to-float v8, v8

    const v7, 0x4a989680    # 5000000.0f

    sub-float v8, v7, v8

    div-float/2addr v8, v7

    const/4 v0, 0x0

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    int-to-float v3, v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    sub-int/2addr v1, v3

    add-int/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v2, v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setManPower(I)V

    :cond_0
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iNumOfUnits:I

    int-to-float v3, v3

    const v5, 0x4a989680    # 5000000.0f

    sub-float v3, v5, v3

    div-float/2addr v3, v5

    const/4 v0, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput v1, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iManPowerIncreasing_PerTurn:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getManPower()I

    move-result v0

    add-int/2addr v0, v1

    div-int/lit8 v4, v4, 0x8

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setManPower(I)V

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setManPower_ThisTurn(I)V

    return-void
.end method

.method protected final updateNextElection_Start()V
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIdeologyID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ELECTION_PERIOD:I

    if-lez v1, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setNextElection(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setInReformation(I)V

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSupportRate(F)V

    return-void
.end method

.method protected final updateNextReformation_Start()V
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIdeologyID:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REFORMATION_PERIOD:I

    if-lez v1, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iChangeGoverment_SinceTurn:I

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setInReformation(I)V

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSupportRate(F)V

    return-void
.end method

.method public updateNuclearWeapon()V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v3

    if-lez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0x1e

    if-lt v2, v3, :cond_2

    const/16 v2, 0x1d

    :cond_2
    rsub-int/lit8 v3, v2, 0x1e

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setNuclearWeaponsPerTurn(I)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNuclearWeaponsTurn()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNuclearWeaponsPerTurn()I

    move-result v4

    if-lt v3, v4, :cond_4

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setNuclearWeaponsTurn(I)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNuclearWeapons()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setNuclearWeapons(I)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Message_Producted_NuclearWeapon;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-direct {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Message_Producted_NuclearWeapon;-><init>(II)V

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNuclearWeaponsTurn()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setNuclearWeaponsTurn(I)V

    goto :goto_1
.end method

.method protected final updateStartingManPower()V
    .locals 4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->countPopulation_WithoutOccupied()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    const/16 v0, 0x10

    div-int/2addr v1, v0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIdeologyID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MANPOWER_BONUS:F

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->modifierManPower_CivID(I)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setManPower(I)V

    return-void
.end method

.method protected final updateSupport_Rate()V
    .locals 6

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIdeologyID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    iget v4, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->SUPPORT_RATE_INCREASING:F

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iIdeologyID:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v3

    iget v5, v3, Lage/of/civilizations2/jakowski/lukasz/Ideology;->SUPPORT_RATE_CHANGING:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getHappiness_10Turn()F

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getSupportRate()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->iCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getCivHappiness_WithoutOccupied(I)F

    move-result v2

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setHappiness_10Turn(F)V

    sub-float/2addr v2, v0

    mul-float/2addr v2, v5

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-gez v3, :cond_0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    goto :goto_0

    :cond_0
    mul-float/2addr v2, v4

    :goto_0
    const/high16 v3, -0x3db80000    # -50.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSupportRate(F)V

    return-void
.end method

.method protected final updateSupport_Rate_Start()V
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setSupportRate(F)V

    const/high16 v0, -0x3b860000    # -1000.0f

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setHappiness_10Turn(F)V

    return-void
.end method
