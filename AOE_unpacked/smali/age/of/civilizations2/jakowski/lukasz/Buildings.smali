.class public final enum Lage/of/civilizations2/jakowski/lukasz/Buildings;
.super Ljava/lang/Enum;
.source "Buildings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lage/of/civilizations2/jakowski/lukasz/Buildings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lage/of/civilizations2/jakowski/lukasz/Buildings;

.field public static final enum FARM:Lage/of/civilizations2/jakowski/lukasz/Buildings;

.field public static final enum FORT:Lage/of/civilizations2/jakowski/lukasz/Buildings;

.field public static final enum INVEST:Lage/of/civilizations2/jakowski/lukasz/Buildings;

.field public static final enum PORT:Lage/of/civilizations2/jakowski/lukasz/Buildings;

.field public static final enum TOWN_HALL:Lage/of/civilizations2/jakowski/lukasz/Buildings;

.field public static final enum WATCH_TOWER:Lage/of/civilizations2/jakowski/lukasz/Buildings;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Buildings;

    const/4 v1, 0x0

    const-string v2, "FORT"

    invoke-direct {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Buildings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Buildings;->FORT:Lage/of/civilizations2/jakowski/lukasz/Buildings;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Buildings;

    const/4 v2, 0x1

    const-string v3, "WATCH_TOWER"

    invoke-direct {v0, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Buildings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Buildings;->WATCH_TOWER:Lage/of/civilizations2/jakowski/lukasz/Buildings;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Buildings;

    const/4 v3, 0x2

    const-string v4, "PORT"

    invoke-direct {v0, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Buildings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Buildings;->PORT:Lage/of/civilizations2/jakowski/lukasz/Buildings;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Buildings;

    const/4 v4, 0x3

    const-string v5, "TOWN_HALL"

    invoke-direct {v0, v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Buildings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Buildings;->TOWN_HALL:Lage/of/civilizations2/jakowski/lukasz/Buildings;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Buildings;

    const/4 v5, 0x4

    const-string v6, "FARM"

    invoke-direct {v0, v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Buildings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Buildings;->FARM:Lage/of/civilizations2/jakowski/lukasz/Buildings;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Buildings;

    const/4 v6, 0x5

    const-string v7, "INVEST"

    invoke-direct {v0, v7, v6}, Lage/of/civilizations2/jakowski/lukasz/Buildings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Buildings;->INVEST:Lage/of/civilizations2/jakowski/lukasz/Buildings;

    const/4 v0, 0x6

    new-array v0, v0, [Lage/of/civilizations2/jakowski/lukasz/Buildings;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Buildings;->FORT:Lage/of/civilizations2/jakowski/lukasz/Buildings;

    aput-object v7, v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Buildings;->WATCH_TOWER:Lage/of/civilizations2/jakowski/lukasz/Buildings;

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Buildings;->PORT:Lage/of/civilizations2/jakowski/lukasz/Buildings;

    aput-object v1, v0, v3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Buildings;->TOWN_HALL:Lage/of/civilizations2/jakowski/lukasz/Buildings;

    aput-object v1, v0, v4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Buildings;->FARM:Lage/of/civilizations2/jakowski/lukasz/Buildings;

    aput-object v1, v0, v5

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Buildings;->INVEST:Lage/of/civilizations2/jakowski/lukasz/Buildings;

    aput-object v1, v0, v6

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Buildings;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/Buildings;

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

.method public static valueOf(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Buildings;
    .locals 1

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Buildings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lage/of/civilizations2/jakowski/lukasz/Buildings;

    return-object p0
.end method

.method public static values()[Lage/of/civilizations2/jakowski/lukasz/Buildings;
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Buildings;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/Buildings;

    invoke-virtual {v0}, [Lage/of/civilizations2/jakowski/lukasz/Buildings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lage/of/civilizations2/jakowski/lukasz/Buildings;

    return-object v0
.end method
