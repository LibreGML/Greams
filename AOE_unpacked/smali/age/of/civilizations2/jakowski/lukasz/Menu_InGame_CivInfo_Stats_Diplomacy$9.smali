.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy$9;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;
.source "Menu_InGame_CivInfo_Stats_Diplomacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy;Ljava/lang/String;IZZ)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy$9;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy;

    invoke-direct {p0, p2, p3, p4, p5}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;-><init>(Ljava/lang/String;IZZ)V

    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .locals 8

    sget p6, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {p6}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    iget-object p6, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy$9;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy;

    invoke-virtual {p6}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy;->getPosX()I

    move-result p6

    add-int v2, p6, p2

    iget-object p6, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy$9;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy;

    invoke-virtual {p6}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy;->getPosY()I

    move-result p6

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int/2addr p6, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy$9;->getHeight()I

    move-result v1

    sub-int v3, p6, v1

    iget-object p6, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy$9;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy;

    invoke-virtual {p6}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy$9;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    iget-object p6, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy$9;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy;

    invoke-virtual {p6}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy;->getPosX()I

    move-result p6

    add-int/2addr p6, p2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy$9;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy$9;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy$9;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy$9;->getHeight()I

    move-result v2

    invoke-static {p1, p6, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_InfoBox_Left_Title(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p6, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p6

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p6, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy$9;->getText()Ljava/lang/String;

    move-result-object p6

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p3, p5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy$9;->getTextWidth()I

    move-result p5

    int-to-float p5, p5

    mul-float p5, p5, v0

    float-to-int p5, p5

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p3, p5

    add-int/2addr p3, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy$9;->getHeight()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy$9;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p4, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats_Diplomacy$9;->getTextHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v0

    float-to-int p2, p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p4, p2

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_CIV_INFO_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p6, p3, p4, p2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method
