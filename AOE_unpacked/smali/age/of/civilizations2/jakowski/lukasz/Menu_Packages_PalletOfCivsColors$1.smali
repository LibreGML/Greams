.class Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_PalletOfCivsColors$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Menu;
.source "Menu_Packages_PalletOfCivsColors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_PalletOfCivsColors;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field iCurrent:I

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_PalletOfCivsColors;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_PalletOfCivsColors;Ljava/lang/String;IIIIIZ)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_PalletOfCivsColors$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_PalletOfCivsColors;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    const/4 v0, 0x0

    iput v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_PalletOfCivsColors$1;->iCurrent:I

    return-void
.end method


# virtual methods
.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->palletManager:Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_PalletOfCivsColors$1;->getPosX()I

    move-result p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_PalletOfCivsColors$1;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p3, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sub-int/2addr p3, v1

    add-int v2, p3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_PalletOfCivsColors$1;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_PalletOfCivsColors$1;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_PalletOfCivsColors$1;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x4

    sub-int/2addr p2, p3

    iget-object p3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_PalletOfCivsColors$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_PalletOfCivsColors;

    invoke-virtual {p3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_PalletOfCivsColors;->getMenuPosY()I

    move-result p3

    add-int v3, p2, p3

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v4, p2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_PalletOfCivsColors$1;->getHeight()I

    move-result p2

    div-int/lit8 v5, p2, 0x2

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_PalletOfCivsColors$1;->iCurrent:I

    move-object v1, p1

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Pallet_Manager;->drawSampleColors(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V

    return-void
.end method

.method protected setCurrent(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_PalletOfCivsColors$1;->iCurrent:I

    return-void
.end method
