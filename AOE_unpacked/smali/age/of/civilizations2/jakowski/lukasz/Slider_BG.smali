.class Lage/of/civilizations2/jakowski/lukasz/Slider_BG;
.super Lage/of/civilizations2/jakowski/lukasz/Slider;
.source "Slider_BG.java"


# direct methods
.method protected constructor <init>(IIIIIII)V
    .locals 9

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;-><init>()V

    const-string v1, ""

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG;->initSlider(Ljava/lang/String;IIIIIII)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIIIIII)V
    .locals 0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;-><init>()V

    invoke-virtual/range {p0 .. p8}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG;->initSlider(Ljava/lang/String;IIIIIII)V

    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_h:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG;->getPosY()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    invoke-super/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Slider;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    return-void
.end method
