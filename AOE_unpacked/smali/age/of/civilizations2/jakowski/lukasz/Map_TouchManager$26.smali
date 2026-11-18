.class Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$26;
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

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$26;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extraAction(II)V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v0

    if-ltz v0, :cond_a

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushTool:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$26;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->access$000(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$26;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    invoke-virtual {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionMoveMap(II)V

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$26;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->access$102(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;Z)Z

    :cond_0
    return-void

    :cond_1
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushTool:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$26;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->access$100(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$26;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    invoke-virtual {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->actionMoveMap(II)V

    return-void

    :cond_2
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager$26;->this$0:Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;

    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;->access$002(Lage/of/civilizations2/jakowski/lukasz/Map_TouchManager;Z)Z

    :cond_3
    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->iCreateScenario_AssignProvinces_Civ:I

    if-ltz p1, :cond_7

    :goto_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result p1

    if-ge v1, p1, :cond_6

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result p1

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p2

    if-ne p1, p2, :cond_5

    sget-boolean p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushTool:Z

    if-nez p1, :cond_4

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result p1

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->iCreateScenario_AssignProvinces_Civ:I

    if-eq p1, p2, :cond_4

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Dialog;->CREATE_SCENARIO_ASSIGN_CIVILIZATION:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Dialog;)V

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result p1

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->iCreateScenario_AssignProvinces_Civ:I

    if-eq p1, p2, :cond_a

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result p1

    if-gez p1, :cond_a

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p1

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v0

    invoke-virtual {p2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result p2

    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->addUndoAssignProvinces(II)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->iCreateScenario_AssignProvinces_Civ:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setCivID(IZZ)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province;->resetArmies(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->buildProvinceCore()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    goto :goto_2

    :cond_7
    :goto_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result p1

    if-ge v1, p1, :cond_a

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result p1

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p2

    if-ne p1, p2, :cond_9

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result p1

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->iCreateScenario_AssignProvinces_Civ:I

    if-eq p1, p2, :cond_8

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Dialog;->CREATE_SCENARIO_ASSIGN_CIVILIZATION:Lage/of/civilizations2/jakowski/lukasz/Dialog;

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setDialogType(Lage/of/civilizations2/jakowski/lukasz/Dialog;)V

    :cond_8
    return-void

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    :goto_2
    return-void
.end method
