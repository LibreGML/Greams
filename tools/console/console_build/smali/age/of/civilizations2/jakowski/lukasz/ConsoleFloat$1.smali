.class Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat$1;
.super Ljava/lang/Object;
.source "ConsoleFloat.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->installCaretHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Ljava/lang/String;)V
    .registers 2

    .line 551
    # invokes: Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->insertAtCaret(Ljava/lang/String;)V
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->access$000(Ljava/lang/String;)V

    .line 552
    return-void
.end method
