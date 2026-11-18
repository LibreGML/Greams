.class Lage/of/civilizations2/jakowski/lukasz/Event_Date;
.super Ljava/lang/Object;
.source "Event_Date.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final NOT_SET_UPED:I = 0x98967f


# instance fields
.field protected iEventDay:I

.field protected iEventMonth:I

.field protected iEventYear:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventDay:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventMonth:I

    const v0, 0x98967f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventYear:I

    return-void
.end method
