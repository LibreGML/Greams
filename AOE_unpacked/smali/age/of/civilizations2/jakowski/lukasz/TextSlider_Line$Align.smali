.class public final enum Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;
.super Ljava/lang/Enum;
.source "TextSlider_Line.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Align"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;

.field public static final enum CENTER:Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;

.field public static final enum LEFT:Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;

.field public static final enum RIGHT:Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;

    const/4 v1, 0x0

    const-string v2, "LEFT"

    invoke-direct {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;->LEFT:Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;

    const/4 v2, 0x1

    const-string v3, "CENTER"

    invoke-direct {v0, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;->CENTER:Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;

    const/4 v3, 0x2

    const-string v4, "RIGHT"

    invoke-direct {v0, v4, v3}, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;->RIGHT:Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;

    const/4 v0, 0x3

    new-array v0, v0, [Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;->LEFT:Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;

    aput-object v4, v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;->CENTER:Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;->RIGHT:Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;

    aput-object v1, v0, v3

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;

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

.method public static valueOf(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;
    .locals 1

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;

    return-object p0
.end method

.method public static values()[Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;

    invoke-virtual {v0}, [Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lage/of/civilizations2/jakowski/lukasz/TextSlider_Line$Align;

    return-object v0
.end method
