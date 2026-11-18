.class Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;
.super Ljava/lang/Object;
.source "Event_PopUp.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected sText:Ljava/lang/String;

.field protected showPopUp:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;->showPopUp:Z

    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;->sText:Ljava/lang/String;

    return-void
.end method
