.class Lage/of/civilizations2/jakowski/lukasz/Menu_Regions_CreateNewRegion$2;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Game;
.source "Menu_Regions_CreateNewRegion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_Regions_CreateNewRegion;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Regions_CreateNewRegion;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Regions_CreateNewRegion;Ljava/lang/String;IIII)V
    .locals 6

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Regions_CreateNewRegion$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Regions_CreateNewRegion;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Game;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_Game;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    new-instance p2, Lcom/badlogic/gdx/graphics/Color;

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editor_Region_GameData:Lage/of/civilizations2/jakowski/lukasz/Region_GameData;

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->getR()F

    move-result p3

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->editor_Region_GameData:Lage/of/civilizations2/jakowski/lukasz/Region_GameData;

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->getG()F

    move-result p4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editor_Region_GameData:Lage/of/civilizations2/jakowski/lukasz/Region_GameData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->getB()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, p4, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Regions_CreateNewRegion$2;->getPosX()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Regions_CreateNewRegion$2;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Regions_CreateNewRegion$2;->getTextWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int v2, p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Regions_CreateNewRegion$2;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Regions_CreateNewRegion$2;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Regions_CreateNewRegion$2;->getTextHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v3, p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Regions_CreateNewRegion$2;->getTextWidth()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editor_Region_GameData:Lage/of/civilizations2/jakowski/lukasz/Region_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->getR()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editor_Region_GameData:Lage/of/civilizations2/jakowski/lukasz/Region_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->getG()F

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editor_Region_GameData:Lage/of/civilizations2/jakowski/lukasz/Region_GameData;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Region_GameData;->getB()F

    move-result v3

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Regions_CreateNewRegion$2;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ec28f5c    # 0.38f

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f000000    # 0.5f

    const v1, 0x3efae148    # 0.49f

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    :goto_0
    return-object p1
.end method
