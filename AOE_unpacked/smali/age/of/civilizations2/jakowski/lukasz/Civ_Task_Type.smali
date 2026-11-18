.class public final enum Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;
.super Ljava/lang/Enum;
.source "Civ_Task_Type.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;

.field public static final enum ASSIMILATE_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;

    const/4 v1, 0x0

    const-string v2, "ASSIMILATE_PROVINCE"

    invoke-direct {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;->ASSIMILATE_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;

    const/4 v0, 0x1

    new-array v0, v0, [Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;->ASSIMILATE_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;

    aput-object v2, v0, v1

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;

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

.method public static valueOf(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;
    .locals 1

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;

    return-object p0
.end method

.method public static values()[Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;

    invoke-virtual {v0}, [Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lage/of/civilizations2/jakowski/lukasz/Civ_Task_Type;

    return-object v0
.end method
