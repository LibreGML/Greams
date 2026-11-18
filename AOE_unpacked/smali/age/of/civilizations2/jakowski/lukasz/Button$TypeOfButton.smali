.class public final enum Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;
.super Ljava/lang/Enum;
.source "Button.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "TypeOfButton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

.field public static final enum KEYBOARD:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

.field public static final enum KEYBOARD_ACTIVE:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

.field public static final enum KEYBOARD_NUM:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

.field public static final enum KEYBOARD_OPTIONS:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

.field public static final enum KEYBOARD_SAVE:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    const/4 v1, 0x0

    const-string v2, "KEYBOARD"

    invoke-direct {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    const/4 v2, 0x1

    const-string v3, "KEYBOARD_NUM"

    invoke-direct {v0, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD_NUM:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    const/4 v3, 0x2

    const-string v4, "KEYBOARD_ACTIVE"

    invoke-direct {v0, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD_ACTIVE:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    const/4 v4, 0x3

    const-string v5, "KEYBOARD_SAVE"

    invoke-direct {v0, v5, v4}, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD_SAVE:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    const/4 v5, 0x4

    const-string v6, "KEYBOARD_OPTIONS"

    invoke-direct {v0, v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD_OPTIONS:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    const/4 v0, 0x5

    new-array v0, v0, [Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    aput-object v6, v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD_NUM:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD_ACTIVE:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    aput-object v1, v0, v3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD_SAVE:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    aput-object v1, v0, v4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD_OPTIONS:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    aput-object v1, v0, v5

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

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

.method public static valueOf(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;
    .locals 1

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    return-object p0
.end method

.method public static values()[Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    invoke-virtual {v0}, [Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    return-object v0
.end method
