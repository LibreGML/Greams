.class Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;
.super Ljava/lang/Object;
.source "Scenario_GameData_Diplomacy_VassalsData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iCivID:I

.field private iCivLordID:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;->setCivID(I)V

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;->setCivLordID(I)V

    return-void
.end method


# virtual methods
.method protected final getCivID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;->iCivID:I

    return v0
.end method

.method protected final getCivLordID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;->iCivLordID:I

    return v0
.end method

.method protected final setCivID(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;->iCivID:I

    return-void
.end method

.method protected final setCivLordID(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Diplomacy_VassalsData;->iCivLordID:I

    return-void
.end method
