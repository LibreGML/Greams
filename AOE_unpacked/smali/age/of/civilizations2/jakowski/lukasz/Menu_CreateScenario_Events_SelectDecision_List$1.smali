.class Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectDecision_List$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Descripted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectDecision_List;->addEventItem(Ljava/util/List;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final current:I

.field private final eTag:Ljava/lang/String;

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectDecision_List;

.field final synthetic val$i:I

.field final synthetic val$j:I


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectDecision_List;Ljava/lang/String;Ljava/lang/String;IIIIIZII)V
    .locals 13

    move-object v9, p0

    move/from16 v10, p10

    move/from16 v11, p11

    move-object v12, p1

    iput-object v12, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectDecision_List$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectDecision_List;

    iput v10, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectDecision_List$1;->val$i:I

    iput v11, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectDecision_List$1;->val$j:I

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Descripted;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->eventsManager:Lage/of/civilizations2/jakowski/lukasz/EventsManager;

    invoke-virtual {v0, v10}, Lage/of/civilizations2/jakowski/lukasz/EventsManager;->getEvent(I)Lage/of/civilizations2/jakowski/lukasz/Event_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getEventTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectDecision_List$1;->eTag:Ljava/lang/String;

    iput v11, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectDecision_List$1;->current:I

    return-void
.end method


# virtual methods
.method protected getCurrent()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectDecision_List$1;->current:I

    return v0
.end method

.method protected getTextToDraw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectDecision_List$1;->eTag:Ljava/lang/String;

    return-object v0
.end method
