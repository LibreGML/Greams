.class public final enum Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;
.super Ljava/lang/Enum;
.source "CivBonus_Type.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

.field public static final enum BONUS:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

.field public static final enum GOLDEN_AGE_MILITARY:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

.field public static final enum GOLDEN_AGE_PROSPERITY:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

.field public static final enum GOLDEN_AGE_SCIENCE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    const/4 v1, 0x0

    const-string v2, "BONUS"

    invoke-direct {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->BONUS:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    const/4 v2, 0x1

    const-string v3, "GOLDEN_AGE_PROSPERITY"

    invoke-direct {v0, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_PROSPERITY:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    const/4 v3, 0x2

    const-string v4, "GOLDEN_AGE_SCIENCE"

    invoke-direct {v0, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_SCIENCE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    const/4 v4, 0x3

    const-string v5, "GOLDEN_AGE_MILITARY"

    invoke-direct {v0, v5, v4}, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_MILITARY:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    const/4 v0, 0x4

    new-array v0, v0, [Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->BONUS:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    aput-object v5, v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_PROSPERITY:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_SCIENCE:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    aput-object v1, v0, v3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->GOLDEN_AGE_MILITARY:Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    aput-object v1, v0, v4

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

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

.method public static valueOf(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;
    .locals 1

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    return-object p0
.end method

.method public static values()[Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    invoke-virtual {v0}, [Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lage/of/civilizations2/jakowski/lukasz/CivBonus_Type;

    return-object v0
.end method
