.class Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$27;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;
.source "Menu_TerrainType_Add.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private iCurrent:I

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V
    .locals 8

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$27;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$27;->getCurrent()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "+"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$27;->getCurrent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$27;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$27;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$27;->getTextWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v2, v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$27;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$27;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$27;->getTextHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v3, v0, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$27;->getCurrent()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    :goto_1
    invoke-static {p1, v1, v2, v3, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$27;->getCurrent()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    :cond_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1
.end method

.method protected getCurrent()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$27;->iCurrent:I

    return v0
.end method

.method protected setCurrent(I)V
    .locals 1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$27;->iCurrent:I

    return-void

    :cond_1
    const/16 v0, -0x28

    if-ge p1, v0, :cond_0

    const/16 p1, -0x28

    goto :goto_0
.end method
