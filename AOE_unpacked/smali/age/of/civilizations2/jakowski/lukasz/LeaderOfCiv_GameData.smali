.class Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;
.super Ljava/lang/Object;
.source "LeaderOfCiv_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private Day:I

.field private Month:I

.field private Year:I

.field protected fModifier_Administration:F

.field protected fModifier_AttackBonus:F

.field protected fModifier_DefenseBonus:F

.field protected fModifier_EconomyGrowth:F

.field protected fModifier_IncomeProduction:F

.field protected fModifier_IncomeTaxation:F

.field protected fModifier_MilitaryUpkeep:F

.field protected fModifier_MovementPoints:F

.field protected fModifier_PopGrowth:F

.field protected fModifier_Research:F

.field private sImage:Ljava/lang/String;

.field private sName:Ljava/lang/String;

.field private sTag:Ljava/lang/String;

.field private sWiki:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sTag:Ljava/lang/String;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sName:Ljava/lang/String;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sImage:Ljava/lang/String;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sWiki:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->Year:I

    const/4 v0, 0x2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->Month:I

    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->Day:I

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_PopGrowth:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_EconomyGrowth:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeTaxation:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_IncomeProduction:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Administration:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_Research:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MilitaryUpkeep:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_AttackBonus:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_DefenseBonus:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->fModifier_MovementPoints:F

    return-void
.end method


# virtual methods
.method protected final getDay()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->Day:I

    return v0
.end method

.method protected final getImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sImage:Ljava/lang/String;

    return-object v0
.end method

.method protected final getMonth()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->Month:I

    return v0
.end method

.method protected final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sName:Ljava/lang/String;

    return-object v0
.end method

.method protected final getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sTag:Ljava/lang/String;

    return-object v0
.end method

.method protected final getWiki()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sWiki:Ljava/lang/String;

    return-object v0
.end method

.method protected final getYear()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->Year:I

    return v0
.end method

.method protected final setDay(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->Day:I

    return-void
.end method

.method protected final setImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sImage:Ljava/lang/String;

    return-void
.end method

.method protected final setMonth(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->Month:I

    return-void
.end method

.method protected final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sName:Ljava/lang/String;

    return-void
.end method

.method protected final setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sTag:Ljava/lang/String;

    return-void
.end method

.method protected final setWiki(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->sWiki:Ljava/lang/String;

    return-void
.end method

.method protected final setYear(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->Year:I

    return-void
.end method
