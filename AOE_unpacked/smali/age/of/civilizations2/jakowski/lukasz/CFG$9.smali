.class final Lage/of/civilizations2/jakowski/lukasz/CFG$9;
.super Ljava/lang/Object;
.source "CFG.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/CFG;->updateKeyboard_Actions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Commands;->execute(Ljava/lang/String;)V

    const-string v0, ""

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    return-void
.end method
