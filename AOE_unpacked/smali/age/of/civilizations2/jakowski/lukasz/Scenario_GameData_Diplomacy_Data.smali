.class Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;
.super Ljava/lang/Object;
.source "Scenario_GameData_Diplomacy_Data.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iCivA:I

.field private iCivB:I

.field private iValue:I


# direct methods
.method protected constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->iCivA:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->iCivB:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->iValue:I

    return-void
.end method


# virtual methods
.method protected final getCivA()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->iCivA:I

    return v0
.end method

.method protected final getCivB()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->iCivB:I

    return v0
.end method

.method protected final getValue()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->iValue:I

    return v0
.end method

.method protected final setCivA(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->iCivA:I

    return-void
.end method

.method protected final setCivB(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->iCivB:I

    return-void
.end method

.method protected final setValue(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_Data;->iValue:I

    return-void
.end method
