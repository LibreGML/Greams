.class public Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ArrowRight;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Menu;
.source "Button_Menu_ArrowRight.java"


# direct methods
.method protected constructor <init>(IIIIZ)V
    .locals 8

    const-string v1, ""

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method protected final drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 4

    if-eqz p4, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btnh_menu_1_h:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ArrowRight;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ArrowRight;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ArrowRight;->getWidth()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ArrowRight;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ArrowRight;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_MENU_HOVER_BG:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_1_h:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ArrowRight;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ArrowRight;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ArrowRight;->getWidth()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_1_h:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ArrowRight;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ArrowRight;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ArrowRight;->getWidth()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    :goto_0
    const/4 v0, 0x1

    if-eqz p4, :cond_2

    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->arrow_active:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ArrowRight;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ArrowRight;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->arrow_active:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ArrowRight;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ArrowRight;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->arrow_active:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, v2

    add-int/2addr p2, p3

    invoke-virtual {p4, p1, v1, p2, v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    goto :goto_1

    :cond_2
    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->arrow:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ArrowRight;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ArrowRight;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->arrow:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ArrowRight;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ArrowRight;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->arrow:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, v2

    add-int/2addr p2, p3

    invoke-virtual {p4, p1, v1, p2, v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :goto_1
    return-void
.end method

.method public bridge synthetic setText(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;->setText(Ljava/lang/String;)V

    return-void
.end method
