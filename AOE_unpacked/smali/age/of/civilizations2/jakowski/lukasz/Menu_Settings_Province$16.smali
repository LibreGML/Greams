.class Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;
.super Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Clear;
.source "Menu_Settings_Province.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field iCurrent:I

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIIIZ)V
    .locals 8

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Clear;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    const v8, 0x3f4ccccd    # 0.8f

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Clear;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->getTextWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    div-float/2addr v2, v9

    float-to-int v2, v2

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->getPosY()I

    move-result v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuPosY()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->getTextHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    add-int/2addr v3, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->getTextWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    div-float/2addr v2, v9

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->getPosY()I

    move-result v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuPosY()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->getTextHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->getTextWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v8

    float-to-int v1, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->getTextWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    div-float/2addr v2, v9

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->getTextWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->getPosY()I

    move-result v1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;->getMenuPosY()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->getTextHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    add-int/2addr v3, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected setCurrent(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$16;->iCurrent:I

    return-void
.end method
