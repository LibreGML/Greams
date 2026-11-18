.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$6;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_Demands;
.source "Menu_InGame_Message_Ultimatum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;-><init>(IIILage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;

.field final synthetic val$onCivID:I


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;Ljava/lang/String;IIIII)V
    .locals 6

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;

    iput p7, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$6;->val$onCivID:I

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_Demands;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->clearSelectedProvinces()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;)Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;)Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->addProvince(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveViewID()I

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Player;->iACTIVE_VIEW_MODE:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->disableAllViews()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Menu;->eINGAME_SHOW_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->updateDrawProvinces()V

    return-void
.end method

.method protected buildElementHover()V
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$6;->val$onCivID:I

    invoke-direct {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "DemandsOurProvinces"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;)Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandProvinces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v4, " - "

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;)Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandProvinces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$6;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    return-void
.end method

.method protected getWidth()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
