.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_Population$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button_NS_Population;
.source "Menu_InGame_View_Population.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_Population;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_Population;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_Population;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;III)V
    .locals 12

    move-object v11, p0

    move-object v0, p1

    iput-object v0, v11, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_Population$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_Population;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Button_NS_Population;-><init>(Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;III)V

    return-void
.end method


# virtual methods
.method protected buildElementHover()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_Population$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_Population;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_Population;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_Population;)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getHover_PopulationOfCiv(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_View_Population$1;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    return-void
.end method
