.class Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;
.super Ljava/lang/Object;
.source "MenuElement_Hover_v2_Element2.java"


# instance fields
.field private lElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;->lElements:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;->lElements:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;->lElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;->lElements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type;

    add-int v3, p2, v1

    invoke-interface {v2, p1, v3, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;->lElements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type;

    invoke-interface {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final getWidth()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;->lElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;->lElements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type;

    invoke-interface {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
