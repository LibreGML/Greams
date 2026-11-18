.class Lage/of/civilizations2/jakowski/lukasz/Message_Union;
.super Lage/of/civilizations2/jakowski/lukasz/Message;
.source "Message_Union.java"


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Message;-><init>(II)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->UNION:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Message_Union;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    return-void
.end method


# virtual methods
.method protected getHover()Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Message_Union;->iFromCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FormUnionWithCivA"

    invoke-virtual {v3, v5, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Message_Union;->iFromCivID:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(III)V

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

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_message:I

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v6, "MessageWillExpireIn"

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Message_Union;->iNumOfTurnsLeft:I

    const-string v7, "TurnsX"

    invoke-virtual {v4, v7, v6}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Message_Union;->iNumOfTurnsLeft:I

    add-int/2addr v4, v6

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getDate_ByTurnID(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Message_Union;->iFromCivID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    if-eqz v2, :cond_0

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Message_Union;->iFromCivID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->leaderData:Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Message_Union;->iFromCivID:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-direct {v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method protected getImageID()I
    .locals 1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_union:I

    return v0
.end method

.method protected onAccept(I)V
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Message_Union;->iFromCivID:I

    invoke-static {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->acceptUnionProposal(II)V

    return-void
.end method

.method protected onAction(I)V
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Message_Union;->iFromCivID:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Message_Union;->iValue:I

    invoke-virtual {v0, v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_Message_Union(III)V

    return-void
.end method

.method protected onDecline(I)V
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Message_Union;->iFromCivID:I

    invoke-static {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->declineUnionProposal(II)V

    return-void
.end method
