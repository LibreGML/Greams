.class Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_TerrainType_Add.java"


# instance fields
.field private iNameWidth:I

.field private sIconFileName:Ljava/lang/String;

.field private final sIconFileNameType:Ljava/lang/String;

.field private sName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 11

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const-string v0, ".png"

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->sIconFileNameType:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/Button_Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Game;-><init>(Ljava/lang/String;IIIZ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$1;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    sub-int v7, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v8, v1, v2

    const-string v3, ""

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$2;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int v5, v1, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIZ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$3;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v2, 0x42480000    # 50.0f

    mul-float v1, v1, v2

    float-to-int v4, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int v6, v1, v2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v3, ""

    const/4 v5, 0x0

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$4;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v6, v1, v2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$5;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x5

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v1, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v3, "-"

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$6;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v5, v1, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x5

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v7, v1, v2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v3, 0x0

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$7;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v5, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x5

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v1, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v3, "+"

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$8;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v1, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v3, "-"

    const/4 v5, 0x0

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$9;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v5, v1, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v7, v1, v2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v3, 0x0

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$10;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v5, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v1, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v3, "+"

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$11;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x8

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v1, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v3, "-"

    const/4 v5, 0x0

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$12;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v5, v1, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x8

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v7, v1, v2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v3, 0x0

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$13;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v5, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x6

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x8

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v1, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v3, "+"

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$14;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x7

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x9

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v1, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v3, "-"

    const/4 v5, 0x0

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$15;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v5, v1, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x7

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x9

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v7, v1, v2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v3, 0x0

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$16;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v5, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x7

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x9

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v1, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v3, "+"

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$16;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$17;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x8

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xa

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v1, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v3, "-"

    const/4 v5, 0x0

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$17;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$18;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v5, v1, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x8

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xa

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v7, v1, v2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v3, 0x0

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$18;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$19;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v5, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x8

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xa

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v1, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v3, "+"

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$19;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$20;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x7

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v1, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v3, "-"

    const/4 v5, 0x0

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$20;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$21;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v5, v1, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x7

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v7, v1, v2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v3, 0x0

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$21;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$22;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v5, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x5

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x7

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v1, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v3, "+"

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$22;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$23;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x9

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xb

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v1, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v3, "-"

    const/4 v5, 0x0

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$23;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$24;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v5, v1, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x9

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xb

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v7, v1, v2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v3, 0x0

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$24;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$25;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v5, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x9

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xb

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v1, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v3, "+"

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$25;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$26;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0xa

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xc

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v1, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v3, "-"

    const/4 v5, 0x0

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$26;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$27;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v5, v1, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0xa

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xc

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v7, v1, v2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v3, 0x0

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$27;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$28;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v5, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0xa

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xc

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v1, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v3, "+"

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add$28;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->updateLanguage()V

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->sName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;)I
    .locals 0

    iget p0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->iNameWidth:I

    return p0
.end method

.method static synthetic access$200(Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->sIconFileName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 8

    const/16 v0, 0x1194

    const-string v1, "terrain/"

    const-string v2, "UI/"

    const/4 v3, 0x3

    const-string v4, "%"

    const-string v5, "+"

    const-string v6, ""

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    sub-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    add-int/2addr p1, v7

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :pswitch_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    return-void

    :pswitch_2
    add-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    sub-int/2addr p1, v7

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :pswitch_3
    sub-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    add-int/2addr p1, v7

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :pswitch_4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v6

    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    return-void

    :pswitch_5
    add-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    sub-int/2addr p1, v7

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :pswitch_6
    sub-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    add-int/2addr p1, v7

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :pswitch_7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v5, v6

    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    return-void

    :pswitch_8
    add-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    sub-int/2addr p1, v7

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :pswitch_9
    sub-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    add-int/2addr p1, v7

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :pswitch_a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v2

    if-lez v2, :cond_3

    goto :goto_3

    :cond_3
    move-object v5, v6

    :goto_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    return-void

    :pswitch_b
    add-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    sub-int/2addr p1, v7

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :pswitch_c
    sub-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    add-int/2addr p1, v7

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :pswitch_d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_4

    :cond_4
    move-object v5, v6

    :goto_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    return-void

    :pswitch_e
    add-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    sub-int/2addr p1, v7

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :pswitch_f
    sub-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    add-int/2addr p1, v7

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :pswitch_10
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v2

    if-lez v2, :cond_5

    goto :goto_5

    :cond_5
    move-object v5, v6

    :goto_5
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    return-void

    :pswitch_11
    add-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    sub-int/2addr p1, v7

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :pswitch_12
    sub-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    add-int/2addr p1, v7

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :pswitch_13
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v2

    if-lez v2, :cond_6

    goto :goto_6

    :cond_6
    move-object v5, v6

    :goto_6
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    return-void

    :pswitch_14
    add-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    sub-int/2addr p1, v7

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :pswitch_15
    sub-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    add-int/2addr p1, v7

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :pswitch_16
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v2

    if-lez v2, :cond_7

    goto :goto_7

    :cond_7
    move-object v5, v6

    :goto_7
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    return-void

    :pswitch_17
    add-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result p1

    sub-int/2addr p1, v7

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void

    :pswitch_18
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->getVisible()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    goto :goto_8

    :cond_8
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setActiveRGBColor(FFF)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setPosX(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setPosY(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;->EDITOR_TERRAIN_COLOR:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;

    invoke-virtual {p1, v7, v0}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    :goto_8
    return-void

    :pswitch_19
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    return-void

    :pswitch_1a
    invoke-virtual {p0, v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->sName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_9
    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    goto/16 :goto_9

    :cond_a
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Saved"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    invoke-virtual {p0, v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->setName(Ljava/lang/String;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->setIconName(Ljava/lang/String;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->setDefensiveModifier(F)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->setMilitaryUpkeepModifier(F)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->setPopulationGrowthModifier(F)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->setEconomyGrowthModifier(F)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->setBuildCostModifier(F)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->setMovementCost(F)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->setBaseProvinceValue(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getCurrent()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->setBaseDevelopmentLevel(F)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->saveTerrainData()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->terrainTypesManager:Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/TerrainTypesManager;->loadTerrainTypes()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->onBackPressed()V

    :goto_9
    return-void

    :pswitch_1b
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard()V

    return-void

    :pswitch_1c
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->onBackPressed()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 3

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {p1, p2, p3, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawEditorTitle_Edge_R(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected onBackPressed()V
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getColorPicker()Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;->setVisible(ZLage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$PickerAction;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eTERRAIN_TYPES_EDITOR:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setBackAnimation(Z)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->updateDrawProvinces()V

    return-void
.end method

.method protected updateLanguage()V
    .locals 13

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "TerrainTypeName"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->sName:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->sName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->iNameWidth:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "IconName"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->sIconFileName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Back"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Save"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getIconName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Color"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "DefenseModifier"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v6, "MilitaryUpkeepModifier"

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v7, "PopulationGrowthModifier"

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v4, 0xf

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v8, "EconomyGrowthModifier"

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v5, 0x12

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v9, "BuildCostModifier"

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v6, 0x15

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v10, "MovementCostModifier"

    invoke-virtual {v9, v10}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v7, 0x18

    invoke-virtual {p0, v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v11, "BaseProvinceValue"

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v8, 0x1b

    invoke-virtual {p0, v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v12, "BaseDevelopmentLevel"

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getDefensiveModifier()F

    move-result v3

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v3, v3, v9

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getBuildCostModifier()F

    move-result v1

    mul-float v1, v1, v9

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getPopulationGrowthModifier()F

    move-result v1

    mul-float v1, v1, v9

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getEconomyGrowthModifier()F

    move-result v1

    mul-float v1, v1, v9

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getBuildCostModifier()F

    move-result v1

    mul-float v1, v1, v9

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getMovementCost()F

    move-result v1

    mul-float v1, v1, v9

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    invoke-virtual {p0, v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getBaseProvinceValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    invoke-virtual {p0, v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_TerrainType_Add;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorTerrain_Data2:Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Terrain_GameData3;->getBaseDevelopmentLevel()F

    move-result v1

    mul-float v1, v1, v9

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    return-void
.end method
