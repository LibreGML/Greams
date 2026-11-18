.class Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;
.super Ljava/lang/Object;
.source "Plagues_GameData.java"


# instance fields
.field protected BeginningYear:I

.field protected DEATH_RATE_EXTRA:F

.field protected DEATH_RATE_MIN:F

.field protected DURATION_TURNS_EXTRA:I

.field protected DURATION_TURNS_MIN:I

.field protected EXPANSION_MODIFIER:F

.field protected EXPANSION_MODIFIER_EXTRA:F

.field protected EndYear:I

.field private Name:Ljava/lang/String;

.field protected OUTBREAK_CHANCE:F

.field protected OUTBREAK_PROVINCES:I

.field protected OUTBREAK_PROVINCES_EXTRA:I

.field protected OUTBREAK_SCORE_DEVELOPMENT:F

.field protected OUTBREAK_SCORE_DEVELOPMENT_LOW:F

.field protected OUTBREAK_SCORE_ECONOMY:F

.field protected OUTBREAK_SCORE_HAPPINESS:F

.field protected OUTBREAK_SCORE_HAPPINESS_LOW:F

.field protected OUTBREAK_SCORE_POPULATION:F

.field protected fB:F

.field protected fG:F

.field protected fR:F


# direct methods
.method protected constructor <init>(Ljava/lang/String;IIIIFFFFIIIFIIFFFFFF)V
    .locals 7

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->Name:Ljava/lang/String;

    move v1, p2

    move v2, p3

    if-ge v2, v1, :cond_0

    move v6, v2

    move v2, v1

    move v1, v6

    :cond_0
    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->BeginningYear:I

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->EndYear:I

    const/4 v1, 0x1

    move v2, p4

    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->DURATION_TURNS_MIN:I

    const/4 v2, 0x0

    move v3, p5

    invoke-static {p5, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->DURATION_TURNS_EXTRA:I

    const v3, 0x3c23d70a    # 0.01f

    move v4, p6

    invoke-static {p6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->DEATH_RATE_MIN:F

    const/16 v4, 0x0

    move v5, p7

    invoke-static {p7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->DEATH_RATE_EXTRA:F

    move v5, p8

    invoke-static {p8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->EXPANSION_MODIFIER:F

    move/from16 v3, p9

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->EXPANSION_MODIFIER_EXTRA:F

    move/from16 v3, p10

    int-to-float v3, v3

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v3, v5

    iput v3, v0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->fR:F

    move/from16 v3, p11

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, v0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->fG:F

    move/from16 v3, p12

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, v0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->fB:F

    move/from16 v3, p13

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->OUTBREAK_CHANCE:F

    move/from16 v3, p14

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v3, 0xa

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->OUTBREAK_PROVINCES:I

    move/from16 v1, p15

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->OUTBREAK_PROVINCES_EXTRA:I

    const/high16 v1, -0x40000000    # -2.0f

    move/from16 v2, p16

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->OUTBREAK_SCORE_POPULATION:F

    move/from16 v2, p17

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->OUTBREAK_SCORE_ECONOMY:F

    move/from16 v2, p18

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->OUTBREAK_SCORE_DEVELOPMENT:F

    move/from16 v2, p19

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->OUTBREAK_SCORE_HAPPINESS:F

    move/from16 v2, p20

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->OUTBREAK_SCORE_DEVELOPMENT_LOW:F

    move/from16 v2, p21

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->OUTBREAK_SCORE_HAPPINESS_LOW:F

    return-void
.end method


# virtual methods
.method protected final getName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getName_Real()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->Name:Ljava/lang/String;

    return-object v0
.end method

.method protected final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Plagues_GameData;->Name:Ljava/lang/String;

    return-void
.end method
