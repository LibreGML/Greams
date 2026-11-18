.class public Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;
.super Ljava/lang/Object;
.source "Scenario_GameData_Army.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iArmy:I

.field private iCivID:I

.field private iProvinceID:I


# direct methods
.method protected constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->iProvinceID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->iCivID:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->iArmy:I

    return-void
.end method


# virtual methods
.method protected final getArmy()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->iArmy:I

    return v0
.end method

.method protected final getCivID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->iCivID:I

    return v0
.end method

.method protected final getProvinceID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Scenario_GameData_Army;->iProvinceID:I

    return v0
.end method
