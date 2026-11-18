.class Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectEvent_List$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Menu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectEvent_List;->addEventItem(Ljava/util/List;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final current:I

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectEvent_List;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectEvent_List;Ljava/lang/String;IIIIIZI)V
    .locals 11

    move-object v8, p0

    move/from16 v9, p9

    move-object v10, p1

    iput-object v10, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectEvent_List$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectEvent_List;

    iput v9, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectEvent_List$1;->val$i:I

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    iput v9, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectEvent_List$1;->current:I

    return-void
.end method


# virtual methods
.method protected getCurrent()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectEvent_List$1;->current:I

    return v0
.end method
