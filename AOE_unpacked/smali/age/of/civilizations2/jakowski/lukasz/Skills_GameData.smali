.class Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;
.super Ljava/lang/Object;
.source "Skills_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected CASE:I

.field protected POINTS_ADMINISTRATION:I

.field protected POINTS_ASSIMILATE_COST:I

.field protected POINTS_ATTACK_BONUS:I

.field protected POINTS_BUILD_COST:I

.field protected POINTS_COLONIZATION:I

.field protected POINTS_DEFENSE_BONUS:I

.field protected POINTS_ECONOMY_GROWTH:I

.field protected POINTS_Education:I

.field protected POINTS_INCOME_PRODUCTION:I

.field protected POINTS_INCOME_TAXATION:I

.field protected POINTS_Infrastructure:I

.field protected POINTS_MILITARY_UPKEEP:I

.field protected POINTS_Medicine:I

.field protected POINTS_Metallurgy:I

.field protected POINTS_POP_GROWTH:I

.field protected POINTS_RESEARCH:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_POP_GROWTH:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_ECONOMY_GROWTH:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_INCOME_TAXATION:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_INCOME_PRODUCTION:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_ADMINISTRATION:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_MILITARY_UPKEEP:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_RESEARCH:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_COLONIZATION:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_ATTACK_BONUS:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_DEFENSE_BONUS:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_BUILD_COST:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_ASSIMILATE_COST:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_Infrastructure:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_Medicine:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_Metallurgy:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_Education:I

    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->CASE:I

    return-void
.end method


# virtual methods
.method protected final getPointsLeft(I)I
    .locals 4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel_INT()I

    move-result v0

    const/4 v3, 0x1

    sub-int v3, v0, v3

    const/16 v2, 0x28

    div-int/2addr v3, v2

    const/4 v2, 0x1

    add-int/2addr v3, v2

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->CASE:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_POP_GROWTH:I

    sub-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_ECONOMY_GROWTH:I

    sub-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_INCOME_TAXATION:I

    sub-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_INCOME_PRODUCTION:I

    sub-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_ADMINISTRATION:I

    sub-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_MILITARY_UPKEEP:I

    sub-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_RESEARCH:I

    sub-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_COLONIZATION:I

    sub-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_ATTACK_BONUS:I

    sub-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_DEFENSE_BONUS:I

    sub-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_BUILD_COST:I

    sub-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_ASSIMILATE_COST:I

    sub-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_Infrastructure:I

    sub-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_Medicine:I

    sub-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_Metallurgy:I

    sub-int/2addr v0, v1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Skills_GameData;->POINTS_Education:I

    sub-int/2addr v0, v1

    return v0
.end method
