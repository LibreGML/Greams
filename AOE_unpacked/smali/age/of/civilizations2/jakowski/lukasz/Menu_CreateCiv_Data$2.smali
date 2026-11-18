.class Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;
.super Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Clear;
.source "Menu_CreateCiv_Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field iCurrent:I

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data;Ljava/lang/String;IIIIIZ)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Clear;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 10

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Clear;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object p3, p3, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    iget p4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->iCurrent:I

    invoke-virtual {p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getColor(I)Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object p3

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result p3

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object p4, p4, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->iCurrent:I

    invoke-virtual {p4, v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getColor(I)Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result p4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorCivilization_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_GameData3;->sr_GameData:Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->iCurrent:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization_ServiceRibbon_GameData;->getColor(I)Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3, p4, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->getPosX()I

    move-result p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->getTextWidth()I

    move-result p4

    int-to-float p4, p4

    const v8, 0x3f4ccccd    # 0.8f

    mul-float p4, p4, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr p4, v9

    float-to-int p4, p4

    sub-int/2addr p3, p4

    add-int v2, p3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->getPosY()I

    move-result p3

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data;

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data;->getMenuPosY()I

    move-result p4

    add-int/2addr p3, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->getTextHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    add-int v3, p3, p4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->getPosX()I

    move-result p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->getTextWidth()I

    move-result p4

    int-to-float p4, p4

    mul-float p4, p4, v8

    div-float/2addr p4, v9

    float-to-int p4, p4

    sub-int/2addr p3, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr p3, p4

    add-int v2, p3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->getPosY()I

    move-result p3

    iget-object p4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data;

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data;->getMenuPosY()I

    move-result p4

    add-int/2addr p3, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->getTextHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    add-int v3, p3, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->getTextWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, v8

    float-to-int p3, p3

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 p4, p4, 0x2

    sub-int v4, p3, p4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p3, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {p3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->getPosX()I

    move-result p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->getTextWidth()I

    move-result p4

    int-to-float p4, p4

    mul-float p4, p4, v8

    div-float/2addr p4, v9

    float-to-int p4, p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->getTextWidth()I

    move-result p4

    int-to-float p4, p4

    mul-float p4, p4, v8

    float-to-int p4, p4

    add-int/2addr p3, p4

    sget p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr p3, p4

    add-int v2, p3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->getPosY()I

    move-result p2

    iget-object p3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data;

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data;->getMenuPosY()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->getTextHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    sget p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    add-int v3, p2, p3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected setCurrent(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCiv_Data$2;->iCurrent:I

    return-void
.end method
