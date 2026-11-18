.class Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;
.super Ljava/lang/Object;
.source "Province_SupportRebels.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected iByCivID:I

.field protected iRebelsCivID:I

.field protected iTurnsLeft:I


# direct methods
.method protected constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iByCivID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iRebelsCivID:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Province_SupportRebels;->iTurnsLeft:I

    return-void
.end method
