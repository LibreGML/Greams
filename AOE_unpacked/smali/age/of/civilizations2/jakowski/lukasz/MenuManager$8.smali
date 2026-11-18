.class Lage/of/civilizations2/jakowski/lukasz/MenuManager$8;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/MenuManager$BuildProvinceHover_Informations;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateBuildProvinceHoverInformation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/MenuManager;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/MenuManager;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->DISABLE_INNER_BORDERS:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->access$202(Lage/of/civilizations2/jakowski/lukasz/MenuManager;Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;)Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    return-void

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->iHoveredProvinceID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v1

    if-gez v1, :cond_3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->iHoveredProvinceID:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsInFormableCiv(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->iHoveredProvinceID:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getMetProvince(I)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "Undiscovered"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_1
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->iHoveredProvinceID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-direct {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->iHoveredProvinceID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->access$202(Lage/of/civilizations2/jakowski/lukasz/MenuManager;Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;)Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->access$202(Lage/of/civilizations2/jakowski/lukasz/MenuManager;Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;)Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->access$202(Lage/of/civilizations2/jakowski/lukasz/MenuManager;Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;)Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$8;->this$0:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->access$202(Lage/of/civilizations2/jakowski/lukasz/MenuManager;Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;)Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    :goto_1
    return-void
.end method
