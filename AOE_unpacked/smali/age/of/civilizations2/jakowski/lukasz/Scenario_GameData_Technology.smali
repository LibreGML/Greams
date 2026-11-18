.class Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;
.super Ljava/lang/Object;
.source "Scenario_GameData_Technology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iContinentID:I

.field private iPercentage:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;->iContinentID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;->iPercentage:I

    return-void
.end method


# virtual methods
.method protected final getContinentID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;->iContinentID:I

    return v0
.end method

.method protected final getPercentage()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;->iPercentage:I

    return v0
.end method

.method protected final setContinentID(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;->iContinentID:I

    return-void
.end method

.method protected final setPercentage(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Technology;->iPercentage:I

    return-void
.end method
