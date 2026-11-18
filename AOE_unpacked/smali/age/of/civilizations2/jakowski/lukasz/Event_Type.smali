.class public final enum Lage/of/civilizations2/jakowski/lukasz/Event_Type;
.super Ljava/lang/Enum;
.source "Event_Type.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lage/of/civilizations2/jakowski/lukasz/Event_Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lage/of/civilizations2/jakowski/lukasz/Event_Type;

.field public static final enum AND:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

.field public static final enum NOT:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

.field public static final enum OR:Lage/of/civilizations2/jakowski/lukasz/Event_Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    const-string v1, "AND"

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Event_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->AND:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    const-string v1, "OR"

    invoke-direct {v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Event_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->OR:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    const-string v1, "NOT"

    invoke-direct {v0, v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Event_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->NOT:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    const/4 v0, 0x3

    new-array v0, v0, [Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->AND:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->OR:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    aput-object v1, v0, v3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->NOT:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    aput-object v1, v0, v4

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/Event_Type;

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

.method public static valueOf(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Event_Type;
    .locals 1

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    return-object v0
.end method

.method public static values()[Lage/of/civilizations2/jakowski/lukasz/Event_Type;
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    invoke-virtual {v0}, [Lage/of/civilizations2/jakowski/lukasz/Event_Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    return-object v0
.end method
