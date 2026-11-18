.class Lage/of/civilizations2/jakowski/lukasz/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected final CITIES_DEFAULT_FONT_SIZE:I

.field protected CITIES_FONT_SCALE:F

.field protected CIVILIZATIONS_NAMES_INTERVAL:I

.field protected CIV_NAMES_MIN_SCALE_OF_FONT:F

.field protected COLOR_PROVINCE_BG_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field protected COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field protected COLOR_PROVINCE_DISCOVERY_ALPHA:F

.field protected CONFIRM_END_TURN:Z

.field protected CONFIRM_NEXT_PLAYER_TURN:Z

.field protected CONFIRM_NO_ORDERS:Z

.field protected CONTINUOUS_RENDERING:Z

.field protected DRAW_CIVILIZATIONS_NAMES_OVER_PRPOVINCES_IN_GAME:Z

.field protected DRAW_MOVE_UNITS_ARMY_IN_EVERYSINGLE_PROVINCE:Z

.field protected ENABLE_INNER_BORDERS:Z

.field protected FONT_ARMY_SIZE:I

.field protected FONT_BORDER_SIZE:I

.field protected FONT_BORDER_WIDTH_OF_BORDER:I

.field protected FONT_MAIN_SIZE:I

.field protected GRAPH_DATA_LIMIT_PLAYER_DATA:I

.field protected GRAPH_DATA_LIMIT_POPULATION:I

.field protected GRAPH_DATA_LIMIT_PROVINCES:I

.field protected GRAPH_DATA_LIMIT_RANK:I

.field protected GRAPH_DATA_LIMIT_TECH_LEVEL:I

.field protected LANGUAGE_TAG:Ljava/lang/String;

.field protected OCCUPIED_PROVINCE_ALPHA:I

.field protected OCCUPIED_STRIPES_SIZE:F

.field protected PERCETANGE_OF_CITIES_ON_MAP:I

.field protected PROVINCE_ALPHA:I

.field protected PROVINCE_ALPHA_WASTELAND:F

.field protected STOP_SCALING_ARMY:F

.field protected TURNS_BETWEEN_AUTOSAVE:I

.field protected VOLUME_MASTER:F

.field protected VOLUME_MUSIC:F

.field protected VOLUME_SOUNDS:F

.field protected civNamesFontColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field protected civNamesFontColorBorder:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field protected civNamesFontColorBorder_ALPHA:F

.field protected civNamesFontColor_ALPHA:F

.field protected gameRated:Z

.field protected loadCursor:Z

.field protected randomLeaders:Z

.field protected sHighlightLine:Ljava/lang/String;

.field protected sMoveLine:Ljava/lang/String;

.field protected showNextPlayerView:Z

.field protected showOrderOfMovesView:Z


# direct methods
.method constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->LANGUAGE_TAG:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_MAIN_SIZE:I

    const/16 v1, 0x24

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_BORDER_SIZE:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_ARMY_SIZE:I

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->VOLUME_MUSIC:F

    const v0, 0x3f0ccccd    # 0.55f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->VOLUME_SOUNDS:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->VOLUME_MASTER:F

    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_BORDER_WIDTH_OF_BORDER:I

    const/16 v1, 0x64

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->OCCUPIED_PROVINCE_ALPHA:I

    const/high16 v2, 0x40000000    # 2.0f

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->OCCUPIED_STRIPES_SIZE:F

    const/4 v3, 0x0

    # Restore province inner borders (was disabled by perf patch)
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->ENABLE_INNER_BORDERS:Z

    # Restore full move/recruit army badges (Game$17). Sparse Game$19 hid pending armies.
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->DRAW_MOVE_UNITS_ARMY_IN_EVERYSINGLE_PROVINCE:Z

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CONFIRM_END_TURN:Z

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CONFIRM_NO_ORDERS:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CONFIRM_NEXT_PLAYER_TURN:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->DRAW_CIVILIZATIONS_NAMES_OVER_PRPOVINCES_IN_GAME:Z

    # Restore full city labels (was 10% from perf patch)
    const/16 v0, 0x64

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PERCETANGE_OF_CITIES_ON_MAP:I

    const/16 v0, 0x32

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->TURNS_BETWEEN_AUTOSAVE:I

    # Keep rendering during load so InitGame/LoadMap ticks every frame
    const/4 v4, 0x1

    iput-boolean v4, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CONTINUOUS_RENDERING:Z

    const v4, 0x3eb33333    # 0.35f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CITIES_FONT_SCALE:F

    const/16 v4, 0xa

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CITIES_DEFAULT_FONT_SIZE:I

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;-><init>(FFF)V

    iput-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    const v4, 0x3f59999a    # 0.85f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColor_ALPHA:F

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    const v5, 0x3f147ae1    # 0.58f

    invoke-direct {v4, v5, v5, v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;-><init>(FFF)V

    iput-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColorBorder:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    const v4, 0x3ee66666    # 0.45f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->civNamesFontColorBorder_ALPHA:F

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CIV_NAMES_MIN_SCALE_OF_FONT:F

    const/16 v4, 0x3e8

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    const v5, 0x3f49c9ca

    const v6, 0x3f25a5a6

    const v7, 0x3f038384

    invoke-direct {v4, v5, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;-><init>(FFF)V

    iput-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_BG_WASTELAND:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    const v4, 0x3e4ccccd    # 0.2f

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->PROVINCE_ALPHA_WASTELAND:F

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    const v5, 0x3df0f0f1

    const v6, 0x3d20a0a1

    invoke-direct {v4, v6, v6, v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;-><init>(FFF)V

    iput-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->COLOR_PROVINCE_DISCOVERY_ALPHA:F

    const-string v4, "default"

    iput-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->sMoveLine:Ljava/lang/String;

    const-string v4, "62"

    iput-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->sHighlightLine:Ljava/lang/String;

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->GRAPH_DATA_LIMIT_PROVINCES:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->GRAPH_DATA_LIMIT_POPULATION:I

    const/16 v4, 0x4b

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->GRAPH_DATA_LIMIT_RANK:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->GRAPH_DATA_LIMIT_TECH_LEVEL:I

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->GRAPH_DATA_LIMIT_PLAYER_DATA:I

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->STOP_SCALING_ARMY:F

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->showNextPlayerView:Z

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->showOrderOfMovesView:Z

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->loadCursor:Z

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->gameRated:Z

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->randomLeaders:Z

    return-void
.end method


# virtual methods
.method protected final updateCitiesFontScale()V
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_MAIN_SIZE:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v1, v0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CITIES_FONT_SCALE:F

    return-void
.end method
