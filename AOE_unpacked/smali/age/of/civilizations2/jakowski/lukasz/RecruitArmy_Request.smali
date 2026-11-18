.class Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;
.super Ljava/lang/Object;
.source "RecruitArmy_Request.java"


# instance fields
.field private iArmy:I

.field private iArmyWidth:I

.field private iProvinceID:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->iArmyWidth:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->iProvinceID:I

    invoke-virtual {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->setArmy(I)V

    return-void
.end method


# virtual methods
.method protected final getArmy()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->iArmy:I

    return v0
.end method

.method protected final getArmyWidth()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->iArmyWidth:I

    return v0
.end method

.method protected final getProvinceID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->iProvinceID:I

    return v0
.end method

.method protected final setArmy(I)V
    .locals 4

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->iArmy:I

    :try_start_0
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

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->iArmyWidth:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected final setProvinceID(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/RecruitArmy_Request;->iProvinceID:I

    return-void
.end method
