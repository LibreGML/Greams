.class Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$2;
.super Ljava/lang/Object;
.source "CivSelectCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/CivSelectCache;->ensureLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$namesFinal:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 333
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$2;->val$namesFinal:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 7

    .line 335
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$2;->val$namesFinal:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$2;->val$namesFinal:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 338
    const/4 v1, 0x0

    :goto_25
    if-ge v1, v0, :cond_3a

    .line 339
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 340
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 341
    if-eq v2, v3, :cond_37

    .line 342
    if-ge v2, v3, :cond_35

    const/4 p1, -0x1

    goto :goto_36

    :cond_35
    const/4 p1, 0x1

    :goto_36
    return p1

    .line 338
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 345
    :cond_3a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 333
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/CivSelectCache$2;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
