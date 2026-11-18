.class public final enum Lage/of/civilizations2/jakowski/lukasz/Diplomacy;
.super Ljava/lang/Enum;
.source "Diplomacy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lage/of/civilizations2/jakowski/lukasz/Diplomacy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lage/of/civilizations2/jakowski/lukasz/Diplomacy;

.field public static final enum ATWAR:Lage/of/civilizations2/jakowski/lukasz/Diplomacy;

.field public static final enum PEACE:Lage/of/civilizations2/jakowski/lukasz/Diplomacy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Diplomacy;

    const/4 v1, 0x0

    const-string v2, "PEACE"

    invoke-direct {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Diplomacy;->PEACE:Lage/of/civilizations2/jakowski/lukasz/Diplomacy;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Diplomacy;

    const/4 v2, 0x1

    const-string v3, "ATWAR"

    invoke-direct {v0, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Diplomacy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Diplomacy;->ATWAR:Lage/of/civilizations2/jakowski/lukasz/Diplomacy;

    const/4 v0, 0x2

    new-array v0, v0, [Lage/of/civilizations2/jakowski/lukasz/Diplomacy;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Diplomacy;->PEACE:Lage/of/civilizations2/jakowski/lukasz/Diplomacy;

    aput-object v3, v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Diplomacy;->ATWAR:Lage/of/civilizations2/jakowski/lukasz/Diplomacy;

    aput-object v1, v0, v2

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Diplomacy;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/Diplomacy;

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

.method public static valueOf(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Diplomacy;
    .locals 1

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Diplomacy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lage/of/civilizations2/jakowski/lukasz/Diplomacy;

    return-object p0
.end method

.method public static values()[Lage/of/civilizations2/jakowski/lukasz/Diplomacy;
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Diplomacy;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/Diplomacy;

    invoke-virtual {v0}, [Lage/of/civilizations2/jakowski/lukasz/Diplomacy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lage/of/civilizations2/jakowski/lukasz/Diplomacy;

    return-object v0
.end method
