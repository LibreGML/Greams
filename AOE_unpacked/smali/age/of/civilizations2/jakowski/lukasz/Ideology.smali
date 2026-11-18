.class Lage/of/civilizations2/jakowski/lukasz/Ideology;
.super Ljava/lang/Object;
.source "Ideology.java"


# instance fields
.field protected ACCEPTABLE_TAXATION:F

.field protected ADMINISTRATION_COST:F

.field protected ADMINISTRATION_COST_CAPITAL:F

.field protected ADMINISTRATION_COST_DISTANCE:F

.field protected AI_TYPE:Ljava/lang/String;

.field protected ASSIMILATE_RATE:F

.field protected ATTACK_BONUS:I

.field protected AVAILABLE_SINCE_AGE_ID:I

.field protected CANT_CHANGE_GOV_OF_VASSAL:Z

.field protected CAN_BECOME_CIVILIZED:I

.field protected CENTRALIZATION:F

.field protected CENTRALIZATION_STEP:F

.field protected CHARACTERISTIC:I

.field protected CHARACTERISTIC_EFFECTIVE:Z

.field protected CIVILIZE_TECH_LEVEL:F

.field protected COMMERCE_RANGE:F

.field protected COMMUNISM:F

.field protected COMMUNISM_STEP:F

.field protected CONTROL_RANGE:F

.field protected COST_OF_DISBAND:I

.field protected COST_OF_MOVE:I

.field protected COST_OF_MOVE_OWN_PROVINCE:I

.field protected COST_OF_MOVE_SAME_PROVINCE:I

.field protected COST_OF_PLUNDER:I

.field protected COST_OF_RECRUIT:I

.field protected DEFENSE_BONUS:I

.field protected DEMOCRACY:F

.field protected DEMOCRACY_STEP:F

.field protected DIPLOMACY_RANGE:F

.field protected DISTINCTIVE:Z

.field protected ECO_GROWTH_BONUS:F

.field protected ELECTION_PERIOD:I

.field protected GOV_GROUP_ID:I

.field protected GREAT_POLITICAL_POWER:Z

.field protected GREEDY:I

.field protected GURRILLA:F

.field protected HIGH_AUTONOMY:Z

.field protected INCOME_PRODUCTION:F

.field protected INCOME_TAXATION:F

.field protected INSTABILITY:F

.field protected MANPOWER_BONUS:F

.field protected MILITARISM:F

.field protected MILITARISM_STEP:F

.field protected MILITARY_TACTICS:F

.field protected MILITARY_UPKEEP:F

.field protected MIN_GOODS:F

.field protected MIN_INVESTMENTS:F

.field protected MONARCHY_TRADITION:F

.field protected MONARCHY_TRADITION_STEP:F

.field protected MOVEMENT_MODIFIER:F

.field protected NATIONALISM:F

.field protected NATIONALISM_STEP:F

.field protected POLITICAL_AUTHORITY:I

.field protected POP_GROWTH_BONUS:F

.field protected PRINCE_WILL_BE_VASSALIZED:Z

.field protected RECRUITABILITY:F

.field protected RECRUITABILITY_OTHER:F

.field protected REFORMATION_PERIOD:I

.field protected RELIGIOUSNESS:F

.field protected RELIGIOUSNESS_STEP:F

.field protected RESEARCH_COST:F

.field protected REVOLUTIONARY:Z

.field protected SOCIALIZATION:F

.field protected SOCIALIZATION_STEP:F

.field protected STRONG_IDEOLOGY:Z

.field protected SUPPORT_RATE_CHANGING:F

.field protected SUPPORT_RATE_INCREASING:F

.field protected VASSAL_CAN_DECLARE_WAR:Z

.field private extraTag:Ljava/lang/String;

.field private iCrownImage:Lage/of/civilizations2/jakowski/lukasz/Image;

.field private iCrownImageScaled:Lage/of/civilizations2/jakowski/lukasz/Image;

.field private iCrownVassalImage:Lage/of/civilizations2/jakowski/lukasz/Image;

.field private oColor:Lcom/badlogic/gdx/graphics/Color;

.field private sName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIFFIIIFFIFFFFFIIIIIFFLjava/lang/String;ZIIFZFZZFZFZFFFZIZIZIFFFFFFLjava/lang/String;FFFFFFFFIIFFFFFFFFFF)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    const/4 v3, 0x0

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownVassalImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    const/4 v3, 0x0

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownImageScaled:Lage/of/civilizations2/jakowski/lukasz/Image;

    const v3, 0x3e19999a    # 0.15f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MIN_GOODS:F

    const v3, 0x3dcccccd    # 0.1f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MIN_INVESTMENTS:F

    const v3, 0x3e19999a    # 0.15f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->RESEARCH_COST:F

    const/high16 v3, 0x3e800000    # 0.25f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ACCEPTABLE_TAXATION:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MILITARY_UPKEEP:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST_DISTANCE:F

    const v3, 0x3f19999a    # 0.6f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST_CAPITAL:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_TAXATION:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_PRODUCTION:F

    const/4 v3, 0x6

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE:I

    const/4 v3, 0x4

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE_SAME_PROVINCE:I

    const/4 v3, 0x2

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE_OWN_PROVINCE:I

    const/16 v3, 0x14

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_DISBAND:I

    const/16 v3, 0xc

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_PLUNDER:I

    const/4 v3, 0x2

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_RECRUIT:I

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DEFENSE_BONUS:I

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ATTACK_BONUS:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MILITARY_TACTICS:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->RECRUITABILITY:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->RECRUITABILITY_OTHER:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->GURRILLA:F

    const/4 v3, -0x1

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CIVILIZE_TECH_LEVEL:F

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->AVAILABLE_SINCE_AGE_ID:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->PRINCE_WILL_BE_VASSALIZED:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CANT_CHANGE_GOV_OF_VASSAL:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->VASSAL_CAN_DECLARE_WAR:Z

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CONTROL_RANGE:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DIPLOMACY_RANGE:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COMMERCE_RANGE:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MANPOWER_BONUS:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->SUPPORT_RATE_CHANGING:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->SUPPORT_RATE_INCREASING:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INSTABILITY:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ASSIMILATE_RATE:F

    const/4 v3, 0x0

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->HIGH_AUTONOMY:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DISTINCTIVE:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->STRONG_IDEOLOGY:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->GREAT_POLITICAL_POWER:Z

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->POLITICAL_AUTHORITY:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CHARACTERISTIC_EFFECTIVE:Z

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CHARACTERISTIC:I

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->GREEDY:I

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->POP_GROWTH_BONUS:F

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MOVEMENT_MODIFIER:F

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ECO_GROWTH_BONUS:F

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REFORMATION_PERIOD:I

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ELECTION_PERIOD:I

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MONARCHY_TRADITION:F

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->NATIONALISM:F

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MILITARISM:F

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COMMUNISM:F

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->SOCIALIZATION:F

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->RELIGIOUSNESS:F

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CENTRALIZATION:F

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DEMOCRACY:F

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DEMOCRACY_STEP:F

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CENTRALIZATION_STEP:F

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->RELIGIOUSNESS_STEP:F

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->SOCIALIZATION_STEP:F

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COMMUNISM_STEP:F

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->NATIONALISM_STEP:F

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MONARCHY_TRADITION_STEP:F

    const/4 v3, 0x0

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MILITARISM_STEP:F

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->sName:Ljava/lang/String;

    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->extraTag:Ljava/lang/String;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    int-to-float v4, p3

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    int-to-float v5, p4

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    int-to-float v6, p5

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    const v7, 0x3ed9999a    # 0.425f

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->oColor:Lcom/badlogic/gdx/graphics/Color;

    move/from16 v0, p28

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->GOV_GROUP_ID:I

    const/16 v3, -0x50

    move/from16 v0, p29

    if-ge v0, v3, :cond_0

    const/16 p29, -0x50

    :cond_0
    move/from16 v0, p29

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ATTACK_BONUS:I

    const v3, 0x3c23d70a    # 0.01f

    move/from16 v0, p30

    cmpl-float v0, v0, v3

    if-gez v0, :cond_1

    const p30, 0x3c23d70a    # 0.01f

    :cond_1
    const v3, 0x40000000    # 2.0f

    move/from16 v0, p30

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    const p30, 0x40000000    # 2.0f

    :cond_2
    move/from16 v0, p30

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MILITARY_TACTICS:F

    move/from16 v0, p31

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CANT_CHANGE_GOV_OF_VASSAL:Z

    const v3, 0x3c23d70a    # 0.01f

    move/from16 v0, p32

    cmpl-float v0, v0, v3

    if-gez v0, :cond_3

    const p32, 0x3c23d70a    # 0.01f

    :cond_3
    const v3, 0x3f800000    # 1.0f

    move/from16 v0, p32

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    const p32, 0x3f800000    # 1.0f

    :cond_4
    move/from16 v0, p32

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->GURRILLA:F

    move/from16 v0, p33

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->PRINCE_WILL_BE_VASSALIZED:Z

    move/from16 v0, p34

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->VASSAL_CAN_DECLARE_WAR:Z

    move/from16 v0, p36

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->HIGH_AUTONOMY:Z

    move/from16 v0, p38

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DISTINCTIVE:Z

    const v3, -0x4099999a    # -0.9f

    move/from16 v0, p39

    cmpl-float v0, v0, v3

    if-gez v0, :cond_5

    const p39, -0x4099999a    # -0.9f

    :cond_5
    move/from16 v0, p39

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->POP_GROWTH_BONUS:F

    const v3, -0x4099999a    # -0.9f

    move/from16 v0, p40

    cmpl-float v0, v0, v3

    if-gez v0, :cond_6

    const p40, -0x4099999a    # -0.9f

    :cond_6
    move/from16 v0, p40

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ECO_GROWTH_BONUS:F

    const v3, 0x3c23d70a    # 0.01f

    move/from16 v0, p41

    cmpl-float v0, v0, v3

    if-gez v0, :cond_7

    const p41, 0x3c23d70a    # 0.01f

    :cond_7
    move/from16 v0, p41

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MOVEMENT_MODIFIER:F

    move/from16 v0, p42

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->STRONG_IDEOLOGY:Z

    move/from16 v0, p43

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->POLITICAL_AUTHORITY:I

    move/from16 v0, p44

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->GREAT_POLITICAL_POWER:Z

    move/from16 v0, p45

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CHARACTERISTIC:I

    move/from16 v0, p46

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CHARACTERISTIC_EFFECTIVE:Z

    move/from16 v0, p47

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->GREEDY:I

    move/from16 v0, p48

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DIPLOMACY_RANGE:F

    move/from16 v0, p49

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COMMERCE_RANGE:F

    move/from16 v0, p50

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MANPOWER_BONUS:F

    move/from16 v0, p51

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INSTABILITY:F

    move/from16 v0, p52

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ASSIMILATE_RATE:F

    move/from16 v0, p53

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->RECRUITABILITY_OTHER:F

    move/from16 v0, p55

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DEMOCRACY:F

    move/from16 v0, p56

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CENTRALIZATION:F

    move/from16 v0, p57

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->RELIGIOUSNESS:F

    move/from16 v0, p58

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->SOCIALIZATION:F

    move/from16 v0, p59

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COMMUNISM:F

    move/from16 v0, p60

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->NATIONALISM:F

    move/from16 v0, p62

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MILITARISM:F

    move/from16 v0, p61

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MONARCHY_TRADITION:F

    move/from16 v0, p63

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ELECTION_PERIOD:I

    move/from16 v0, p64

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REFORMATION_PERIOD:I

    move/from16 v0, p65

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->SUPPORT_RATE_CHANGING:F

    move/from16 v0, p66

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->SUPPORT_RATE_INCREASING:F

    move/from16 v0, p67

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DEMOCRACY_STEP:F

    move/from16 v0, p68

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CENTRALIZATION_STEP:F

    move/from16 v0, p69

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->RELIGIOUSNESS_STEP:F

    move/from16 v0, p70

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->SOCIALIZATION_STEP:F

    move/from16 v0, p71

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COMMUNISM_STEP:F

    move/from16 v0, p72

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->NATIONALISM_STEP:F

    move/from16 v0, p73

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MONARCHY_TRADITION_STEP:F

    move/from16 v0, p74

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MILITARISM_STEP:F

    const v3, 0x3c23d70a    # 0.01f

    move/from16 v0, p35

    cmpl-float v0, v0, v3

    if-gez v0, :cond_8

    const p35, 0x3c23d70a    # 0.01f

    :cond_8
    const v3, 0x40400000    # 3.0f

    move/from16 v0, p35

    cmpl-float v0, v0, v3

    if-lez v0, :cond_9

    const p35, 0x41800000    # 16.0f

    :cond_9
    move/from16 v0, p35

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->RECRUITABILITY:F

    const v3, 0x3a83126e    # 9.999999E-4f

    move/from16 v0, p37

    cmpl-float v0, v0, v3

    if-gez v0, :cond_a

    const p32, 0x3a83126e    # 9.999999E-4f

    :cond_a
    const v3, 0x3f800000    # 1.0f

    move/from16 v0, p37

    cmpl-float v0, v0, v3

    if-lez v0, :cond_b

    const p37, 0x3f800000    # 1.0f

    :cond_b
    move/from16 v0, p37

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CONTROL_RANGE:F

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v3, p11, v3

    if-gez v3, :cond_c

    const p11, 0x3c23d70a    # 0.01f

    :cond_c
    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v3, p12, v3

    if-gez v3, :cond_d

    const p12, 0x3c23d70a    # 0.01f

    :cond_d
    const v3, 0x3f800000    # 1.0f

    cmpl-float v3, p12, v3

    if-lez v3, :cond_e

    const p12, 0x3f800000    # 1.0f

    :cond_e
    float-to-double v4, p6

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v4, v6

    if-gez v3, :cond_f

    const p6, 0x3c23d70a    # 0.01f

    :cond_f
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p6, v3

    if-lez v3, :cond_10

    const/high16 p6, 0x3f800000    # 1.0f

    :cond_10
    float-to-double v4, p7

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v4, v6

    if-gez v3, :cond_11

    const p7, 0x3c23d70a    # 0.01f

    :cond_11
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p7, v3

    if-lez v3, :cond_12

    const/high16 p7, 0x3f800000    # 1.0f

    :cond_12
    move/from16 v0, p12

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ACCEPTABLE_TAXATION:F

    iput p6, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MIN_GOODS:F

    iput p7, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MIN_INVESTMENTS:F

    move/from16 v0, p11

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->RESEARCH_COST:F

    if-gez p8, :cond_13

    const/16 p8, 0x0

    :cond_13
    if-gez p9, :cond_14

    const/16 p9, 0x0

    :cond_14
    if-gez p10, :cond_15

    const/16 p10, 0x0

    :cond_15
    if-gez p20, :cond_16

    const/16 p20, 0x0

    :cond_16
    if-gez p21, :cond_17

    const/16 p21, 0x0

    :cond_17
    move/from16 v0, p8

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE:I

    move/from16 v0, p9

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE_SAME_PROVINCE:I

    move/from16 v0, p10

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE_OWN_PROVINCE:I

    move/from16 v0, p20

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_DISBAND:I

    move/from16 v0, p21

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_PLUNDER:I

    const/16 v3, -0x50

    move/from16 v0, p13

    if-ge v0, v3, :cond_18

    const/16 p13, -0x50

    :cond_18
    move/from16 v0, p13

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->DEFENSE_BONUS:I

    move/from16 v0, p14

    float-to-double v4, v0

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpg-double v3, v4, v6

    if-gez v3, :cond_19

    const p14, 0x3dcccccd    # 0.1f

    :cond_19
    move/from16 v0, p14

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MILITARY_UPKEEP:F

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v3, p15, v3

    if-gez v3, :cond_1a

    const p15, 0x3dcccccd    # 0.1f

    :cond_1a
    move/from16 v0, p15

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST:F

    move/from16 v0, p16

    float-to-double v4, v0

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1b

    const p16, 0x3c23d70a    # 0.01f

    :cond_1b
    move/from16 v0, p16

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST_DISTANCE:F

    move/from16 v0, p17

    float-to-double v4, v0

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1c

    const p17, 0x3c23d70a    # 0.01f

    :cond_1c
    move/from16 v0, p17

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_TAXATION:F

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v3, p18, v3

    if-gez v3, :cond_1d

    const p18, 0x3c23d70a    # 0.01f

    :cond_1d
    move/from16 v0, p18

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->INCOME_PRODUCTION:F

    const/4 v3, 0x1

    move/from16 v0, p19

    if-ge v0, v3, :cond_1e

    const/16 p19, 0x1

    :cond_1e
    move/from16 v0, p19

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_RECRUIT:I

    move/from16 v0, p22

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CAN_BECOME_CIVILIZED:I

    move/from16 v0, p23

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->AVAILABLE_SINCE_AGE_ID:I

    move/from16 v0, p24

    float-to-double v4, v0

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v4, v6

    if-gez v3, :cond_21

    const p24, 0x3c23d70a    # 0.01f

    :cond_1f
    :goto_0
    move/from16 v0, p24

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->ADMINISTRATION_COST_CAPITAL:F

    move/from16 v0, p25

    float-to-double v4, v0

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v4, v6

    if-gez v3, :cond_20

    const p25, 0x3c23d70a    # 0.01f

    :cond_20
    move/from16 v0, p25

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->CIVILIZE_TECH_LEVEL:F

    move/from16 v0, p27

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->REVOLUTIONARY:Z

    move-object/from16 v0, p26

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->AI_TYPE:Ljava/lang/String;

    :try_start_0
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UI/icons/crowns/crown"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownImage:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UI/icons/crowns/crown_x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownVassalImage:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UI/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "crowns/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "crown"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownImageScaled:Lage/of/civilizations2/jakowski/lukasz/Image;
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    return-void

    :cond_21
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p24, v3

    if-lez v3, :cond_1f

    const/high16 p24, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v6, "UI/icons/crowns/crown.png"

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    goto/16 :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v6, "UI/icons/crowns/crown_x.png"

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownVassalImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    goto/16 :goto_2

    :catch_2
    move-exception v2

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UI/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "crowns/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "crown.png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownImageScaled:Lage/of/civilizations2/jakowski/lukasz/Image;

    goto :goto_3
.end method


# virtual methods
.method protected final getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->oColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method protected final getCrownImageScaled()Lage/of/civilizations2/jakowski/lukasz/Image;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownImageScaled:Lage/of/civilizations2/jakowski/lukasz/Image;

    return-object v0
.end method

.method protected final getExtraTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->extraTag:Ljava/lang/String;

    return-object v0
.end method

.method protected final getMin_Goods()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MIN_GOODS:F

    return v0
.end method

.method protected final getMin_Goods(I)F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->MIN_GOODS:F

    return v0
.end method

.method protected final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->sName:Ljava/lang/String;

    return-object v0
.end method

.method protected final getiCrownImage()Lage/of/civilizations2/jakowski/lukasz/Image;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    return-object v0
.end method

.method protected final getiCrownVassalImage()Lage/of/civilizations2/jakowski/lukasz/Image;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->iCrownVassalImage:Lage/of/civilizations2/jakowski/lukasz/Image;

    return-object v0
.end method

.method protected final setExtraTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->extraTag:Ljava/lang/String;

    return-void
.end method

.method protected final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Ideology;->sName:Ljava/lang/String;

    return-void
.end method
