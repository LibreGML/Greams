.class Lage/of/civilizations2/jakowski/lukasz/ViewsManager;
.super Ljava/lang/Object;
.source "ViewsManager.java"


# static fields
.field protected static ECONOMY_MAX:I = 0x1

.field protected static POPULATION_MAX:I = 0x1

.field protected static POPULATION_OF_CIVID:I = 0x0

.field protected static VIEW_AI_DANGER_MODE:I = -0x1

.field protected static VIEW_AI_POTENTIAL_MODE:I = -0x1

.field protected static VIEW_ALLIANCES_MODE:I = -0x1

.field protected static VIEW_ARMY_MODE:I = -0x1

.field protected static VIEW_BALANCE_MODE:I = -0x1

.field protected static VIEW_BUILDINGS_MODE:I = -0x1

.field protected static VIEW_CONTINENT_MODE:I = -0x1

.field protected static VIEW_CORES_MODE:I = -0x1

.field protected static VIEW_DEFENSIVE_POSITION_MODE:I = -0x1

.field protected static VIEW_DEVELOPMENT_MODE:I = -0x1

.field protected static VIEW_DIPLOMACY_MODE:I = -0x1

.field protected static VIEW_DISEASES_MODE:I = -0x1

.field protected static VIEW_DISTANCE_MODE:I = -0x1

.field protected static VIEW_ECONOMY_MODE:I = -0x1

.field protected static VIEW_GROWTH_RATE_MODE:I = -0x1

.field protected static VIEW_HAPPINESS_MODE:I = -0x1

.field protected static VIEW_IDEOLOGIES_MODE:I = -0x1

.field protected static VIEW_IMPERIAL_MODE:I = -0x1

.field protected static VIEW_INCOME_MODE:I = -0x1

.field protected static VIEW_LEVEL_OF_FORTIFICATIONS_MODE:I = -0x1

.field protected static VIEW_LEVEL_OF_PORT_MODE:I = -0x1

.field protected static VIEW_LEVEL_OF_WATCH_TOWER_MODE:I = -0x1

.field protected static VIEW_POPULATION2_MODE:I = -0x1

.field protected static VIEW_POPULATION_MODE:I = -0x1

.field protected static VIEW_POPULATION_OF_CIV_MODE:I = -0x1

.field protected static VIEW_PROVINCE_STABILITY_MODE:I = -0x1

.field protected static VIEW_PROVINCE_VALUE_MODE:I = -0x1

.field protected static VIEW_RECRUITABLE_ARMY_MODE:I = -0x1

.field protected static VIEW_REGIONS_MODE:I = -0x1

.field protected static VIEW_REVOLUTION_MODE:I = -0x1

.field protected static VIEW_SUPPLIES_MODE:I = -0x1

.field protected static VIEW_TECHNOLOGY_MODE:I = -0x1

.field protected static VIEW_TERRAIN_TYPE_MODE:I = -0x1

.field protected static VIEW_TRUE_OWNERS_MODE:I = -0x1


# instance fields
.field private iActiveViewID:I

.field private lViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/View_Type;",
            ">;"
        }
    .end annotation
.end field

.field protected viewConfig:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->iActiveViewID:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->viewConfig:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$2;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$3;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_0
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_1

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$4;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_1

    :cond_1
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$5;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_1
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_DIPLOMACY_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$6;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_2

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$7;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_2

    :cond_2
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$8;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_2
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_3

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$9;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_3

    :cond_3
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$10;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_3
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_POPULATION_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$11;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_4

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$12;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_4

    :cond_4
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$13;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_4
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_5

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$14;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_5

    :cond_5
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$15;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_5
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_CORES_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$16;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$16;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_6

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$17;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$17;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_6

    :cond_6
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$18;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$18;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_6
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_7

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$19;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$19;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_7

    :cond_7
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$20;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$20;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_7
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_ALLIANCES_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$21;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$21;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_8

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$22;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$22;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_8

    :cond_8
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$23;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$23;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_8
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_9

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$24;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$24;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_9

    :cond_9
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$25;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$25;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_9
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_SUPPLIES_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$26;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$26;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_a

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$27;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$27;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_a

    :cond_a
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$28;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$28;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_a
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_b

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$29;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$29;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_b

    :cond_b
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$30;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$30;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_b
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_INCOME_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$31;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$31;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_c

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$32;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$32;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_c

    :cond_c
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$33;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$33;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_c
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_d

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$34;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$34;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_d

    :cond_d
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$35;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$35;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_d
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_DISTANCE_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$36;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$36;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_e

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$37;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$37;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_e

    :cond_e
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$38;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$38;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_e
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_f

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$39;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$39;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_f

    :cond_f
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$40;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$40;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_f
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_HAPPINESS_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$41;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$41;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_10

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$42;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$42;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_10

    :cond_10
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$43;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$43;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_10
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_11

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$44;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$44;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_11

    :cond_11
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$45;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$45;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_11
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_REVOLUTION_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$46;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$46;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_12

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$47;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$47;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_12

    :cond_12
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$48;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$48;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_12
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_13

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$49;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$49;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_13

    :cond_13
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$50;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$50;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_13
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_PROVINCE_STABILITY_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$51;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$51;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_14

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$52;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$52;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_14

    :cond_14
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$53;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$53;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_14
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_15

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$54;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$54;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_15

    :cond_15
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$55;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$55;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_15
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_ECONOMY_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$56;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$56;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_16

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$57;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$57;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_16

    :cond_16
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$58;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$58;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_16
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_17

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$59;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$59;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_17

    :cond_17
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$60;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$60;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_17
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_POPULATION_OF_CIV_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$61;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$61;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_18

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$62;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$62;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_18

    :cond_18
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$63;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$63;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_18
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_19

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$64;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$64;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_19

    :cond_19
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$65;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$65;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_19
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_CONTINENT_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$66;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$66;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_1a

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$67;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$67;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_1a

    :cond_1a
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$68;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$68;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_1a
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_1b

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$69;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$69;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_1b

    :cond_1b
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$70;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$70;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_1b
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_REGIONS_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$71;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$71;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_1c

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$72;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$72;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_1c

    :cond_1c
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$73;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$73;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_1c
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_1d

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$74;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$74;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_1d

    :cond_1d
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$75;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$75;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_1d
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_TERRAIN_TYPE_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$76;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$76;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_1e

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$77;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$77;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_1e

    :cond_1e
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$78;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$78;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_1e
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_1f

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$79;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$79;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_1f

    :cond_1f
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$80;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$80;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_1f
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_GROWTH_RATE_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$81;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$81;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_20

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$82;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$82;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_20

    :cond_20
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$83;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$83;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_20
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_21

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$84;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$84;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_21

    :cond_21
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$85;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$85;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_21
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_DEVELOPMENT_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$86;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$86;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_22

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$87;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$87;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_22

    :cond_22
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$88;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$88;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_22
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_23

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$89;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$89;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_23

    :cond_23
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$90;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$90;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_23
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_IMPERIAL_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$91;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$91;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_24

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$92;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$92;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_24

    :cond_24
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$93;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$93;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_24
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_25

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$94;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$94;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_25

    :cond_25
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$95;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$95;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_25
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_TECHNOLOGY_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$96;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$96;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_26

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$97;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$97;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_26

    :cond_26
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$98;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$98;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_26
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_27

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$99;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$99;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_27

    :cond_27
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$100;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$100;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_27
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_PROVINCE_VALUE_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$101;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$101;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_28

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$102;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$102;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_28

    :cond_28
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$103;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$103;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_28
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-nez v3, :cond_29

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$104;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$104;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_29

    :cond_29
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_2a

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$105;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$105;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_29

    :cond_2a
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$106;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$106;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_29
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_ARMY_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$107;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$107;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_2b

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$108;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$108;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_2a

    :cond_2b
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$109;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$109;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_2a
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_2c

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$110;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$110;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_2b

    :cond_2c
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$111;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$111;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_2b
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_BUILDINGS_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$112;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$112;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_2d

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$113;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$113;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_2c

    :cond_2d
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$114;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$114;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_2c
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_2e

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$115;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$115;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_2d

    :cond_2e
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$116;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$116;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_2d
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_LEVEL_OF_PORT_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$117;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$117;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_2f

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$118;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$118;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_2e

    :cond_2f
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$119;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$119;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_2e
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_30

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$120;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$120;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_2f

    :cond_30
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$121;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$121;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_2f
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_LEVEL_OF_FORTIFICATIONS_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$122;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$122;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_31

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$123;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$123;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_30

    :cond_31
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$124;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$124;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_30
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_32

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$125;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$125;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_31

    :cond_32
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$126;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$126;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_31
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_LEVEL_OF_WATCH_TOWER_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$127;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$127;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_33

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$128;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$128;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_32

    :cond_33
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$129;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$129;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_32
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_34

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$130;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$130;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_33

    :cond_34
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$131;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$131;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_33
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_IDEOLOGIES_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$132;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$132;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_35

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$133;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$133;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_34

    :cond_35
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$134;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$134;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_34
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_36

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$135;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$135;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_35

    :cond_36
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$136;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$136;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_35
    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_RECRUITABLE_ARMY_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$137;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$137;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$138;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$138;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$139;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$139;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_AI_POTENTIAL_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$140;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$140;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$141;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$141;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$142;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$142;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_AI_DANGER_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$143;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$143;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$144;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$144;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$145;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$145;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_BALANCE_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$146;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$146;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$147;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$147;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$148;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$148;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    invoke-direct {p0, v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_TRUE_OWNERS_MODE:I

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$149;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$149;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v2, :cond_37

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$150;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$150;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_36

    :cond_37
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$151;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$151;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_36
    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v3, v2, :cond_38

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$152;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$152;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    goto :goto_37

    :cond_38
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$153;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$153;-><init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V

    :goto_37
    invoke-direct {p0, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_DISEASES_MODE:I

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_TECHNOLOGY_MODE:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->drawCivNamesOver:Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_IDEOLOGIES_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->drawCivNamesOver:Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_DIPLOMACY_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->drawCivNamesOver:Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_ALLIANCES_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->drawCivNamesOver:Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_IMPERIAL_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->drawCivNamesOver:Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_PROVINCE_STABILITY_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->drawCivNamesOver:Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_SUPPLIES_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->drawCivNamesOver:Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_BUILDINGS_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->drawCivNamesOver:Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_RECRUITABLE_ARMY_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->drawCivNamesOver:Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_ARMY_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->canMoveArmy:Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_POPULATION_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->canMoveArmy:Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_ECONOMY_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->canMoveArmy:Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_TERRAIN_TYPE_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->canMoveArmy:Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_GROWTH_RATE_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->canMoveArmy:Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_RECRUITABLE_ARMY_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->canMoveArmy:Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_LEVEL_OF_FORTIFICATIONS_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->canMoveArmy:Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_LEVEL_OF_WATCH_TOWER_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->canMoveArmy:Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_LEVEL_OF_PORT_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->canMoveArmy:Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_DEVELOPMENT_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->canMoveArmy:Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_REVOLUTION_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->canMoveArmy:Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_PROVINCE_VALUE_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->canMoveArmy:Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_PROVINCE_STABILITY_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->canMoveArmy:Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_SUPPLIES_MODE:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->canMoveArmy:Z

    return-void
.end method

.method private final addViewToTheGame(Lage/of/civilizations2/jakowski/lukasz/View_Type;Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;)I
    .locals 0

    iput-object p2, p1, Lage/of/civilizations2/jakowski/lukasz/View_Type;->oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;

    iput-object p3, p1, Lage/of/civilizations2/jakowski/lukasz/View_Type;->drawProvinces:Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method protected static final updateMaxBalance()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->ECONOMY_MAX:I

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getBalance(I)I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->ECONOMY_MAX:I

    if-le v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getBalance(I)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->ECONOMY_MAX:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected static final updateMaxDanger()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->ECONOMY_MAX:I

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDangerLevel()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->ECONOMY_MAX:I

    if-le v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDangerLevel()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->ECONOMY_MAX:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected static final updateMaxDistance()V
    .locals 4

    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->POPULATION_MAX:I

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v1

    if-gez v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getDistanceFromCapital(II)F

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->POPULATION_MAX:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getDistanceFromCapital(II)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->POPULATION_MAX:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method protected static final updateMaxEconomy()V
    .locals 3

    const/4 v0, 0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->ECONOMY_MAX:I

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->ECONOMY_MAX:I

    if-le v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getEconomy()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->ECONOMY_MAX:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->ECONOMY_MAX:I

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->ECONOMY_MAX:I

    return-void
.end method

.method protected static final updateMaxIncome()V
    .locals 5

    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->POPULATION_MAX:I

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getWasteland()I

    move-result v1

    if-gez v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getProvinceIncome_Taxation(I)F

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->iIncome_Taxation:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getProvinceIncome_Production(I)F

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->iIncome_Production:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game_NextTurnUpdate:Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getAdministration_Capital(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lage/of/civilizations2/jakowski/lukasz/Game_NextTurnUpdate;->getProvinceAdministration(II)F

    move-result v2

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Province;->iAdministrationCost:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBalance_LastTurn()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->POPULATION_MAX:I

    if-le v1, v2, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getBalance_LastTurn()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->POPULATION_MAX:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method protected static final updateMaxPopulation()V
    .locals 3

    const/4 v0, 0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->POPULATION_MAX:I

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->POPULATION_MAX:I

    if-le v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->POPULATION_MAX:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->POPULATION_MAX:I

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->POPULATION_MAX:I

    return-void
.end method

.method protected static final updateMaxPopulationOfCivilization(I)V
    .locals 3

    sput p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->POPULATION_OF_CIVID:I

    const/4 p0, 0x1

    sput p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->POPULATION_MAX:I

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->POPULATION_OF_CIVID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v0

    if-ge p0, v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->POPULATION_OF_CIVID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->POPULATION_OF_CIVID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->POPULATION_MAX:I

    if-le v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->POPULATION_OF_CIVID:I

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->POPULATION_MAX:I

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected static final updateMaxPotential()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->ECONOMY_MAX:I

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPotential()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->ECONOMY_MAX:I

    if-le v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPotential()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->ECONOMY_MAX:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected static final updateMaxRecruitable()V
    .locals 4

    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->ECONOMY_MAX:I

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getRecruitableArmy(II)I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->ECONOMY_MAX:I

    if-le v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getRecruitableArmy(II)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->ECONOMY_MAX:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected final clearData()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    return-void
.end method

.method protected final disableAllViews()V
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->iActiveViewID:I

    if-ltz v0, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->iActiveViewID:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/View_Type;->disableViewAction()V

    :cond_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->updateRenderer()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->updateDrawProvinces()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->updateDrawMoveUnits()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateBuildProvinceHoverInformation()V

    return-void
.end method

.method protected final getActiveView()Lage/of/civilizations2/jakowski/lukasz/View_Type;
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->iActiveViewID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    return-object v0
.end method

.method protected final getActiveViewID()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->iActiveViewID:I

    return v0
.end method

.method protected final setActiveViewID(I)V
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->iActiveViewID:I

    if-ne v1, p1, :cond_0

    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->iActiveViewID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->iActiveViewID:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/View_Type;->disableViewAction()V

    goto :goto_0

    :cond_0
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->iActiveViewID:I

    if-ltz v1, :cond_1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->iActiveViewID:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->iActiveViewID:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View_Type;->disableViewAction()V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/View_Type;->enableViewAction()V

    goto :goto_0

    :cond_1
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->iActiveViewID:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->lViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/View_Type;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/View_Type;->enableViewAction()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->iActiveViewID:I

    :goto_0
    iget p1, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->iActiveViewID:I

    if-ltz p1, :cond_2

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_FlagAction()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_FlagAction(Z)V

    :cond_2
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->updateRenderer()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->updateDrawProvinces()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->updateDrawMoveUnits()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateBuildProvinceHoverInformation()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-boolean p1, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSE:Z

    if-nez p1, :cond_3

    const/high16 p1, 0x3f400000    # 0.75f

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/RTS;->updateTimePast_AfterAction(F)V

    :cond_3
    return-void
.end method

.method protected final setActiveViewID(IZ)V
    .locals 0

    iput-boolean p2, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->viewConfig:Z

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->setActiveViewID(I)V

    return-void
.end method
