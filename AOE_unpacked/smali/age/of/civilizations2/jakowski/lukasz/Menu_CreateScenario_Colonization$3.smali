.class Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Colonization$3;
.super Lage/of/civilizations2/jakowski/lukasz/Slider;
.source "Menu_CreateScenario_Colonization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Colonization;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Colonization;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Colonization;Ljava/lang/String;IIIIIII)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Colonization$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Colonization;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Slider;-><init>(Ljava/lang/String;IIIIIII)V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Colonization$3;->getCurrent()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->COLONIZATION_TECH_LEVEL:F

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_1_h:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Colonization$3;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Colonization$3;->getPosY()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Colonization$3;->getWidth()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    add-int/2addr v3, v4

    invoke-virtual {v0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    invoke-super/range {p0 .. p5}, Lage/of/civilizations2/jakowski/lukasz/Slider;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    return-void
.end method

.method protected getDrawText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/Slider;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Colonization$3;->getCurrent()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setCurrent(I)V
    .locals 2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Colonization$3;->getCurrent()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->COLONIZATION_TECH_LEVEL:F

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Slider;->setCurrent(I)V

    return-void
.end method
