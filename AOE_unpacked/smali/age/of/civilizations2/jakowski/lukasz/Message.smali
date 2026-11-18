.class Lage/of/civilizations2/jakowski/lukasz/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected iFromCivID:I

.field protected iNumOfTurnsLeft:I

.field protected iValue:I

.field protected iValue2:I

.field protected messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

.field protected requestsResponse:Z

.field protected tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

.field protected ultimatum:Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;

.field protected willPauseTheGame:Z


# direct methods
.method protected constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Message;->iFromCivID:I

    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Message;->iValue:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Message;->iValue2:I

    const/4 v0, 0x4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Message;->iNumOfTurnsLeft:I

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Message;->tradeRequest:Lage/of/civilizations2/jakowski/lukasz/TradeRequest_GameData;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Message;->ultimatum:Lage/of/civilizations2/jakowski/lukasz/Ultimatum_GameData;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Message;->TAG:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->JOIN_ALLIANCE:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Message;->requestsResponse:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Message;->willPauseTheGame:Z

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Message;->iFromCivID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Message;->iValue:I

    return-void
.end method


# virtual methods
.method protected getBGImageID()I
    .locals 1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->messages:I

    return v0
.end method

.method protected getHover()Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "Alliance"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Message;->getImageID()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Message;->iFromCivID:I

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Flag;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Message;->iFromCivID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CivAWantsToJoinAlliance"

    invoke-virtual {v3, v5, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;)V

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

    const-string v5, "MessageWillExpireIn"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

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

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Message;->iNumOfTurnsLeft:I

    const-string v6, "TurnsX"

    invoke-virtual {v4, v6, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

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

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/Message;->iNumOfTurnsLeft:I

    add-int/2addr v4, v5

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

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method protected getImageID()I
    .locals 1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_alliance:I

    return v0
.end method

.method protected onAccept(I)V
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Message;->iFromCivID:I

    invoke-static {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->acceptAllianceProposal(II)V

    return-void
.end method

.method protected onAction(I)V
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Message;->iFromCivID:I

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Message;->iValue:I

    invoke-virtual {v0, v1, p1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_Message_Alliance(III)V

    return-void
.end method

.method protected onDecline(I)V
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Message;->iFromCivID:I

    invoke-static {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/DiplomacyManager;->declineAllianceProposal(II)V

    return-void
.end method

.method protected final updateNextTurn()Z
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Message;->iNumOfTurnsLeft:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Message;->iNumOfTurnsLeft:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
