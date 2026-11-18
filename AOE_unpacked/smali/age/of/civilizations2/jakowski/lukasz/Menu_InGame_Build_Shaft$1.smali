.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build_Shaft$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Build_Building;
.source "Menu_InGame_Build_Shaft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build_Shaft;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build_Shaft;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build_Shaft;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 9

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build_Shaft$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build_Shaft;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Build_Building;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method protected buildElementHover()V
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "MineMineMineAndMoreMine"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build_Shaft$1;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    return-void
.end method

.method protected getWidth()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build_Shaft$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build_Shaft;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build_Shaft;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
