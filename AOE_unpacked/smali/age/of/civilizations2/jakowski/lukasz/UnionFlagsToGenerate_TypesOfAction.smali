.class public final enum Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;
.super Ljava/lang/Enum;
.source "UnionFlagsToGenerate_TypesOfAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

.field public static final enum ACTIVE_CIV_INFO:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

.field public static final enum CIV_ID_SMALL:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

.field public static final enum PLAYER_ID:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    const/4 v1, 0x0

    const-string v2, "CIV_ID_SMALL"

    invoke-direct {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;->CIV_ID_SMALL:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    const/4 v2, 0x1

    const-string v3, "ACTIVE_CIV_INFO"

    invoke-direct {v0, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;->ACTIVE_CIV_INFO:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    const/4 v3, 0x2

    const-string v4, "PLAYER_ID"

    invoke-direct {v0, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;->PLAYER_ID:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    const/4 v0, 0x3

    new-array v0, v0, [Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;->CIV_ID_SMALL:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    aput-object v4, v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;->ACTIVE_CIV_INFO:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;->PLAYER_ID:Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    aput-object v1, v0, v3

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

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

.method public static valueOf(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;
    .locals 1

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    return-object p0
.end method

.method public static values()[Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    invoke-virtual {v0}, [Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lage/of/civilizations2/jakowski/lukasz/UnionFlagsToGenerate_TypesOfAction;

    return-object v0
.end method
