.class public final enum Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;
.super Ljava/lang/Enum;
.source "Button_Flag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Button_Flag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonFlagType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;

.field public static final enum FLAG:Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;

.field public static final enum FLAG_COLOR:Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;

    const/4 v1, 0x0

    const-string v2, "FLAG_COLOR"

    invoke-direct {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;->FLAG_COLOR:Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;

    const/4 v2, 0x1

    const-string v3, "FLAG"

    invoke-direct {v0, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;->FLAG:Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;

    const/4 v0, 0x2

    new-array v0, v0, [Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;->FLAG_COLOR:Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;

    aput-object v3, v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;->FLAG:Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;

    aput-object v1, v0, v2

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;

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

.method public static valueOf(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;
    .locals 1

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;

    return-object p0
.end method

.method public static values()[Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;

    invoke-virtual {v0}, [Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lage/of/civilizations2/jakowski/lukasz/Button_Flag$ButtonFlagType;

    return-object v0
.end method
