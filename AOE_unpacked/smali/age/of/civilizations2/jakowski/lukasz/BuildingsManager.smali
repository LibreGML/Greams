.class Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;
.super Ljava/lang/Object;
.source "BuildingsManager.java"


# static fields
.field protected static ACTIVE_BUILDING:Lage/of/civilizations2/jakowski/lukasz/Buildings; = null

.field private static final ARMOURY_BUILD_COST:[F

.field private static final ARMOURY_BUILD_MOVEMENT_COST:[I

.field private static final ARMOURY_CONSTRUCTION:[I

.field private static final ARMOURY_NAMES:[Ljava/lang/String;

.field private static final ARMOURY_TECH_LEVEL:[F

.field protected static final BONUS_CAPITAL_ATTACK_FROM_CAPITAL:I = 0xa

.field protected static final BONUS_CAPITAL_DEFENSE:I = 0xf

.field private static final BUNKER_BUILD_COST:[F

.field private static final BUNKER_BUILD_MOVEMENT_COST:[I

.field private static final BUNKER_CONSTRUCTION:[I

.field private static final BUNKER_DEFENSE_BONUS:[I

.field private static final BUNKER_MAINTENANCE_COST:[I = null

.field private static final BUNKER_NAMES:[Ljava/lang/String;

.field private static final BUNKER_TECH_LEVEL:[F

.field protected static final DESTROY_MOVEMENT_COST:I = 0x4

.field private static final FARM_BUILD_COST:[F

.field private static final FARM_BUILD_MOVEMENT_COST:[I

.field private static final FARM_CONSTRUCTION:[I

.field private static final FARM_GROWTH_RATE_BONUS:[F

.field private static final FARM_MAINTENANCE_COST:[I

.field private static final FARM_NAMES:[Ljava/lang/String;

.field private static final FARM_TECHNOLOGY_LEVEL:[F

.field private static final FORT_BUILD_COST:[F

.field private static final FORT_BUILD_MOVEMENT_COST:[I

.field private static final FORT_CONSTRUCTION:[I

.field private static final FORT_DEFENSE_BONUS:[I

.field private static final FORT_MAINTENANCE_COST:[I

.field private static final FORT_NAMES:[Ljava/lang/String;

.field private static final FORT_TECH_LEVEL:[F

.field private static final LIBRARY_BUILD_COST:[F

.field private static final LIBRARY_BUILD_MOVEMENT_COST:[I

.field private static final LIBRARY_CONSTRUCTION:[I

.field private static final LIBRARY_NAMES:[Ljava/lang/String;

.field private static final LIBRARY_RESEARCH_PER_POPULATION:[I

.field private static final LIBRARY_TECH_LEVEL:[F

.field private static final NUCLEAR_REACTOR_BUILD_COST:[F

.field private static final NUCLEAR_REACTOR_BUILD_MOVEMENT_COST:[I

.field private static final NUCLEAR_REACTOR_CONSTRUCTION:[I

.field private static final NUCLEAR_REACTOR_NAMES:[Ljava/lang/String;

.field private static final NUCLEAR_REACTOR_TECH_LEVEL:[F

.field private static final PORT_BUILD_COST:[F

.field private static final PORT_BUILD_MOVEMENT_COST:[I

.field private static final PORT_CONSTRUCTION:[I

.field private static final PORT_INCOME_PRODUCTION:[F

.field private static final PORT_MAINTENANCE_COST:[I

.field private static final PORT_NAMES:[Ljava/lang/String;

.field private static final PORT_TECHNOLOGY_LEVEL:[F

.field private static final SUPPLY_BONUS:[F

.field private static final SUPPLY_BUILD_COST:[F

.field private static final SUPPLY_BUILD_MOVEMENT_COST:[I

.field private static final SUPPLY_CONSTRUCTION:[I

.field private static final SUPPLY_NAMES:[Ljava/lang/String;

.field private static final SUPPLY_TECH_LEVEL:[F

.field private static final TOWER_BUILD_COST:[F

.field private static final TOWER_BUILD_MOVEMENT_COST:[I

.field private static final TOWER_CONSTRUCTION:[I

.field private static final TOWER_DEFENSE_BONUS:[I

.field private static final TOWER_MAINTENANCE_COST:[I

.field private static final TOWER_NAMES:[Ljava/lang/String;

.field private static final TOWER_TECHNOLOGY_LEVEL:[F

.field private static final WORKSHOP_BUILD_COST:[F

.field private static final WORKSHOP_BUILD_MOVEMENT_COST:[I

.field private static final WORKSHOP_CONSTRUCTION:[I

.field private static final WORKSHOP_INCOME_PRODUCTION:[F

.field private static final WORKSHOP_MAINTENANCE_COST:[I

.field private static final WORKSHOP_NAMES:[Ljava/lang/String;

.field private static final WORKSHOP_TECHNOLOGY_LEVEL:[F

.field public static fBuildArmoury:Z

.field public static fBuildBunker:Z

.field public static fBuildFarm:Z

.field public static fBuildFort:Z

.field public static fBuildLibrary:Z

.field public static fBuildNuclearReactor:Z

.field public static fBuildPort:Z

.field public static fBuildShaft:Z

.field public static fBuildSupply:Z

.field public static fBuildWatchTower:Z

.field public static fBuildWorkshop:Z

.field public static fDestroyArmoury:Z

.field public static fDestroyBunker:Z

.field public static fDestroyFarm:Z

.field public static fDestroyFort:Z

.field public static fDestroyLibrary:Z

.field public static fDestroyNuclearReactor:Z

.field public static fDestroyPort:Z

.field public static fDestroyShaft:Z

.field public static fDestroySupply:Z

.field public static fDestroyWatchTower:Z

.field public static fDestroyWorkshop:Z

.field protected static iBuildInProvinceID:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x10

    const/4 v5, 0x6

    const/16 v4, 0xb

    const/4 v3, 0x2

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fBuildFort:Z

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fBuildWatchTower:Z

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fBuildPort:Z

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fBuildShaft:Z

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fBuildFarm:Z

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fBuildWorkshop:Z

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fBuildLibrary:Z

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fBuildArmoury:Z

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fBuildSupply:Z

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fBuildNuclearReactor:Z

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fBuildBunker:Z

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fDestroyFort:Z

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fDestroyWatchTower:Z

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fDestroyPort:Z

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fDestroyShaft:Z

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fDestroyFarm:Z

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fDestroyWorkshop:Z

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fDestroyLibrary:Z

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fDestroyArmoury:Z

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fDestroySupply:Z

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fDestroyNuclearReactor:Z

    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fDestroyBunker:Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Buildings;->FORT:Lage/of/civilizations2/jakowski/lukasz/Buildings;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->ACTIVE_BUILDING:Lage/of/civilizations2/jakowski/lukasz/Buildings;

    sput v7, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->iBuildInProvinceID:I

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "Castle"

    aput-object v2, v0, v1

    const-string v1, "Fortress"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "Fortress1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Fortress2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Fortress3"

    aput-object v2, v0, v1

    const-string v1, "Fortress4"

    aput-object v1, v0, v5

    const/4 v1, 0x7

    const-string v2, "Fortress5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Fortress6"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Fortress7"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Fortress8"

    aput-object v2, v0, v1

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FORT_NAMES:[Ljava/lang/String;

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FORT_BUILD_COST:[F

    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FORT_BUILD_MOVEMENT_COST:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FORT_DEFENSE_BONUS:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FORT_MAINTENANCE_COST:[I

    new-array v0, v4, [F

    fill-array-data v0, :array_4

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FORT_TECH_LEVEL:[F

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FORT_CONSTRUCTION:[I

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "WatchTower"

    aput-object v2, v0, v1

    const-string v1, "WatchTower2"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "WatchTower3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "WatchTower4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "WatchTower5"

    aput-object v2, v0, v1

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->TOWER_NAMES:[Ljava/lang/String;

    new-array v0, v5, [F

    fill-array-data v0, :array_6

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->TOWER_BUILD_COST:[F

    new-array v0, v5, [I

    fill-array-data v0, :array_7

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->TOWER_BUILD_MOVEMENT_COST:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_8

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->TOWER_DEFENSE_BONUS:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_9

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->TOWER_MAINTENANCE_COST:[I

    new-array v0, v5, [F

    fill-array-data v0, :array_a

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->TOWER_TECHNOLOGY_LEVEL:[F

    new-array v0, v5, [I

    fill-array-data v0, :array_b

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->TOWER_CONSTRUCTION:[I

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "Port1"

    aput-object v2, v0, v1

    const-string v1, "Port2"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "Port3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Port4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Port5"

    aput-object v2, v0, v1

    const-string v1, "Port6"

    aput-object v1, v0, v5

    const/4 v1, 0x7

    const-string v2, "Port7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Port8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Port9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Port10"

    aput-object v2, v0, v1

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->PORT_NAMES:[Ljava/lang/String;

    new-array v0, v4, [F

    fill-array-data v0, :array_c

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->PORT_BUILD_COST:[F

    new-array v0, v4, [I

    fill-array-data v0, :array_d

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->PORT_BUILD_MOVEMENT_COST:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_e

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->PORT_MAINTENANCE_COST:[I

    new-array v0, v4, [F

    fill-array-data v0, :array_f

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->PORT_TECHNOLOGY_LEVEL:[F

    new-array v0, v4, [F

    fill-array-data v0, :array_10

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->PORT_INCOME_PRODUCTION:[F

    new-array v0, v4, [I

    fill-array-data v0, :array_11

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->PORT_CONSTRUCTION:[I

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "Farm1"

    aput-object v2, v0, v1

    const-string v1, "Farm2"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "Farm3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Farm4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Farm5"

    aput-object v2, v0, v1

    const-string v1, "Farm6"

    aput-object v1, v0, v5

    const/4 v1, 0x7

    const-string v2, "Farm7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Farm8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Farm9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Farm10"

    aput-object v2, v0, v1

    const-string v1, "Farm11"

    aput-object v1, v0, v4

    const/16 v1, 0xc

    const-string v2, "Farm12"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Farm13"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Farm14"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Farm15"

    aput-object v2, v0, v1

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FARM_NAMES:[Ljava/lang/String;

    new-array v0, v6, [F

    fill-array-data v0, :array_12

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FARM_BUILD_COST:[F

    new-array v0, v6, [I

    fill-array-data v0, :array_13

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FARM_BUILD_MOVEMENT_COST:[I

    new-array v0, v6, [F

    fill-array-data v0, :array_14

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FARM_GROWTH_RATE_BONUS:[F

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_15

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FARM_MAINTENANCE_COST:[I

    new-array v0, v6, [F

    fill-array-data v0, :array_16

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FARM_TECHNOLOGY_LEVEL:[F

    new-array v0, v6, [I

    fill-array-data v0, :array_17

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FARM_CONSTRUCTION:[I

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "Library"

    aput-object v2, v0, v1

    const-string v1, "University"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "ResearchLab"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Library1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Library2"

    aput-object v2, v0, v1

    const-string v1, "Library3"

    aput-object v1, v0, v5

    const/4 v1, 0x7

    const-string v2, "Library4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Library5"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Library6"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Library7"

    aput-object v2, v0, v1

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->LIBRARY_NAMES:[Ljava/lang/String;

    new-array v0, v4, [F

    fill-array-data v0, :array_18

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->LIBRARY_BUILD_COST:[F

    new-array v0, v4, [I

    fill-array-data v0, :array_19

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->LIBRARY_BUILD_MOVEMENT_COST:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->LIBRARY_RESEARCH_PER_POPULATION:[I

    new-array v0, v4, [F

    fill-array-data v0, :array_1b

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->LIBRARY_TECH_LEVEL:[F

    new-array v0, v4, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->LIBRARY_CONSTRUCTION:[I

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "Armoury"

    aput-object v2, v0, v1

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->ARMOURY_NAMES:[Ljava/lang/String;

    new-array v0, v3, [F

    fill-array-data v0, :array_1d

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->ARMOURY_BUILD_COST:[F

    new-array v0, v3, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->ARMOURY_BUILD_MOVEMENT_COST:[I

    new-array v0, v3, [F

    fill-array-data v0, :array_1f

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->ARMOURY_TECH_LEVEL:[F

    new-array v0, v3, [I

    fill-array-data v0, :array_20

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->ARMOURY_CONSTRUCTION:[I

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "NuclearReactor"

    aput-object v2, v0, v1

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->NUCLEAR_REACTOR_NAMES:[Ljava/lang/String;

    new-array v0, v3, [F

    fill-array-data v0, :array_21

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->NUCLEAR_REACTOR_BUILD_COST:[F

    new-array v0, v3, [I

    fill-array-data v0, :array_22

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->NUCLEAR_REACTOR_BUILD_MOVEMENT_COST:[I

    new-array v0, v3, [F

    fill-array-data v0, :array_23

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->NUCLEAR_REACTOR_TECH_LEVEL:[F

    new-array v0, v3, [I

    fill-array-data v0, :array_24

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->NUCLEAR_REACTOR_CONSTRUCTION:[I

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "Bunker"

    aput-object v2, v0, v1

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->BUNKER_NAMES:[Ljava/lang/String;

    new-array v0, v3, [F

    fill-array-data v0, :array_25

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->BUNKER_BUILD_COST:[F

    new-array v0, v3, [I

    fill-array-data v0, :array_26

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->BUNKER_BUILD_MOVEMENT_COST:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_27

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->BUNKER_DEFENSE_BONUS:[I

    new-array v0, v3, [F

    fill-array-data v0, :array_28

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->BUNKER_TECH_LEVEL:[F

    new-array v0, v3, [I

    fill-array-data v0, :array_29

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->BUNKER_CONSTRUCTION:[I

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "Workshop1"

    aput-object v2, v0, v1

    const-string v1, "Workshop2"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "Workshop3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Workshop4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Workshop5"

    aput-object v2, v0, v1

    const-string v1, "Workshop6"

    aput-object v1, v0, v5

    const/4 v1, 0x7

    const-string v2, "Workshop7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Workshop8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Workshop9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Workshop10"

    aput-object v2, v0, v1

    const-string v1, "Workshop11"

    aput-object v1, v0, v4

    const/16 v1, 0xc

    const-string v2, "Workshop12"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Workshop13"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Workshop14"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Workshop15"

    aput-object v2, v0, v1

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->WORKSHOP_NAMES:[Ljava/lang/String;

    new-array v0, v6, [F

    fill-array-data v0, :array_2a

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->WORKSHOP_BUILD_COST:[F

    new-array v0, v6, [I

    fill-array-data v0, :array_2b

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->WORKSHOP_BUILD_MOVEMENT_COST:[I

    new-array v0, v6, [F

    fill-array-data v0, :array_2c

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->WORKSHOP_INCOME_PRODUCTION:[F

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_2d

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->WORKSHOP_MAINTENANCE_COST:[I

    new-array v0, v6, [F

    fill-array-data v0, :array_2e

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->WORKSHOP_TECHNOLOGY_LEVEL:[F

    new-array v0, v6, [I

    fill-array-data v0, :array_2f

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->WORKSHOP_CONSTRUCTION:[I

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "SupplyCamp1"

    aput-object v2, v0, v1

    const-string v1, "SupplyCamp2"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "SupplyCamp3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SupplyCamp4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SupplyCamp5"

    aput-object v2, v0, v1

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->SUPPLY_NAMES:[Ljava/lang/String;

    new-array v0, v5, [F

    fill-array-data v0, :array_30

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->SUPPLY_BUILD_COST:[F

    new-array v0, v5, [I

    fill-array-data v0, :array_31

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->SUPPLY_BUILD_MOVEMENT_COST:[I

    new-array v0, v5, [F

    fill-array-data v0, :array_32

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->SUPPLY_TECH_LEVEL:[F

    new-array v0, v5, [I

    fill-array-data v0, :array_33

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->SUPPLY_CONSTRUCTION:[I

    new-array v0, v5, [F

    fill-array-data v0, :array_34

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->SUPPLY_BONUS:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3d4ccccd    # 0.05f
        0x3db126e9    # 0.0865f
        0x3e018937    # 0.1265f
        0x3eeed917    # 0.4665f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fb0a3d7    # 1.38f
        0x3fe3d70a    # 1.78f
        0x40000000    # 2.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xc
        0xe
        0x10
        0x12
        0x14
        0x18
        0x1c
        0x23
        0x29
        0x32
    .end array-data

    :array_2
    .array-data 4
        0x0
        0xa
        0x1e
        0x3c
        0x5a
        0x78
        0x96
        0xb4
        0xdc
        0xfa
        0x12c
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3c
        0x7d
        0xff
        0x1f4
        0x2ee
        0x384
        0x4b0
        0x5dc
        0x7d0
        0x9c4
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
        0x40200000    # 2.5f
        0x40600000    # 3.5f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x2
        0x5
        0xa
        0xf
        0x18
        0x1e
        0x26
        0x28
        0x32
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3d2e147b    # 0.0425f
        0x3da8f5c3    # 0.0825f
        0x3dfae148    # 0.1225f
        0x3e3df3b6    # 0.1855f
        0x3e7851ec    # 0.2425f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x10
        0x14
        0x1a
        0x1e
        0x24
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x4
        0x8
        0xf
        0x1e
        0x32
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x23
        0x3c
        0x64
        0xc8
        0xfa
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x2
        0x5
        0xa
        0x10
        0x16
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x3d8c49ba    # 0.0685f
        0x3e039581    # 0.1285f
        0x3e4ccccd    # 0.2f
        0x3e8978d5    # 0.2685f
        0x3eb26e98    # 0.3485f
        0x3ed74bc7    # 0.4205f
        0x3f118937    # 0.5685f
        0x3f2aa64c    # 0.6666f
        0x3f4ff2e5    # 0.8123f
        0x3f7ff972    # 0.9999f
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x10
        0x14
        0x19
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x3c
        0x82
        0xff
        0x22b
        0x2f5
        0x3e7
        0x513
        0x627
        0x7d3
        0x9fb
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f59999a    # 0.85f
        0x3fb33333    # 1.4f
        0x40000000    # 2.0f
        0x40200000    # 2.5f
        0x40400000    # 3.0f
        0x40700000    # 3.75f
        0x409c28f6    # 4.88f
        0x40b00000    # 5.5f
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3ee66666    # 0.45f
        0x3f2b851f    # 0.67f
        0x3f4ccccd    # 0.8f
        0x3f7d70a4    # 0.99f
        0x3fa00000    # 1.25f
        0x3fe00000    # 1.75f
        0x40100000    # 2.25f
        0x40500000    # 3.25f
        0x4091999a    # 4.55f
    .end array-data

    :array_11
    .array-data 4
        0x0
        0x1
        0x3
        0x5
        0x7
        0xc
        0x13
        0x1c
        0x23
        0x32
        0x64
    .end array-data

    :array_12
    .array-data 4
        0x0
        0x3ccccccc    # 0.024999999f
        0x3d4ccccc    # 0.049999997f
        0x3dcccccc    # 0.099999994f
        0x3e28f5c3    # 0.165f
        0x3e4ccccc    # 0.19999999f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
        0x40200000    # 2.5f
        0x40400000    # 3.0f
        0x40600000    # 3.5f
        0x40900000    # 4.5f
    .end array-data

    :array_13
    .array-data 4
        0x0
        0xe
        0x10
        0x12
        0x18
        0x1a
        0x28
        0x3c
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_14
    .array-data 4
        0x0
        0x3d4ccccd    # 0.05f
        0x3dcccccd    # 0.1f
        0x3e19999a    # 0.15f
        0x3e4ccccd    # 0.2f
        0x3e800000    # 0.25f
        0x3ecccccd    # 0.4f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fe00000    # 1.75f
        0x40100000    # 2.25f
        0x402a3d71    # 2.66f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a80000    # 5.25f
    .end array-data

    :array_15
    .array-data 4
        0x0
        0x23
        0x32
        0x37
        0x41
        0x4b
        0x7d
        0x4b
        0xc8
        0xc8
        0xc8
        0xc8
        0xc8
        0xc8
        0xc8
        0xc8
        0xc8
    .end array-data

    :array_16
    .array-data 4
        0x0
        0x3e19999a    # 0.15f
        0x3e99999a    # 0.3f
        0x3ecccccd    # 0.4f
        0x3f0ccccd    # 0.55f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
    .end array-data

    :array_17
    .array-data 4
        0x0
        0x1
        0x3
        0x6
        0x8
        0x9
        0xd
        0x10
        0x15
        0x15
        0x1a
        0x1e
        0x2a
        0x2d
        0x33
        0x4a
    .end array-data

    :array_18
    .array-data 4
        0x0
        0x3d4ccccc    # 0.049999997f
        0x3dcccccc    # 0.099999994f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fe00000    # 1.75f
        0x40200000    # 2.5f
        0x40800000    # 4.0f
        0x40b1999a    # 5.55f
    .end array-data

    :array_19
    .array-data 4
        0x0
        0xa
        0x10
        0x12
        0x16
        0x32
        0x4b
        0x63
        0x64
        0x7d
        0x96
    .end array-data

    :array_1a
    .array-data 4
        0x0
        0x2710
        0x1388
        0x3e8
        0x1f4
        0xfa
        0x64
        0x32
        0x19
        0xa
        0x1
    .end array-data

    :array_1b
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3f8ccccd    # 1.1f
        0x3f8ccccd    # 1.1f
        0x3f8ccccd    # 1.1f
        0x3f8ccccd    # 1.1f
        0x3f8ccccd    # 1.1f
    .end array-data

    :array_1c
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x8
        0x10
        0x14
        0x19
        0x23
        0x32
        0x4b
    .end array-data

    :array_1d
    .array-data 4
        0x0
        0x3e4ccccc    # 0.19999999f
    .end array-data

    :array_1e
    .array-data 4
        0x0
        0x1c
    .end array-data

    :array_1f
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
    .end array-data

    :array_20
    .array-data 4
        0x0
        0x4
    .end array-data

    :array_21
    .array-data 4
        0x0
        0x41200000    # 10.0f
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x140
    .end array-data

    :array_23
    .array-data 4
        0x0
        0x40000000    # 2.0f
    .end array-data

    :array_24
    .array-data 4
        0x0
        0xf
    .end array-data

    :array_25
    .array-data 4
        0x0
        0x3f266666    # 0.65f
    .end array-data

    :array_26
    .array-data 4
        0x0
        0xc
    .end array-data

    :array_27
    .array-data 4
        0x0
        0xf
    .end array-data

    :array_28
    .array-data 4
        0x0
        0x3f0ccccd    # 0.55f
    .end array-data

    :array_29
    .array-data 4
        0x0
        0x8
    .end array-data

    :array_2a
    .array-data 4
        0x0
        0x3ccccccc    # 0.024999999f
        0x3d4ccccc    # 0.049999997f
        0x3dcccccc    # 0.099999994f
        0x3e28f5c3    # 0.165f
        0x3e4ccccc    # 0.19999999f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
        0x40200000    # 2.5f
        0x40400000    # 3.0f
        0x40600000    # 3.5f
        0x40900000    # 4.5f
    .end array-data

    :array_2b
    .array-data 4
        0x0
        0xe
        0x10
        0x12
        0x18
        0x1a
        0x28
        0x3c
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_2c
    .array-data 4
        0x0
        0x3d4ccccd    # 0.05f
        0x3dcccccd    # 0.1f
        0x3e19999a    # 0.15f
        0x3e4ccccd    # 0.2f
        0x3e800000    # 0.25f
        0x3ecccccd    # 0.4f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fe00000    # 1.75f
        0x40100000    # 2.25f
        0x402a3d71    # 2.66f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a80000    # 5.25f
    .end array-data

    :array_2d
    .array-data 4
        0x0
        0x23
        0x32
        0x37
        0x41
        0x4b
        0x7d
        0x96
        0x96
        0x96
        0x96
        0x96
        0x96
        0x96
        0x96
        0x96
        0x96
    .end array-data

    :array_2e
    .array-data 4
        0x0
        0x3e19999a    # 0.15f
        0x3e99999a    # 0.3f
        0x3ecccccd    # 0.4f
        0x3f0ccccd    # 0.55f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
    .end array-data

    :array_2f
    .array-data 4
        0x0
        0x1
        0x3
        0x6
        0x8
        0x9
        0xc
        0x11
        0x14
        0x16
        0x19
        0x1f
        0x29
        0x2e
        0x32
        0x4b
    .end array-data

    :array_30
    .array-data 4
        0x0
        0x3d4ccccc    # 0.049999997f
        0x3dcccccc    # 0.099999994f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_31
    .array-data 4
        0x0
        0xa
        0x10
        0x12
        0x16
        0x32
    .end array-data

    :array_32
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
    .end array-data

    :array_33
    .array-data 4
        0x0
        0x2
        0x3
        0xd
        0x19
        0x32
    .end array-data

    :array_34
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3ee66666    # 0.45f
        0x3f333333    # 0.7f
        0x3f59999a    # 0.85f
        0x3f7d70a4    # 0.99f
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final buildArmoury(II)Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getArmoury_MaxLevel()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfArmoury(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Message_Bulit_Armoury;

    invoke-direct {v1, p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Message_Bulit_Armoury;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static final buildBunker(II)Z
    .locals 4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getBunker_MaxLevel()I

    move-result v2

    if-ge v1, v2, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfBunker(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateFogOfWar(I)V

    goto :goto_1

    :cond_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Message_Bulit_Bunker;

    invoke-direct {v2, p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Message_Bulit_Bunker;-><init>(II)V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    const/4 v1, 0x1

    :goto_2
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected static final buildFarm(II)Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_MaxLevel()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfFarm(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Message_Bulit_Farm;

    invoke-direct {v1, p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Message_Bulit_Farm;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static final buildFort(II)Z
    .locals 4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_MaxLevel()I

    move-result v2

    if-ge v1, v2, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfFort(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateFogOfWar(I)V

    goto :goto_1

    :cond_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Message_Bulit_Fort;

    invoke-direct {v2, p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Message_Bulit_Fort;-><init>(II)V

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    const/4 v1, 0x1

    :goto_2
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected static final buildLibrary(II)Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getLibrary_MaxLevel()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfLibrary(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Message_Bulit_Library;

    invoke-direct {v1, p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Message_Bulit_Library;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static final buildNuclearReactor(II)Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getNuclearReactor_MaxLevel()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfNuclearReactor(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Message_Bulit_NuclearReactor;

    invoke-direct {v1, p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Message_Bulit_NuclearReactor;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static final buildPort(II)Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_MaxLevel()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfPort(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Message_Bulit_Port;

    invoke-direct {v1, p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Message_Bulit_Port;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static final buildSupply(II)Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getSupply_MaxLevel()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfSupply(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Message_Bulit_Supply;

    invoke-direct {v1, p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Message_Bulit_Supply;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static final buildTower(II)Z
    .locals 5

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getTower_MaxLevel()I

    move-result v3

    if-ge v2, v3, :cond_3

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfWatchTower(I)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v3, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayersSize()I

    move-result v2

    if-ge v0, v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateFogOfWar(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v2

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Message_Bulit_Tower;

    invoke-direct {v3, p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Message_Bulit_Tower;-><init>(II)V

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    const/4 v2, 0x1

    :goto_2
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method protected static final buildWorkshop(II)Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_MaxLevel()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfWorkshop(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization;->civGameData:Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;

    iget v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/Save_Civ_GameData;->iNumOfBuildingsConstructed:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivilization_Diplomacy_GameData()Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;

    move-result-object v0

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Civilization_Diplomacy_GameData;->messageBox:Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Message_Bulit_Workshop;

    invoke-direct {v1, p1, p0}, Lage/of/civilizations2/jakowski/lukasz/Message_Bulit_Workshop;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MessageBox_GameData;->addMessage(Lage/of/civilizations2/jakowski/lukasz/Message;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static final canBuildArmoury(I)Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getArmoury_MaxLevel()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getArmoury_TechLevel(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getArmoury_BuildMovementCost(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static final canBuildBunker(I)Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getBunker_MaxLevel()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getBunker_TechLevel(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getBunker_BuildMovementCost(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static final canBuildFarm(I)Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_MaxLevel()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->canBuildFarm_Terrain(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_TechLevel(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_BuildMovementCost(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static final canBuildFarm_Terrain(I)Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getPopulationGrowth(I)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static final canBuildFort(I)Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_MaxLevel()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_TechLevel(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_BuildMovementCost(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static final canBuildLibrary(I)Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getLibrary_MaxLevel()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getLibrary_TechLevel(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getLibrary_BuildMovementCost(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static final canBuildNuclearReactor(I)Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getNuclearReactor_MaxLevel()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getNuclearReactor_TechLevel(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getNuclearReactor_BuildMovementCost(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static final canBuildPort(I)Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_MaxLevel()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_TechLevel(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_BuildMovementCost(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getNeighboringSeaProvincesSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static final canBuildSupply(I)Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getSupply_MaxLevel()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getSupply_TechLevel(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getSupply_BuildMovementCost(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static final canBuildTower(I)Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getTower_MaxLevel()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getTower_TechLevel(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getTower_BuildMovementCost(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static final canBuildWorkshop(I)Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_MaxLevel()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_TechLevel(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_BuildMovementCost(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static final constructArmoury(II)Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getArmoury_MaxLevel()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getArmoury_TechLevel(I)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getArmoury_BuildMovementCost(I)I

    move-result v2

    if-lt v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getArmoury_BuildCost(II)I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getArmoury_BuildMovementCost(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getArmoury_BuildCost(II)I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_Armoury;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getArmoury_Construction(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_Armoury;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addNewConstruction(Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static final constructBunker(II)Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getBunker_MaxLevel()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getBunker_TechLevel(I)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getBunker_BuildMovementCost(I)I

    move-result v2

    if-lt v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getBunker_BuildCost(II)I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getBunker_BuildMovementCost(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getBunker_BuildCost(II)I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_Bunker;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getBunker_Construction(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_Bunker;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addNewConstruction(Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static final constructFarm(II)Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_MaxLevel()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_TechLevel(I)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_BuildMovementCost(I)I

    move-result v2

    if-lt v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_BuildCost(II)I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_BuildMovementCost(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_BuildCost(II)I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_Farm;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_Construction(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_Farm;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addNewConstruction(Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static final constructFort(II)Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_MaxLevel()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_TechLevel(I)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_BuildMovementCost(I)I

    move-result v2

    if-lt v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_BuildCost(II)I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_BuildMovementCost(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_BuildCost(II)I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_Fort;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_Construction(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_Fort;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addNewConstruction(Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static final constructLibrary(II)Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getLibrary_MaxLevel()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getLibrary_TechLevel(I)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getLibrary_BuildMovementCost(I)I

    move-result v2

    if-lt v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getLibrary_BuildCost(II)I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getLibrary_BuildMovementCost(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getLibrary_BuildCost(II)I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_Library;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getLibrary_Construction(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_Library;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addNewConstruction(Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static final constructNuclearReactor(II)Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getNuclearReactor_MaxLevel()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getNuclearReactor_TechLevel(I)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getNuclearReactor_BuildMovementCost(I)I

    move-result v2

    if-lt v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getNuclearReactor_BuildCost(II)I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getNuclearReactor_BuildMovementCost(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getNuclearReactor_BuildCost(II)I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_NuclearReactor;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getNuclearReactor_Construction(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_NuclearReactor;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addNewConstruction(Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static final constructPort(II)Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v1

    if-ltz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_MaxLevel()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_TechLevel(I)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_BuildMovementCost(I)I

    move-result v2

    if-lt v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_BuildCost(II)I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_BuildMovementCost(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_BuildCost(II)I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getPort_Construction(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addNewConstruction(Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static final constructSupply(II)Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getSupply_MaxLevel()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getSupply_TechLevel(I)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getSupply_BuildMovementCost(I)I

    move-result v2

    if-lt v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getSupply_BuildCost(II)I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getSupply_BuildMovementCost(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getSupply_BuildCost(II)I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_Supply;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getSupply_Construction(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_Supply;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addNewConstruction(Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static final constructTower(II)Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getTower_MaxLevel()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getTower_TechLevel(I)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getTower_BuildMovementCost(I)I

    move-result v2

    if-lt v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getTower_BuildCost(II)I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getTower_BuildMovementCost(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getTower_BuildCost(II)I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_Tower;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getTower_Construction(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_Tower;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addNewConstruction(Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static final constructWorkshop(II)Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_MaxLevel()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_TechLevel(I)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_BuildMovementCost(I)I

    move-result v2

    if-lt v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_BuildCost(II)I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_BuildMovementCost(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_BuildCost(II)I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMoney(J)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_Workshop;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_Construction(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Construction_GameData_Workshop;-><init>(II)V

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->addNewConstruction(Lage/of/civilizations2/jakowski/lukasz/Construction_GameData;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static final destroyArmoury(II)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfArmoury(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static final destroyBunker(II)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfBunker(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static final destroyFarm(II)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfFarm(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static final destroyFort(II)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfFort(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static final destroyLibrary(II)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfLibrary(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static final destroyNuclearReactor(II)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfNuclearReactor(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static final destroyPort(II)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfPort(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static final destroySupply(II)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfSupply(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static final destroyTower(II)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v1

    if-lez v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfWatchTower(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getControlledByPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayerID_ByCivID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateFogOfWar(I)V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected static final destroyWorkshop(II)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setMovePoints(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->setLevelOfWorkshop(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static final getArmoury_BuildCost(II)I
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfArmoury()I

    move-result v3

    if-gtz v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->ARMOURY_BUILD_COST:[F

    aget v4, v4, p0

    const v5, 0x3cc08312    # 0.0235f

    int-to-float v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e99999a    # 0.3f

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v6

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getBuildCost(I)F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-float/2addr v4, v7

    mul-float/2addr v3, v4

    float-to-int v3, v3

    :goto_2
    return v3

    :catch_0
    move-exception v0

    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v3, :cond_2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method protected static final getArmoury_BuildMovementCost(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->ARMOURY_BUILD_MOVEMENT_COST:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getArmoury_Construction(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->ARMOURY_CONSTRUCTION:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getArmoury_MaxLevel()I
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->ARMOURY_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected static final getArmoury_Name(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->ARMOURY_NAMES:[Ljava/lang/String;

    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->ARMOURY_NAMES:[Ljava/lang/String;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->ARMOURY_NAMES:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method protected static final getArmoury_TechLevel(I)F
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->ARMOURY_TECH_LEVEL:[F

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getBunker_BuildCost(II)I
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v3

    if-gtz v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfBunker()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->BUNKER_BUILD_COST:[F

    aget v4, v4, p0

    const v5, 0x3b9ab29e    # 0.004721f

    int-to-float v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3ce147ae    # 0.0275f

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v6

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getBuildCost(I)F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-float/2addr v4, v7

    mul-float/2addr v3, v4

    float-to-int v3, v3

    :goto_2
    return v3

    :catch_0
    move-exception v0

    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v3, :cond_2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method protected static final getBunker_BuildMovementCost(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->BUNKER_BUILD_MOVEMENT_COST:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getBunker_Construction(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->BUNKER_CONSTRUCTION:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getBunker_DefenseBonus(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->BUNKER_DEFENSE_BONUS:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getBunker_MaitenanceCost(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->BUNKER_MAINTENANCE_COST:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getBunker_MaxLevel()I
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->BUNKER_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected static final getBunker_MaxLevel_CanBuild(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->BUNKER_TECH_LEVEL:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->BUNKER_TECH_LEVEL:[F

    aget v1, v1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    :goto_1
    return v1

    :cond_1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_MaxLevel()I

    move-result v1

    goto :goto_1
.end method

.method protected static final getBunker_Name(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->BUNKER_NAMES:[Ljava/lang/String;

    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->BUNKER_NAMES:[Ljava/lang/String;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->BUNKER_NAMES:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method protected static final getBunker_TechLevel(I)F
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->BUNKER_TECH_LEVEL:[F

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getFarm_BuildCost(II)I
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v3

    if-gtz v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFarm()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FARM_BUILD_COST:[F

    aget v4, v4, p0

    const v5, 0x3b0ce704    # 0.00215f

    int-to-float v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3c75c28f    # 0.015f

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v6

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getBuildCost(I)F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-float/2addr v4, v7

    mul-float/2addr v3, v4

    float-to-int v3, v3

    :goto_2
    return v3

    :catch_0
    move-exception v0

    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v3, :cond_2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method protected static final getFarm_BuildMovementCost(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FARM_BUILD_MOVEMENT_COST:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getFarm_Construction(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FARM_CONSTRUCTION:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getFarm_GrowthRateBonus(I)F
    .locals 3

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FARM_GROWTH_RATE_BONUS:[F

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FARM_GROWTH_RATE_BONUS:[F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FARM_GROWTH_RATE_BONUS:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    goto :goto_0
.end method

.method protected static final getFarm_MaitenanceCost(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FARM_MAINTENANCE_COST:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getFarm_MaxLevel()I
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FARM_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected static final getFarm_MaxLevel_CanBuild(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FARM_TECHNOLOGY_LEVEL:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FARM_TECHNOLOGY_LEVEL:[F

    aget v1, v1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    :goto_1
    return v1

    :cond_1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFarm_MaxLevel()I

    move-result v1

    goto :goto_1
.end method

.method protected static final getFarm_Name(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FARM_NAMES:[Ljava/lang/String;

    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FARM_NAMES:[Ljava/lang/String;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FARM_NAMES:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method protected static final getFarm_TechLevel(I)F
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FARM_TECHNOLOGY_LEVEL:[F

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getFort_BuildCost(II)I
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v3

    if-gtz v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfFort()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FORT_BUILD_COST:[F

    aget v4, v4, p0

    const v5, 0x3b9ab29e    # 0.004721f

    int-to-float v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3ce147ae    # 0.0275f

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v6

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getBuildCost(I)F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-float/2addr v4, v7

    mul-float/2addr v3, v4

    float-to-int v3, v3

    :goto_2
    return v3

    :catch_0
    move-exception v0

    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v3, :cond_2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method protected static final getFort_BuildMovementCost(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FORT_BUILD_MOVEMENT_COST:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getFort_Construction(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FORT_CONSTRUCTION:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getFort_DefenseBonus(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FORT_DEFENSE_BONUS:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getFort_MaitenanceCost(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FORT_MAINTENANCE_COST:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getFort_MaxLevel()I
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FORT_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected static final getFort_MaxLevel_CanBuild(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FORT_TECH_LEVEL:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FORT_TECH_LEVEL:[F

    aget v1, v1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    :goto_1
    return v1

    :cond_1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getFort_MaxLevel()I

    move-result v1

    goto :goto_1
.end method

.method protected static final getFort_Name(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FORT_NAMES:[Ljava/lang/String;

    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FORT_NAMES:[Ljava/lang/String;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FORT_NAMES:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method protected static final getFort_TechLevel(I)F
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->FORT_TECH_LEVEL:[F

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getLibrary_BuildCost(II)I
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v3

    if-gtz v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfLibrary()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->LIBRARY_BUILD_COST:[F

    aget v4, v4, p0

    const v5, 0x3b8b4396    # 0.00425f

    int-to-float v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e0a3d71    # 0.135f

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v6

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getBuildCost(I)F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-float/2addr v4, v7

    mul-float/2addr v3, v4

    float-to-int v3, v3

    :goto_2
    return v3

    :catch_0
    move-exception v0

    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v3, :cond_2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method protected static final getLibrary_BuildMovementCost(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->LIBRARY_BUILD_MOVEMENT_COST:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getLibrary_Construction(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->LIBRARY_CONSTRUCTION:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getLibrary_MaxLevel()I
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->LIBRARY_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected static final getLibrary_MaxLevel_CanBuild(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->LIBRARY_TECH_LEVEL:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->LIBRARY_TECH_LEVEL:[F

    aget v1, v1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    :goto_1
    return v1

    :cond_1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getLibrary_MaxLevel()I

    move-result v1

    goto :goto_1
.end method

.method protected static final getLibrary_Name(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->LIBRARY_NAMES:[Ljava/lang/String;

    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->LIBRARY_NAMES:[Ljava/lang/String;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->LIBRARY_NAMES:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method protected static final getLibrary_ResearchPerPopulation(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->LIBRARY_RESEARCH_PER_POPULATION:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getLibrary_TechLevel(I)F
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->LIBRARY_TECH_LEVEL:[F

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getNuclearReactor_BuildCost(II)I
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfNuclearReactor()I

    move-result v3

    if-gtz v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->NUCLEAR_REACTOR_BUILD_COST:[F

    aget v4, v4, p0

    const v5, 0x3cc08312    # 0.0235f

    int-to-float v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e99999a    # 0.3f

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v6

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getBuildCost(I)F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-float/2addr v4, v7

    mul-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    :goto_2
    return v3

    :catch_0
    move-exception v0

    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v3, :cond_2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method protected static final getNuclearReactor_BuildMovementCost(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->NUCLEAR_REACTOR_BUILD_MOVEMENT_COST:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getNuclearReactor_Construction(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->NUCLEAR_REACTOR_CONSTRUCTION:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getNuclearReactor_MaxLevel()I
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->NUCLEAR_REACTOR_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected static final getNuclearReactor_Name(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->NUCLEAR_REACTOR_NAMES:[Ljava/lang/String;

    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->NUCLEAR_REACTOR_NAMES:[Ljava/lang/String;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->NUCLEAR_REACTOR_NAMES:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method protected static final getNuclearReactor_TechLevel(I)F
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->NUCLEAR_REACTOR_TECH_LEVEL:[F

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getPort_BuildCost(II)I
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfPort()I

    move-result v3

    if-gtz v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->PORT_BUILD_COST:[F

    aget v4, v4, p0

    const v5, 0x3b54fdf4    # 0.00325f

    int-to-float v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3c75c28f    # 0.015f

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v6

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getBuildCost(I)F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-float/2addr v4, v7

    mul-float/2addr v3, v4

    float-to-int v3, v3

    :goto_2
    return v3

    :catch_0
    move-exception v0

    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v3, :cond_2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method protected static final getPort_BuildMovementCost(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->PORT_BUILD_MOVEMENT_COST:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getPort_Construction(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->PORT_CONSTRUCTION:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getPort_IncomeProduction(I)F
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->PORT_INCOME_PRODUCTION:[F

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getPort_MaitenanceCost(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->PORT_MAINTENANCE_COST:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getPort_MaxLevel()I
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->PORT_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected static final getPort_Name(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->PORT_NAMES:[Ljava/lang/String;

    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->PORT_NAMES:[Ljava/lang/String;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->PORT_NAMES:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method protected static final getPort_TechLevel(I)F
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->PORT_TECHNOLOGY_LEVEL:[F

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getSupply_Bonus(I)F
    .locals 3

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->SUPPLY_BONUS:[F

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->SUPPLY_BONUS:[F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->SUPPLY_BONUS:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    goto :goto_0
.end method

.method protected static final getSupply_BuildCost(II)I
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfSupply()I

    move-result v3

    if-gtz v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->SUPPLY_BUILD_COST:[F

    aget v4, v4, p0

    const v5, 0x3c3c6a7f    # 0.0115f

    int-to-float v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e99999a    # 0.3f

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v6

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getBuildCost(I)F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-float/2addr v4, v7

    mul-float/2addr v3, v4

    float-to-int v3, v3

    :goto_2
    return v3

    :catch_0
    move-exception v0

    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v3, :cond_2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method protected static final getSupply_BuildMovementCost(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->SUPPLY_BUILD_MOVEMENT_COST:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getSupply_Construction(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->SUPPLY_CONSTRUCTION:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getSupply_MaxLevel()I
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->SUPPLY_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected static final getSupply_Name(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->SUPPLY_NAMES:[Ljava/lang/String;

    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->SUPPLY_NAMES:[Ljava/lang/String;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->SUPPLY_NAMES:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method protected static final getSupply_TechLevel(I)F
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->SUPPLY_TECH_LEVEL:[F

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getTower_BuildCost(II)I
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWatchTower()I

    move-result v3

    if-gtz v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->TOWER_BUILD_COST:[F

    aget v4, v4, p0

    const v5, 0x3bae2110    # 0.005314f

    int-to-float v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3c23d70a    # 0.01f

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v6

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getBuildCost(I)F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-float/2addr v4, v7

    mul-float/2addr v3, v4

    float-to-int v3, v3

    :goto_2
    return v3

    :catch_0
    move-exception v0

    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v3, :cond_2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method protected static final getTower_BuildMovementCost(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->TOWER_BUILD_MOVEMENT_COST:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getTower_Construction(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->TOWER_CONSTRUCTION:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getTower_DefenseBonus(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->TOWER_DEFENSE_BONUS:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getTower_MaitenanceCost(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->TOWER_MAINTENANCE_COST:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getTower_MaxLevel()I
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->TOWER_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected static final getTower_MaxLevel_CanBuild(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->TOWER_TECHNOLOGY_LEVEL:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->TOWER_TECHNOLOGY_LEVEL:[F

    aget v1, v1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    :goto_1
    return v1

    :cond_1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getTower_MaxLevel()I

    move-result v1

    goto :goto_1
.end method

.method protected static final getTower_Name(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->TOWER_NAMES:[Ljava/lang/String;

    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->TOWER_NAMES:[Ljava/lang/String;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->TOWER_NAMES:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method protected static final getTower_TechLevel(I)F
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->TOWER_TECHNOLOGY_LEVEL:[F

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getWorkshop_BuildCost(II)I
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v3

    if-gtz v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getLevelOfWorkshop()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->WORKSHOP_BUILD_COST:[F

    aget v4, v4, p0

    const v5, 0x3b2f4f0e    # 0.002675f

    int-to-float v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenario_StartingPopulation()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3ccccccd    # 0.025f

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Province;->getDevelopmentLevel()F

    move-result v6

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getTerrainTypeID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->getBuildCost(I)F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-float/2addr v4, v7

    mul-float/2addr v3, v4

    float-to-int v3, v3

    :goto_2
    return v3

    :catch_0
    move-exception v0

    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v3, :cond_2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method protected static final getWorkshop_BuildMovementCost(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->WORKSHOP_BUILD_MOVEMENT_COST:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getWorkshop_Construction(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->WORKSHOP_CONSTRUCTION:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getWorkshop_IncomeProduction(I)F
    .locals 3

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->WORKSHOP_INCOME_PRODUCTION:[F

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->WORKSHOP_INCOME_PRODUCTION:[F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->WORKSHOP_INCOME_PRODUCTION:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    goto :goto_0
.end method

.method protected static final getWorkshop_MaitenanceCost(I)I
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->WORKSHOP_MAINTENANCE_COST:[I

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static final getWorkshop_MaxLevel()I
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->WORKSHOP_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected static final getWorkshop_MaxLevel_CanBuild(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->WORKSHOP_TECHNOLOGY_LEVEL:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->WORKSHOP_TECHNOLOGY_LEVEL:[F

    aget v1, v1, v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getTechnologyLevel()F

    move-result v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    :goto_1
    return v1

    :cond_1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->getWorkshop_MaxLevel()I

    move-result v1

    goto :goto_1
.end method

.method protected static final getWorkshop_Name(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->WORKSHOP_NAMES:[Ljava/lang/String;

    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->WORKSHOP_NAMES:[Ljava/lang/String;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->WORKSHOP_NAMES:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method protected static final getWorkshop_TechLevel(I)F
    .locals 2

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->WORKSHOP_TECHNOLOGY_LEVEL:[F

    aget v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
