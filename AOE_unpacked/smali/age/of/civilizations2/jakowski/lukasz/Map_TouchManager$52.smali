.class Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$52;
.super Ljava/lang/Object;
.source "Map_TouchManager.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$ExtraAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->update_ExtraAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$52;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extraAction(II)V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getDrawCivilization()Lage/of/civilizations2/jakowski/lukasz/Drag_Civilization;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Drag_Civilization;->setPosX(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getDrawCivilization()Lage/of/civilizations2/jakowski/lukasz/Drag_Civilization;

    move-result-object p1

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Drag_Civilization;->setPosY(I)V

    return-void
.end method
