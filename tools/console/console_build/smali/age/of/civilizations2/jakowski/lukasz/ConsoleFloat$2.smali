.class Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat$2;
.super Ljava/lang/Object;
.source "ConsoleFloat.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;


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

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .registers 2

    .line 557
    # invokes: Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->hasSelection()Z
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->access$100()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 558
    # invokes: Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->deleteSelection()V
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->access$200()V

    goto :goto_d

    .line 560
    :cond_a
    # invokes: Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->deleteOneBeforeCaret()Z
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->access$300()Z

    .line 562
    :goto_d
    # invokes: Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->requestRedraw()V
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->access$400()V

    .line 563
    return-void
.end method
