.class Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;
.super Ljava/lang/Object;
.source "Move_Units_Plunder.java"


# instance fields
.field private iFromProvinceID:I

.field private iNumOfUnits:I

.field private iNumOfUnitsWidth:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->iFromProvinceID:I

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->setNumOfUnits(I)V

    return-void
.end method


# virtual methods
.method protected final getFromProvinceID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->iFromProvinceID:I

    return v0
.end method

.method protected final getNumOfUnits()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->iNumOfUnits:I

    return v0
.end method

.method protected final getUnitsWidth()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->iNumOfUnitsWidth:I

    return v0
.end method

.method protected final setNumOfUnits(I)V
    .locals 4

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->iNumOfUnits:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontArmy:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int p1, p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units_Plunder;->iNumOfUnitsWidth:I

    return-void
.end method
