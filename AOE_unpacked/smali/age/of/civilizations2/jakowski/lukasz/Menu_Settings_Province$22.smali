.class Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$22;
.super Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;
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
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;Ljava/lang/String;IIIIIZ)V
    .locals 8

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$22;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_NewGameStyle_Middle;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 6

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->highlightImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$22;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$22;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$22;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->highlightImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->highlightImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Province$22;->getWidth()I

    move-result v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    sub-int v4, v1, v4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->linesManager:Lage/of/civilizations2/jakowski/lukasz/LinesManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/LinesManager;->highlightImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method
