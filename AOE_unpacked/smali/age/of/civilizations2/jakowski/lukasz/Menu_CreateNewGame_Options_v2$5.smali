.class Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$5;
.super Lage/of/civilizations2/jakowski/lukasz/Button_CNG_Options2;
.source "Menu_CreateNewGame_Options_v2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;Ljava/lang/String;IIIIIZ)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$5;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_CNG_Options2;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method protected buildElementHover()V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "VictoryConditions"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "Domination"

    invoke-virtual {v3, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_war:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v6, 0x0

    invoke-direct {v2, v3, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v7, "ControlProvinces"

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->VICTORY_CONTROL_PROVINCES_PERC:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "%"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->provinces:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-direct {v2, v3, v7, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v8, "TurnsLimit"

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->VICTORY_LIMIT_OF_TURNS:I

    if-nez v7, :cond_0

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v8, "NoThanks"

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->VICTORY_LIMIT_OF_TURNS:I

    const-string v9, "TurnsX"

    invoke-virtual {v7, v9, v8}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->time:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-direct {v2, v3, v7, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v8, "Technology"

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->VICTORY_TECHNOLOGY:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "Disabled"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    sget v4, Lage/of/civilizations2/jakowski/lukasz/VicotryManager;->VICTORY_TECHNOLOGY:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-direct {v2, v3, v4, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Options_v2$5;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    return-void
.end method
