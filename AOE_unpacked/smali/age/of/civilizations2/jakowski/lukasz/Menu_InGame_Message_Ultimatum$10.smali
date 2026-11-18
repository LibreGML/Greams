.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$10;
.super Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle;
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
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;Ljava/lang/String;IIIIZI)V
    .locals 7

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;

    iput p8, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$10;->val$onCivID:I

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagActionSliderStyle;-><init>(Ljava/lang/String;IIIIZ)V

    return-void
.end method


# virtual methods
.method protected buildElementHover()V
    .locals 9

    const/4 v8, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "AcceptOffer"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;->access$100(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;)I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-direct {v3, v4, v5, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(III)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "WeWillSignATruceUntilX"

    sget v6, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    add-int/lit8 v6, v6, 0x1e

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getDate_ByTurnID(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v6, "TurnsX"

    const/16 v7, 0x1e

    invoke-virtual {v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_OPTIONS_NS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_truce:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-direct {v3, v4, v5, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;

    invoke-direct {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Space;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;)Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;

    move-result-object v3

    iget-boolean v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandAnexation:Z

    if-eqz v3, :cond_0

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$10;->val$onCivID:I

    invoke-direct {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "DemandsAnnexationOfOurTerritory"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;)Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;

    move-result-object v3

    iget-boolean v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandVasalization:Z

    if-eqz v3, :cond_1

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$10;->val$onCivID:I

    invoke-direct {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "DemandVassalizationOfUs"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;)Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;

    move-result-object v3

    iget-boolean v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandMilitaryAccess:Z

    if-eqz v3, :cond_2

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$10;->val$onCivID:I

    invoke-direct {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "DemandMilitaryAccess"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;)Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandLiberation:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;)Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandLiberation:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$10;->val$onCivID:I

    invoke-direct {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v6, "DemandLiberationOfVassal"

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;)Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandLiberation:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;)Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandLiberation:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-direct {v4, v3, v5, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(III)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;)Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandProvinces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$10;->val$onCivID:I

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

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;)Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;->demandProvinces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    const-string v4, " - "

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;

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

    goto :goto_1

    :cond_5
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$10;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    return-void
.end method

.method protected getPosX()I
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;->getW()I

    move-result v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;->getW()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getSFX()I
    .locals 1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->getSend()I

    move-result v0

    return v0
.end method

.method protected getWidth()I
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Message_Ultimatum;->getW()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    return v0
.end method
