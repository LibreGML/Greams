.class Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;
.super Ljava/lang/Object;
.source "Save_Civ_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected allianceCheck_TurnID:I

.field protected allianceUpdate_TurnID:I

.field protected changeTypeOfGoverment:Lage/of/civilizations2/jakowski/lukasz/Civ_Mission_ChangeTypeOfGoverment;

.field protected checkFormCiv_TurnID:I

.field protected circledVassals_TurnID:I

.field protected civAggresionLevel:F

.field protected civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

.field protected civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

.field protected civRivals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI_Rival;",
            ">;"
        }
    .end annotation
.end field

.field protected civRivalsSize:I

.field protected civilization_Diplomacy_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

.field protected civsInRange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI_CivsInRange;",
            ">;"
        }
    .end annotation
.end field

.field protected civsInfluenced:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/AI_Influence;",
            ">;"
        }
    .end annotation
.end field

.field protected civsInfluencedSize:I

.field protected closingTheCommerce:Z

.field protected declareWar_CheckNextTurnID:I

.field protected fBuildCostModifier:F

.field protected fModifier_Administration:F

.field protected fModifier_AttackBonus:F

.field protected fModifier_AttackBonus_GoldenAge:F

.field protected fModifier_AttackBonus_Leader:F

.field protected fModifier_ColonizationCost:F

.field protected fModifier_DefenseBonus:F

.field protected fModifier_DefenseBonus_GoldenAge:F

.field protected fModifier_DefenseBonus_Leader:F

.field protected fModifier_EconomyGrowth:F

.field protected fModifier_IncomeProduction:F

.field protected fModifier_IncomeTaxation:F

.field protected fModifier_MilitaryUpkeep:F

.field protected fModifier_MovementPoints:F

.field protected fModifier_PopGrowth:F

.field protected fModifier_Research:F

.field protected fModifier_assimilateCost:F

.field protected fResearchProgress:F

.field protected fSpendings_Goods:F

.field protected fSpendings_Investments:F

.field protected fSpendings_Research:F

.field protected fTaxationLevel:F

.field protected fTechnologyLevel:I

.field protected fVassalLiberityDisere:F

.field protected fWarWeariness:F

.field protected haveNotMoney:Z

.field protected holdLookingForEnemy_UntilTurnID:I

.field protected holdLookingForFriends_UntilTurnID:I

.field protected iAI_Style:I

.field protected iAllianceID:I

.field protected iB:S

.field protected iCapitalMoved_LastTurnID:I

.field protected iCapitalProvinceID:I

.field protected iChangeGoverment_SinceTurn:I

.field protected iCoreCapitalProvinceID:I

.field protected iDiplomacyPoints:I

.field protected iExpandNeutralProvinces_RangeCheck:I

.field public iFirstReactor:Z

.field protected iG:S

.field protected iGoldenAge_Military:I

.field protected iGoldenAge_Prosperity:I

.field protected iGoldenAge_Science:I

.field protected iHappiness_10Turn:F

.field protected iHatedCivsSize:I

.field protected iHatedCivs_BySize:I

.field protected iInReformation:I

.field protected iLockColonization_UntilTurnID:I

.field protected iLockTreasury:I

.field protected iManPower:I

.field protected iManPower:J

.field protected iManPowerIncreasing_PerTurn:I

.field protected iManPower_InThisTurn:I

.field protected iMoney:J

.field protected iNextCheckMilitaryAccessSeaTurnID:I

.field protected iNextCheckMilitaryAccessTurnID:I

.field protected iNextElection:I

.field protected iNextPossibleNavalInvastionTurnID:I

.field public iNuclearWeapons:I

.field public iNuclearWeaponsPerTurn:I

.field public iNuclearWeaponsTurn:I

.field protected iNumOfBuildingsConstructed:I

.field protected iNumOfConqueredProvinces:I

.field protected iNumOfRevolutions:I

.field protected iNumOfTurnsAtWar:I

.field protected iPlunder_LastTurnID:I

.field protected iPuppetOfCivID:I

.field protected iR:S

.field protected iRecruitedArmy:I

.field protected iRegroupArmyAtPeace_CheckTurnID:I

.field protected iRegroupArmySize:I

.field protected iRevolt_LastTurnLostProvince:I

.field protected iRevolt_SinceTurn:I

.field protected iSendGift_LastTurnID:I

.field protected iSupport_Rate:F

.field protected iVassalsSize:I

.field protected iWillChangeToIdeologyID:I

.field protected isAlliedWithPlayer:Z

.field protected isPartOfHolyRomaEmpire:Z

.field protected lAssimilates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/CivFestival;",
            ">;"
        }
    .end annotation
.end field

.field protected lBonuses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;",
            ">;"
        }
    .end annotation
.end field

.field protected lColonies_Founded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization_Colonies;",
            ">;"
        }
    .end annotation
.end field

.field protected lConstructions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;",
            ">;"
        }
    .end annotation
.end field

.field protected lEvents_DecisionsTaken:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected lFestivals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/CivFestival;",
            ">;"
        }
    .end annotation
.end field

.field protected lFriendlyCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization_Friends_GameData;",
            ">;"
        }
    .end annotation
.end field

.field protected lGifts_Received:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civ_Gift_GameData;",
            ">;"
        }
    .end annotation
.end field

.field protected lHatedCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization_Hated_GameData;",
            ">;"
        }
    .end annotation
.end field

.field protected lHatedCivs_By:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected lInvest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/CivInvest;",
            ">;"
        }
    .end annotation
.end field

.field protected lInvest_Development:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/CivInvest_Development;",
            ">;"
        }
    .end annotation
.end field

.field protected lLoansTaken:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Loan_GameData;",
            ">;"
        }
    .end annotation
.end field

.field protected lRegroupArmy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/RegroupArmy_Data;",
            ">;"
        }
    .end annotation
.end field

.field protected lRelation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected lSentMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;",
            ">;"
        }
    .end annotation
.end field

.field protected lVassals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Vassal_GameData;",
            ">;"
        }
    .end annotation
.end field

.field protected lWarReparationsGets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/WarReparations;",
            ">;"
        }
    .end annotation
.end field

.field protected lWarReparationsPay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/WarReparations;",
            ">;"
        }
    .end annotation
.end field

.field protected leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

.field protected moveAtWar_ArmyFullyRecruitedLastTurn:Z

.field protected moveAtWar_ProvincesLostAndConquered_LastTurn:I

.field protected nextArmyRestREgroupment_TurnID:I

.field protected nextBuildCivsInRange_TurnID:I

.field protected numOfUnions:I

.field protected sCivName:Ljava/lang/String;

.field protected sCivTag:Ljava/lang/String;

.field protected skills:Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;


# direct methods
.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fVassalLiberityDisere:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lVassals:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iVassalsSize:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iAI_Style:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNuclearWeaponsPerTurn:I

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iFirstReactor:Z

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNuclearWeaponsTurn:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iHappiness_10Turn:F

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iWillChangeToIdeologyID:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNextElection:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iManPower:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iInReformation:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iSupport_Rate:F

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/CivPersonality;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPersonality:Lage/of/civilizations2/jakowski/lukasz/CivPersonality;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/CivPlans;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civPlans:Lage/of/civilizations2/jakowski/lukasz/CivPlans;

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iRegroupArmyAtPeace_CheckTurnID:I

    const/4 v2, -0x1

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iCoreCapitalProvinceID:I

    const/16 v2, -0x32

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iCapitalMoved_LastTurnID:I

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->isPartOfHolyRomaEmpire:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lEvents_DecisionsTaken:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lColonies_Founded:Ljava/util/List;

    const/4 v2, 0x1

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iLockColonization_UntilTurnID:I

    const/4 v3, 0x0

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->changeTypeOfGoverment:Lage/of/civilizations2/jakowski/lukasz/Civ_Mission_ChangeTypeOfGoverment;

    const/4 v3, 0x6

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iExpandNeutralProvinces_RangeCheck:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNextPossibleNavalInvastionTurnID:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civsInRange:Ljava/util/List;

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->nextBuildCivsInRange_TurnID:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->holdLookingForEnemy_UntilTurnID:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->holdLookingForFriends_UntilTurnID:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civsInfluenced:Ljava/util/List;

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civsInfluencedSize:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civRivals:Ljava/util/List;

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civRivalsSize:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->declareWar_CheckNextTurnID:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->nextArmyRestREgroupment_TurnID:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->numOfUnions:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->civAggresionLevel:F

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->allianceCheck_TurnID:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->allianceUpdate_TurnID:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->circledVassals_TurnID:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->checkFormCiv_TurnID:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iPlunder_LastTurnID:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNextCheckMilitaryAccessTurnID:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNextCheckMilitaryAccessSeaTurnID:I

    const/4 v3, 0x5

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iSendGift_LastTurnID:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfConqueredProvinces:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iRecruitedArmy:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iLockTreasury:I

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->isAlliedWithPlayer:Z

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfRevolutions:I

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->moveAtWar_ArmyFullyRecruitedLastTurn:Z

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->moveAtWar_ProvincesLostAndConquered_LastTurn:I

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;

    invoke-direct {v3}, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->skills:Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_PopGrowth:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_EconomyGrowth:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_IncomeTaxation:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_IncomeProduction:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_Administration:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_Research:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_MilitaryUpkeep:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_AttackBonus_Leader:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_DefenseBonus_Leader:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_AttackBonus:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_DefenseBonus:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_MovementPoints:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_ColonizationCost:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_assimilateCost:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_AttackBonus_GoldenAge:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_DefenseBonus_GoldenAge:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fBuildCostModifier:F

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lBonuses:Ljava/util/List;

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iGoldenAge_Prosperity:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iGoldenAge_Military:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iGoldenAge_Science:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfTurnsAtWar:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fWarWeariness:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fSpendings_Research:F

    const v3, 0x3e19999a    # 0.15f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fSpendings_Investments:F

    const v3, 0x3e4ccccd    # 0.2f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fSpendings_Goods:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fResearchProgress:F

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fTaxationLevel:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFestivals:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lAssimilates:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lInvest_Development:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lConstructions:Ljava/util/List;

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iAllianceID:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lRelation:Ljava/util/List;

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iRevolt_SinceTurn:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iRevolt_LastTurnLostProvince:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lHatedCivs:Ljava/util/List;

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iHatedCivsSize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lHatedCivs_By:Ljava/util/List;

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iHatedCivs_BySize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lFriendlyCivs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lSentMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lGifts_Received:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final addGift_Received(I)V
    .locals 4

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lGifts_Received:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lGifts_Received:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civ_Gift_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civ_Gift_GameData;->iFromCivID:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lGifts_Received:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civ_Gift_GameData;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Civ_Gift_GameData;->iTurnID:I

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lGifts_Received:Ljava/util/List;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Civ_Gift_GameData;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    invoke-direct {v2, p1, v3}, Lage/of/civilizations2/jakowski/lukasz/Civ_Gift_GameData;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected final setLeader(Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;)V
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    if-eqz v0, :cond_0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_PopGrowth:F

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_PopGrowth:F

    sub-float/2addr v1, v0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_PopGrowth:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_EconomyGrowth:F

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_EconomyGrowth:F

    sub-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_EconomyGrowth:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_IncomeTaxation:F

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeTaxation:F

    sub-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_IncomeTaxation:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_IncomeProduction:F

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeProduction:F

    sub-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_IncomeProduction:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_Administration:F

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Administration:F

    sub-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_Administration:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_Research:F

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Research:F

    sub-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_Research:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_MilitaryUpkeep:F

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MilitaryUpkeep:F

    sub-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_MilitaryUpkeep:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_AttackBonus:F

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_AttackBonus:F

    sub-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_AttackBonus:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_DefenseBonus:F

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_DefenseBonus:F

    sub-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_DefenseBonus:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_MovementPoints:F

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MovementPoints:F

    sub-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_MovementPoints:F

    :cond_0
    if-eqz p1, :cond_15

    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_PopGrowth:F

    const/high16 v1, -0x40000000    # -2.0f

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iput v2, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_PopGrowth:F

    goto :goto_0

    :cond_1
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_PopGrowth:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_PopGrowth:F

    :cond_2
    :goto_0
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_EconomyGrowth:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iput v2, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_EconomyGrowth:F

    goto :goto_1

    :cond_3
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_EconomyGrowth:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_EconomyGrowth:F

    :cond_4
    :goto_1
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeTaxation:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    iput v2, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeTaxation:F

    goto :goto_2

    :cond_5
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeTaxation:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeTaxation:F

    :cond_6
    :goto_2
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeProduction:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    iput v2, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeProduction:F

    goto :goto_3

    :cond_7
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeProduction:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeProduction:F

    :cond_8
    :goto_3
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Administration:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_9

    iput v2, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Administration:F

    goto :goto_4

    :cond_9
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Administration:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Administration:F

    :cond_a
    :goto_4
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Research:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_b

    iput v2, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Research:F

    goto :goto_5

    :cond_b
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Research:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Research:F

    :cond_c
    :goto_5
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MilitaryUpkeep:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_d

    iput v2, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MilitaryUpkeep:F

    goto :goto_6

    :cond_d
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MilitaryUpkeep:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MilitaryUpkeep:F

    :cond_e
    :goto_6
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_AttackBonus:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_f

    iput v2, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_AttackBonus:F

    goto :goto_7

    :cond_f
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_AttackBonus:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_10

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_AttackBonus:F

    :cond_10
    :goto_7
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_DefenseBonus:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_11

    iput v2, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_DefenseBonus:F

    goto :goto_8

    :cond_11
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_DefenseBonus:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_DefenseBonus:F

    :cond_12
    :goto_8
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MovementPoints:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_13

    iput v2, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MovementPoints:F

    goto :goto_9

    :cond_13
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MovementPoints:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MovementPoints:F

    :cond_14
    :goto_9
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_PopGrowth:F

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_PopGrowth:F

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_PopGrowth:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_EconomyGrowth:F

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_EconomyGrowth:F

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_EconomyGrowth:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_IncomeTaxation:F

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeTaxation:F

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_IncomeTaxation:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_IncomeProduction:F

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeProduction:F

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_IncomeProduction:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_Administration:F

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Administration:F

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_Administration:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_Research:F

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Research:F

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_Research:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_MilitaryUpkeep:F

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MilitaryUpkeep:F

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_MilitaryUpkeep:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_AttackBonus:F

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_AttackBonus:F

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_AttackBonus:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_DefenseBonus:F

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_DefenseBonus:F

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_DefenseBonus:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_MovementPoints:F

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MovementPoints:F

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->fModifier_MovementPoints:F

    :cond_15
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    return-void
.end method

.method protected final updateGift_Received()V
    .locals 3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lGifts_Received:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lGifts_Received:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Civ_Gift_GameData;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civ_Gift_GameData;->iTurnID:I

    add-int/lit8 v1, v1, 0x5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->lGifts_Received:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
