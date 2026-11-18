.class Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;
.super Ljava/lang/Object;
.source "CivArmyMission.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected MISSION_ID:I

.field protected MISSION_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

.field protected TURN_ID:I

.field protected iArmy:I

.field protected iObsolate:I

.field protected iProvinceID:I

.field protected toProvinceID:I


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->PREAPARE_FOR_WAR:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;->MISSION_TYPE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;->iArmy:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;->MISSION_ID:I

    const/16 v1, 0xa

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;->iObsolate:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission;->TURN_ID:I

    return-void
.end method


# virtual methods
.method protected action(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected canMakeAction(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onRemove()V
    .locals 0

    return-void
.end method

.method protected prepareData()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
