.class Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;
.super Ljava/lang/Object;
.source "CivBonus_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected BONUS_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

.field protected fModifier_AttackBonus:F

.field protected fModifier_DefenseBonus:F

.field protected fModifier_EconomyGrowth:F

.field protected fModifier_IncomeProduction:F

.field protected fModifier_IncomeTaxation:F

.field protected fModifier_MilitaryUpkeep:F

.field protected fModifier_MovementPoints:F

.field protected fModifier_PopGrowth:F

.field protected fModifier_Research:F

.field protected iTurnsLeft:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_PROSPERITY:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->BONUS_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_PopGrowth:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_EconomyGrowth:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_IncomeTaxation:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_IncomeProduction:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_Research:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_MilitaryUpkeep:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_AttackBonus:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_DefenseBonus:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->fModifier_MovementPoints:F

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_GameData;->iTurnsLeft:I

    return-void
.end method
