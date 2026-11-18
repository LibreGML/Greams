.class Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Cond_MilitaryAccess$2;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;
.source "Menu_CreateScenario_Events_Cond_MilitaryAccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Cond_MilitaryAccess;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Cond_MilitaryAccess;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Cond_MilitaryAccess;Ljava/lang/String;IIIIIZ)V
    .locals 8

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Cond_MilitaryAccess$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Cond_MilitaryAccess;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->lCreateScenario_Event:Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditTriggerID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTrigger(I)Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->iCreateEvent_EditConditionID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Conditions;->conditionType:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Event_Type;->NOT:Lage/of/civilizations2/jakowski/lukasz/Event_Type;

    if-ne v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    goto :goto_0
.end method
