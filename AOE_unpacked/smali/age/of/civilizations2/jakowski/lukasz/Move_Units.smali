.class public Lage/of/civilizations2/jakowski/lukasz/Move_Units;
.super Ljava/lang/Object;
.source "Move_Units.java"


# instance fields
.field private iFromProvinceID:I

.field private iNumOfUnits:I

.field private iNumOfUnitsWidth:I

.field private iToProvinceID:I

.field private moveUnitsLine:Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;


# direct methods
.method protected constructor <init>(IIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->moveUnitsLine:Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->iFromProvinceID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->iToProvinceID:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->iNumOfUnits:I

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->buildMoveUnitsLine()V

    return-void
.end method

.method protected constructor <init>(IIIZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->moveUnitsLine:Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->iFromProvinceID:I

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->iToProvinceID:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->iNumOfUnits:I

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->buildMoveUnitsLine_Migrate()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final buildMoveUnitsLine()V
    .locals 5

    :try_start_0
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->iFromProvinceID:I

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->iToProvinceID:I

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;-><init>(II)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->moveUnitsLine:Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontArmy:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->iNumOfUnits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->iNumOfUnitsWidth:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final buildMoveUnitsLine_Migrate()V
    .locals 5

    :try_start_0
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line_Migrate;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->iFromProvinceID:I

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->iToProvinceID:I

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line_Migrate;-><init>(II)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->moveUnitsLine:Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontArmy:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->iNumOfUnits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->iNumOfUnitsWidth:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->moveUnitsLine:Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    invoke-virtual {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->drawLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    return-void
.end method

.method protected final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->moveUnitsLine:Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    invoke-virtual {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->drawLine2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    return-void
.end method

.method protected final getFromProvinceID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->iFromProvinceID:I

    return v0
.end method

.method protected final getMoveUnitsLine()Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->moveUnitsLine:Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    return-object v0
.end method

.method protected final getNumOfUnits()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->iNumOfUnits:I

    return v0
.end method

.method protected final getToProvinceID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->iToProvinceID:I

    return v0
.end method

.method protected final getUnitsWidth()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->iNumOfUnitsWidth:I

    return v0
.end method

.method protected final setNumOfUnits(I)V
    .locals 5

    :try_start_0
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->iNumOfUnits:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->moveUnitsLine:Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->moveUnitsLine:Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->lMovingTime:J

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->moveUnitsLine:Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;

    const v2, 0x3dcccccd    # 0.1f

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/MoveUnits_Line;->fMovingPercentage:F

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontArmy:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Move_Units;->iNumOfUnitsWidth:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
