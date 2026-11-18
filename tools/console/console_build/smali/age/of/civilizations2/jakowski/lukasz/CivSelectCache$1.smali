.class Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$1;
.super Ljava/lang/Object;
.source "CivSelectCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->fillSortedLists(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$Hit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$Hit;Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$Hit;)I
    .registers 5

    .line 71
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$Hit;->score:I

    iget v1, p2, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$Hit;->score:I

    if-eq v0, v1, :cond_c

    .line 72
    iget p2, p2, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$Hit;->score:I

    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$Hit;->score:I

    sub-int/2addr p2, p1

    return p2

    .line 74
    :cond_c
    iget p1, p1, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$Hit;->index:I

    iget p2, p2, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$Hit;->index:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 69
    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$Hit;

    check-cast p2, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$Hit;

    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$1;->compare(Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$Hit;Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$Hit;)I

    move-result p1

    return p1
.end method
