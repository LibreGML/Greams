.class Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;
.super Lage/of/civilizations2/jakowski/lukasz/Button;
.source "Button_Keyboard.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;Z)V
    .locals 12

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button;-><init>()V

    const/4 v2, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    move-object/from16 v11, p6

    invoke-super/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Button;->init(Ljava/lang/String;IIIIIZZZZLage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;)V

    return-void
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Button$TypeOfButton:[I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->typeOfButton:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getPosX()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getPosY()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getHeight()I

    move-result v0

    invoke-static {p1, p4, p2, p3, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getPosX()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getPosY()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getHeight()I

    move-result v0

    invoke-static {p1, p4, p2, p3, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBox_EDGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_0

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getPosX()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getPosY()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getHeight()I

    move-result v0

    invoke-static {p1, p4, p2, p3, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getPosX()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getPosY()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getHeight()I

    move-result v0

    invoke-static {p1, p4, p2, p3, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBox_EDGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_0

    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getPosX()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getPosY()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getHeight()I

    move-result v0

    invoke-static {p1, p4, p2, p3, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBox_EDGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getPosX()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getPosY()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getHeight()I

    move-result v0

    invoke-static {p1, p4, p2, p3, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_0

    :cond_6
    if-eqz p4, :cond_7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getPosX()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getPosY()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getHeight()I

    move-result v0

    invoke-static {p1, p4, p2, p3, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getPosX()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getPosY()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getHeight()I

    move-result v0

    invoke-static {p1, p4, p2, p3, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBox_EDGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_0

    :cond_8
    if-eqz p4, :cond_9

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getPosX()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getPosY()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getHeight()I

    move-result v0

    invoke-static {p1, p4, p2, p3, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBox_EDGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getPosX()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getPosY()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getHeight()I

    move-result v0

    invoke-static {p1, p4, p2, p3, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_NewGameBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_0
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ec6c6c7

    const v2, 0x3eb6b6b7

    const v3, 0x3ea4a4a5

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f3ebebf

    const v2, 0x3f3bbbbc

    const v3, 0x3f37b7b8

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f000000    # 0.5f

    const v1, 0x3efae148    # 0.49f

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    :goto_0
    return-object p1
.end method
