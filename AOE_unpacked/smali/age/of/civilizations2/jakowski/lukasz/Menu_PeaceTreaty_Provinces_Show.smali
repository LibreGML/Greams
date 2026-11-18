.class Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces_Show;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_PeaceTreaty_Provinces_Show.java"


# direct methods
.method protected constructor <init>()V
    .locals 11

    const/4 v1, 0x0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_ShowMenu;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v3, v2, 0x5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v4, v2, 0x5

    const/4 v5, 0x1

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button_ShowMenu;-><init>(IIIIZ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v3, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x5

    sub-int v4, v0, v2

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v6, v0, 0x5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v7, v0, 0x1

    move-object v2, p0

    move v9, v1

    move v10, v1

    invoke-virtual/range {v2 .. v10}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces_Show;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces_Show;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGamePeaceTreatyProvinces(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 6

    sget-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Civilization_Info;->lTime:J

    const-wide/16 v2, 0xfa

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces_Show;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces_Show;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lage/of/civilizations2/jakowski/lukasz/Menu_Civilization_Info;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x437a0000    # 250.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    add-int/2addr p2, v0

    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected setVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_PeaceTreaty_Provinces_Show;->getVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Menu_Civilization_Info;->lTime:J

    :cond_0
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    return-void
.end method
