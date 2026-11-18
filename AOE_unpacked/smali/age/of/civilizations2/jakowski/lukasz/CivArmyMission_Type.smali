.class public final enum Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;
.super Ljava/lang/Enum;
.source "CivArmyMission_Type.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

.field public static final enum COLONIZE_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

.field public static final enum EXPAND_NETURAL_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

.field public static final enum NAVAL_INVASION:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

.field public static final enum PREAPARE_FOR_WAR:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

.field public static final enum REGRUOP_AFTER_RECRUIT:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

.field public static final enum REV_RISK_CONTROL_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    const/4 v1, 0x0

    const-string v2, "PREAPARE_FOR_WAR"

    invoke-direct {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->PREAPARE_FOR_WAR:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    const/4 v2, 0x1

    const-string v3, "REGRUOP_AFTER_RECRUIT"

    invoke-direct {v0, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->REGRUOP_AFTER_RECRUIT:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    const/4 v3, 0x2

    const-string v4, "REV_RISK_CONTROL_PROVINCE"

    invoke-direct {v0, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->REV_RISK_CONTROL_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    const/4 v4, 0x3

    const-string v5, "NAVAL_INVASION"

    invoke-direct {v0, v5, v4}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->NAVAL_INVASION:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    const/4 v5, 0x4

    const-string v6, "COLONIZE_PROVINCE"

    invoke-direct {v0, v6, v5}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->COLONIZE_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    const/4 v6, 0x5

    const-string v7, "EXPAND_NETURAL_PROVINCE"

    invoke-direct {v0, v7, v6}, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->EXPAND_NETURAL_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    const/4 v0, 0x6

    new-array v0, v0, [Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->PREAPARE_FOR_WAR:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    aput-object v7, v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->REGRUOP_AFTER_RECRUIT:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->REV_RISK_CONTROL_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    aput-object v1, v0, v3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->NAVAL_INVASION:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    aput-object v1, v0, v4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->COLONIZE_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    aput-object v1, v0, v5

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->EXPAND_NETURAL_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    aput-object v1, v0, v6

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;
    .locals 1

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    return-object p0
.end method

.method public static values()[Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    invoke-virtual {v0}, [Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lage/of/civilizations2/jakowski/lukasz/CivArmyMission_Type;

    return-object v0
.end method
