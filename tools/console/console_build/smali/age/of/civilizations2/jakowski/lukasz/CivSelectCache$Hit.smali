.class final Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$Hit;
.super Ljava/lang/Object;
.source "CivSelectCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Hit"
.end annotation


# instance fields
.field final index:I

.field final score:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$Hit;->index:I

    .line 126
    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$Hit;->score:I

    .line 127
    return-void
.end method
