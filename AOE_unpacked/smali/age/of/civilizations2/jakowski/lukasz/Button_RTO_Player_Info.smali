.class Lage/of/civilizations2/jakowski/lukasz/Button_RTO_Player_Info;
.super Lage/of/civilizations2/jakowski/lukasz/Button_RTO_Player;
.source "Button_RTO_Player_Info.java"


# direct methods
.method protected constructor <init>(IIIIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lage/of/civilizations2/jakowski/lukasz/Button_RTO_Player;-><init>(IIIIIIZ)V

    return-void
.end method


# virtual methods
.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 3

    :try_start_0
    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_RTO_Player_Info;->iCivID:I

    invoke-virtual {p4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p4

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_RTO_Player_Info;->getTextPos()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_RTO_Player_Info;->getPosX()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_RTO_Player_Info;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_RTO_Player_Info;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p4, p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_RTO_Player_Info;->getTextPos()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_RTO_Player_Info;->getPosX()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_RTO_Player_Info;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_RTO_Player_Info;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p4, p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :goto_0
    sget p4, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {p4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_RTO_Player_Info;->getTextPos()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_RTO_Player_Info;->getPosX()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_RTO_Player_Info;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_RTO_Player_Info;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p4, p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_RTO_Player_Info;->getText()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_RTO_Player_Info;->getTextPos()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_RTO_Player_Info;->getPosX()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_RTO_Player_Info;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Button_RTO_Player_Info;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    add-int/2addr p2, p3

    sget-object p3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CIV_NAME:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p4, v0, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
