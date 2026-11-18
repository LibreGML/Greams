.class Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;
.super Ljava/lang/Object;
.source "Start_The_Game_Data.java"


# instance fields
.field protected final TIMER_MODFIER_END_GAME:F

.field private final TIME_CAPITALS_PROVINCE_ALPHA:I

.field private final TIME_DASHED_LINE:I

.field private final TIME_PROVINCE_ALPHA:I

.field private final TIME_STRAIGHT_LINE:I

.field private fCapitalsAlpha:F

.field private fDashedLinePercentage:F

.field private fProvincesAlpha:F

.field private fStaightLinePercentage:F

.field private fWastelandAlpha:F

.field private lTime:J

.field private ready:Z

.field private reverse:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->ready:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->reverse:Z

    const/16 v0, 0xcb2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->TIME_PROVINCE_ALPHA:I

    const/16 v0, 0x5dc

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->TIME_CAPITALS_PROVINCE_ALPHA:I

    const/16 v0, 0x4e2

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->TIME_STRAIGHT_LINE:I

    const/16 v0, 0xdac

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->TIME_DASHED_LINE:I

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->TIMER_MODFIER_END_GAME:F

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->lTime:J

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA:I

    int-to-float v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fProvincesAlpha:F

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA:I

    int-to-float v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fCapitalsAlpha:F

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA_WASTELAND:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fWastelandAlpha:F

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fStaightLinePercentage:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fDashedLinePercentage:F

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->lTime:J

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fProvincesAlpha:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fCapitalsAlpha:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fWastelandAlpha:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fStaightLinePercentage:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fDashedLinePercentage:F

    :goto_0
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->reverse:Z

    return-void
.end method


# virtual methods
.method protected final getCapitalsAlpha()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fCapitalsAlpha:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected final getDashedLinePercentage()F
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fDashedLinePercentage:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected final getIsDone()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->ready:Z

    return v0
.end method

.method protected final getProvincesAlpha()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fProvincesAlpha:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected final getStraightLinePercentage()F
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fStaightLinePercentage:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected final getWastelandAlpha()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fWastelandAlpha:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected final updateData()V
    .locals 11

    const v10, 0x454b2000    # 3250.0f

    const/high16 v9, 0x437f0000    # 255.0f

    const/high16 v8, 0x42c80000    # 100.0f

    const/high16 v7, 0x42c40000    # 98.0f

    const/4 v6, 0x0

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->reverse:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fProvincesAlpha:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const v2, 0x45840800    # 4225.0f

    div-float/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fProvincesAlpha:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fProvincesAlpha:F

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fCapitalsAlpha:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fProvincesAlpha:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_0

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fProvincesAlpha:F

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fCapitalsAlpha:F

    :cond_0
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fWastelandAlpha:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const v2, 0x45840800    # 4225.0f

    div-float/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA_WASTELAND:F

    mul-float/2addr v2, v9

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fWastelandAlpha:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fWastelandAlpha:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_1

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fWastelandAlpha:F

    :cond_1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fStaightLinePercentage:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const v2, 0x458e3000    # 4550.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v7

    sub-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fStaightLinePercentage:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fStaightLinePercentage:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_2

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fStaightLinePercentage:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->ready:Z

    :cond_2
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fDashedLinePercentage:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const v2, 0x44cb2000    # 1625.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v7

    sub-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fDashedLinePercentage:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fDashedLinePercentage:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_3

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fDashedLinePercentage:F

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->lTime:J

    :goto_0
    return-void

    :cond_4
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fProvincesAlpha:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v1, v10

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fProvincesAlpha:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fProvincesAlpha:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA:I

    int-to-float v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fProvincesAlpha:F

    :cond_5
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fWastelandAlpha:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v1, v10

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA_WASTELAND:F

    mul-float/2addr v2, v9

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fWastelandAlpha:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fWastelandAlpha:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA_WASTELAND:F

    mul-float/2addr v1, v9

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA_WASTELAND:F

    mul-float/2addr v0, v9

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fWastelandAlpha:F

    :cond_6
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fCapitalsAlpha:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const v2, 0x44bb8000    # 1500.0f

    div-float/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fCapitalsAlpha:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fCapitalsAlpha:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA:I

    int-to-float v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fCapitalsAlpha:F

    :cond_7
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fStaightLinePercentage:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const v2, 0x449c4000    # 1250.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v7

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fStaightLinePercentage:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fStaightLinePercentage:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_8

    iput v8, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fStaightLinePercentage:F

    :cond_8
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fDashedLinePercentage:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const v2, 0x455ac000    # 3500.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v7

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fDashedLinePercentage:F

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fDashedLinePercentage:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_9

    iput v8, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->fDashedLinePercentage:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->ready:Z

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_StartTheGame;->done()V

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Start_The_Game_Data;->lTime:J

    goto/16 :goto_0
.end method
