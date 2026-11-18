.class public final enum Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;
.super Ljava/lang/Enum;
.source "CFG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/CFG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlagEditorMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

.field public static final enum PAINT_BUCKET:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

.field public static final enum PENCIL:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    const/4 v1, 0x0

    const-string v2, "PENCIL"

    invoke-direct {v0, v2, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->PENCIL:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    const/4 v2, 0x1

    const-string v3, "PAINT_BUCKET"

    invoke-direct {v0, v3, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->PAINT_BUCKET:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->PENCIL:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    aput-object v3, v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->PAINT_BUCKET:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    aput-object v1, v0, v2

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

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

.method public static valueOf(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;
    .locals 1

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    return-object p0
.end method

.method public static values()[Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    invoke-virtual {v0}, [Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    return-object v0
.end method
