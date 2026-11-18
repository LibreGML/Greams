.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report$5;
.super Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_Report;
.source "Menu_InGame_Report.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;ILjava/lang/String;IIIIIZ)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_Report;-><init>(ILjava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method protected buildElementHover()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "Ok"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report$5;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report$5;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_New_Game_Players_Report;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    if-eqz p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CIV_INFO_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report$5;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CIV_INFO_HOVER:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3ee6e6e7

    const v1, 0x3eeaeaeb

    const v2, 0x3ef2f2f3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    :goto_0
    return-object p1
.end method

.method protected getWidth()I
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Report;->getW()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method
