.class Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;
.super Ljava/lang/Object;
.source "MessageBox_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private iMessagesSize:I

.field private lMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lage/of/civilizations2/jakowski/lukasz/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->lMessages:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->iMessagesSize:I

    return-void
.end method


# virtual methods
.method protected final addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V
    .locals 4

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->DISEASE:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-ne v2, v3, :cond_3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->getMessagesSize()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Message;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->DISEASE:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-le v1, v2, :cond_9

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->getMessagesSize()I

    move-result v2

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Message;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Message;->iFromCivID:I

    iget v3, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->iFromCivID:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Message;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    iget-object v3, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_5

    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->TECHNOLOGY_RESEARCHED:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Message;

    iget v3, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->iNumOfTurnsLeft:I

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/Message;->iNumOfTurnsLeft:I

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->UNCIVILIZED:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Message;

    iget v3, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->iNumOfTurnsLeft:I

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/Message;->iNumOfTurnsLeft:I

    goto :goto_2

    :cond_7
    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->GIFT:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->WE_CAN_SIGN_PEACE:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->WE_CAN_SIGN_PEACE_STATUS_QUO:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->GIFT_REFUSED:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->GIFT_ACCEPTED:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->PLUNDER_REPROT:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->PLUNDER_REPROT_PLUNDRED:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->REVOLT:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->JOINED_A_WAR:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->TRANSFER_CONTROL:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->VASSALIZATION_ACCEPTED:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->VASSALIZATION_REJECTED:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->TRANSFER_CONTROL_REFUSED:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->TRANSFER_CONTROL_ACCEPTED:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->PROVINCES_NOT_SUPPLIED_STRAVES:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->PROVINCES_NOT_SUPPLIED_LOST_CONTROL:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->PROVINCES_NOT_SUPPLIED_LOST_CONTROL_ENEMY_LOST:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->PROVINCES_LOST_CONTROL:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->TRUCE:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->TRUCE_EXPIRED:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->LOAN_REPAID:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->BULIT_FARM:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->BULIT_PORT:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->BULIT_TOWER:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->BULIT_FORT:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->BULIT_LIBRARY:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->BUILT_ARMOURY:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->BUILT_WORKSHOP:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->FESTIVAL_IS_OVER:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->ASSMILIATION_IS_OVER:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->INVEST_IS_OVER:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v2, v3, :cond_8

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->INVEST_IS_OVER_DEVELOPMENT:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-ne v2, v3, :cond_2

    :cond_8
    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->TRANSFER_CONTROL:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-ne v2, v3, :cond_4

    iget v3, p1, Lage/of/civilizations2/jakowski/lukasz/Message;->iValue:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Message;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Message;->iValue:I

    if-eq v3, v2, :cond_2

    goto/16 :goto_4

    :cond_9
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->iMessagesSize:I

    goto/16 :goto_2
.end method

.method protected final clearMessages()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->iMessagesSize:I

    return-void
.end method

.method protected getMessage(I)Lage/of/civilizations2/jakowski/lukasz/Message;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Message;

    return-object v0
.end method

.method protected final getMessagesSize()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->iMessagesSize:I

    return v0
.end method

.method protected final removeMessage(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->iMessagesSize:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final removeMessage_TypeFrom(ILage/of/civilizations2/jakowski/lukasz/Message_Type;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->getMessagesSize()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->getMessage(I)Lage/of/civilizations2/jakowski/lukasz/Message;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Message;->iFromCivID:I

    if-ne v1, p1, :cond_0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->getMessage(I)Lage/of/civilizations2/jakowski/lukasz/Message;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-eq v1, p2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->removeMessage(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :cond_2
    return-void
.end method

.method protected final updateNextTurn(I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->getMessagesSize()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Message;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Message;->updateNextTurn()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Message;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/Message;->requestsResponse:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Message;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->GIFT:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Message;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Message;->onAccept(I)V

    :cond_2
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->lMessages:Ljava/util/List;

    add-int/lit8 v1, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->iMessagesSize:I

    move v0, v1

    goto :goto_1

    :cond_3
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Message;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Message;->iNumOfTurnsLeft:I

    const/16 v3, -0x19

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->lMessages:Ljava/util/List;

    add-int/lit8 v1, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->iMessagesSize:I

    move v0, v1

    goto :goto_1

    :cond_4
    return-void
.end method
