.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceInfo$6;
.super Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;
.source "Menu_InGame_ProvinceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceInfo;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceInfo;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceInfo;IILjava/util/List;Ljava/util/List;Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;)V
    .locals 6

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceInfo$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceInfo;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;-><init>(IILjava/util/List;Ljava/util/List;Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;)V

    return-void
.end method


# virtual methods
.method protected drawMenuElementHover2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 1

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceInfo$6;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceInfo$6;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosX()I

    move-result p3

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v0

    sub-int/2addr p4, v0

    invoke-interface {p2, p1, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;->drawAlwaysOver(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_0
    return-void
.end method

.method protected getPosX()I
    .locals 2

    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Graph_Circle;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceInfo$6;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
