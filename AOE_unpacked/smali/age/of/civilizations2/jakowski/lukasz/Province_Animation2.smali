.class Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;
.super Ljava/lang/Object;
.source "Province_Animation2.java"


# instance fields
.field protected final START_PROVINCE_ALPHA:I

.field protected final START_PROVINCE_BORDER_ALPHA:I

.field protected final TIME_UPDATE:I

.field protected backAnimation:Z

.field protected backAnimationBorder:Z

.field protected fAlpha:I

.field protected iBorderAlpha:I

.field protected iColorStepID:I

.field protected iStepID:I

.field protected iStepIDBorder:I

.field protected lTime:J

.field protected lTimeBorder:J


# direct methods
.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->START_PROVINCE_ALPHA:I

    const/16 v1, 0xff

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->START_PROVINCE_BORDER_ALPHA:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->TIME_UPDATE:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->lTime:J

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->fAlpha:I

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iStepID:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->backAnimation:Z

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->lTimeBorder:J

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iStepIDBorder:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iBorderAlpha:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->backAnimationBorder:Z

    return-void
.end method


# virtual methods
.method protected final getAlpha()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->fAlpha:I

    return v0
.end method

.method protected final getBackAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->backAnimation:Z

    return v0
.end method

.method protected final getBorderAlpha()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iBorderAlpha:I

    return v0
.end method

.method protected final getColorStepID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iColorStepID:I

    return v0
.end method

.method protected final getStepID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iStepID:I

    return v0
.end method

.method protected final resetAnimationData()V
    .locals 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->lTime:J

    const/16 v0, 0x3c

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->fAlpha:I

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iStepID:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->backAnimation:Z

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iColorStepID:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    add-long/2addr v1, v3

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->lTimeBorder:J

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iStepIDBorder:I

    const/16 v1, 0xff

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iBorderAlpha:I

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->backAnimationBorder:Z

    return-void
.end method

.method protected final update()V
    .locals 6

    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->lTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3c

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iStepID:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iStepID:I

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->backAnimation:Z

    const/high16 v2, 0x40300000    # 2.75f

    if-eqz v0, :cond_0

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->fAlpha:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->fAlpha:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iBorderAlpha:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iBorderAlpha:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iColorStepID:I

    sub-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iColorStepID:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->fAlpha:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->fAlpha:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iBorderAlpha:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iBorderAlpha:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iColorStepID:I

    add-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iColorStepID:I

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->lTime:J

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iStepID:I

    const/16 v2, 0x14

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->iStepID:I

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->backAnimation:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->backAnimation:Z

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->backAnimationBorder:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->backAnimationBorder:Z

    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->lTime:J

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->backAnimation:Z

    if-eqz v0, :cond_1

    const-wide/16 v4, 0x1c2

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x258

    :goto_1
    add-long/2addr v2, v4

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Animation2;->lTime:J

    :cond_2
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_3
    return-void
.end method
