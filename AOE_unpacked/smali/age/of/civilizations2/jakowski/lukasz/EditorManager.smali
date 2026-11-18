.class Lage/of/civilizations2/jakowski/lukasz/EditorManager;
.super Ljava/lang/Object;
.source "EditorManager.java"


# static fields
.field protected static GROWTH_RATE:I = -0x1

.field protected static LEVEL_OF_PORT:I = -0x1

.field protected static NEIGHBORING_PROVINCES:I = -0x1

.field protected static PROVINCE_CONTINENTS:I = -0x1

.field protected static PROVINCE_MAP_REGIONS:I = -0x1

.field protected static PROVINCE_PIXMAP:I = -0x1

.field protected static PROVINCE_REGIONS:I = -0x1

.field protected static SHIFT_ARMY:I = -0x1

.field protected static SHIFT_PORT:I = -0x1

.field protected static TERRAIN_TYPE:I = -0x1

.field protected static WASTELAND:I = -0x1


# instance fields
.field private inUseID:I

.field private lEditors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Editor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->lEditors:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->inUseID:I

    return-void
.end method

.method private final addEditor(Lage/of/civilizations2/jakowski/lukasz/Editor;)I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->lEditors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->lEditors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method


# virtual methods
.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->inUseID:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->lEditors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Editor;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Editor;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_0
    return-void
.end method

.method protected final keyDown(I)Z
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->inUseID:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->lEditors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Editor;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Editor;->keyDown(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final keyUp(I)Z
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->inUseID:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->lEditors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Editor;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Editor;->keyUp(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final resetInUseEditors()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->lEditors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->lEditors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Editor;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Editor;->setInUse(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->inUseID:I

    return-void
.end method

.method protected final setInUse(Lage/of/civilizations2/jakowski/lukasz/Editors;)V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/EditorManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Editors:[I

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Editors;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sget p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->NEIGHBORING_PROVINCES:I

    if-gez p1, :cond_0

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;

    invoke-direct {p1}, Lage/of/civilizations2/jakowski/lukasz/Editor_NeighboringProvinces;-><init>()V

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->addEditor(Lage/of/civilizations2/jakowski/lukasz/Editor;)I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->NEIGHBORING_PROVINCES:I

    :cond_0
    sget p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->NEIGHBORING_PROVINCES:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->inUseID:I

    goto/16 :goto_0

    :pswitch_1
    sget p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->GROWTH_RATE:I

    if-gez p1, :cond_1

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Editor_GrowthRate;

    invoke-direct {p1}, Lage/of/civilizations2/jakowski/lukasz/Editor_GrowthRate;-><init>()V

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->addEditor(Lage/of/civilizations2/jakowski/lukasz/Editor;)I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->GROWTH_RATE:I

    :cond_1
    sget p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->GROWTH_RATE:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->inUseID:I

    goto/16 :goto_0

    :pswitch_2
    sget p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->PROVINCE_MAP_REGIONS:I

    if-gez p1, :cond_2

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;

    invoke-direct {p1}, Lage/of/civilizations2/jakowski/lukasz/Editor_MapRegions;-><init>()V

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->addEditor(Lage/of/civilizations2/jakowski/lukasz/Editor;)I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->PROVINCE_MAP_REGIONS:I

    :cond_2
    sget p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->PROVINCE_MAP_REGIONS:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->inUseID:I

    goto/16 :goto_0

    :pswitch_3
    sget p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->PROVINCE_REGIONS:I

    if-gez p1, :cond_3

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Editor_Regions;

    invoke-direct {p1}, Lage/of/civilizations2/jakowski/lukasz/Editor_Regions;-><init>()V

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->addEditor(Lage/of/civilizations2/jakowski/lukasz/Editor;)I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->PROVINCE_REGIONS:I

    :cond_3
    sget p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->PROVINCE_REGIONS:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->inUseID:I

    goto/16 :goto_0

    :pswitch_4
    sget p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->PROVINCE_CONTINENTS:I

    if-gez p1, :cond_4

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Editor_Continents;

    invoke-direct {p1}, Lage/of/civilizations2/jakowski/lukasz/Editor_Continents;-><init>()V

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->addEditor(Lage/of/civilizations2/jakowski/lukasz/Editor;)I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->PROVINCE_CONTINENTS:I

    :cond_4
    sget p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->PROVINCE_CONTINENTS:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->inUseID:I

    goto/16 :goto_0

    :pswitch_5
    sget p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->PROVINCE_PIXMAP:I

    if-gez p1, :cond_5

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;

    invoke-direct {p1}, Lage/of/civilizations2/jakowski/lukasz/Editor_ProvinceTexture;-><init>()V

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->addEditor(Lage/of/civilizations2/jakowski/lukasz/Editor;)I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->PROVINCE_PIXMAP:I

    :cond_5
    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->lEditors:Ljava/util/List;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->PROVINCE_PIXMAP:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Editor;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Editor;->setInUse(Z)V

    sget p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->PROVINCE_PIXMAP:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->inUseID:I

    goto :goto_0

    :pswitch_6
    sget p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->LEVEL_OF_PORT:I

    if-gez p1, :cond_6

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Editor_LevelOfPort;

    invoke-direct {p1}, Lage/of/civilizations2/jakowski/lukasz/Editor_LevelOfPort;-><init>()V

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->addEditor(Lage/of/civilizations2/jakowski/lukasz/Editor;)I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->LEVEL_OF_PORT:I

    :cond_6
    sget p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->LEVEL_OF_PORT:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->inUseID:I

    goto :goto_0

    :pswitch_7
    sget p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->SHIFT_PORT:I

    if-gez p1, :cond_7

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Editor_ShiftPort;

    invoke-direct {p1}, Lage/of/civilizations2/jakowski/lukasz/Editor_ShiftPort;-><init>()V

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->addEditor(Lage/of/civilizations2/jakowski/lukasz/Editor;)I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->SHIFT_PORT:I

    :cond_7
    sget p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->SHIFT_PORT:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->inUseID:I

    goto :goto_0

    :pswitch_8
    sget p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->SHIFT_ARMY:I

    if-gez p1, :cond_8

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Editor_ShiftArmy;

    invoke-direct {p1}, Lage/of/civilizations2/jakowski/lukasz/Editor_ShiftArmy;-><init>()V

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->addEditor(Lage/of/civilizations2/jakowski/lukasz/Editor;)I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->SHIFT_ARMY:I

    :cond_8
    sget p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->SHIFT_ARMY:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->inUseID:I

    goto :goto_0

    :pswitch_9
    sget p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->TERRAIN_TYPE:I

    if-gez p1, :cond_9

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Editor_TerrainType;

    invoke-direct {p1}, Lage/of/civilizations2/jakowski/lukasz/Editor_TerrainType;-><init>()V

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->addEditor(Lage/of/civilizations2/jakowski/lukasz/Editor;)I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->TERRAIN_TYPE:I

    :cond_9
    sget p1, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->TERRAIN_TYPE:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->inUseID:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method protected touchDown(IIII)V
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->inUseID:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->lEditors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Editor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Editor;->touchDown(IIII)V

    :cond_0
    return-void
.end method

.method protected touchDragged(III)V
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->inUseID:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->lEditors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Editor;

    invoke-virtual {v0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Editor;->touchDragged(III)V

    :cond_0
    return-void
.end method

.method protected touchUp(IIII)V
    .locals 2

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->inUseID:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->lEditors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Editor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Editor;->touchUp(IIII)V

    :cond_0
    return-void
.end method
