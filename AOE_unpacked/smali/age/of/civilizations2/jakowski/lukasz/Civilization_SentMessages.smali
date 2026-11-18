.class Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;
.super Ljava/lang/Object;
.source "Civilization_SentMessages.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iSentInTurnID:I

.field protected iToCivID:I

.field protected messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;


# direct methods
.method protected constructor <init>(ILage/of/civilizations2/jakowski/lukasz/Message_Type;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Message_Type;->GIFT:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->iToCivID:I

    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->messageType:Lage/of/civilizations2/jakowski/lukasz/Message_Type;

    sget p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->iSentInTurnID:I

    return-void
.end method
