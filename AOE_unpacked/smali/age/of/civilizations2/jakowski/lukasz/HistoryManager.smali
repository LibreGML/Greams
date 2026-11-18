.class Lage/of/civilizations2/jakowski/lukasz/HistoryManager;
.super Ljava/lang/Object;
.source "HistoryManager.java"


# static fields
.field protected static HISTORY_LIMIT:I

.field protected static lHistoryDates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static lHistoryDatesWidth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->lHistoryDates:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->lHistoryDatesWidth:Ljava/util/List;

    const/16 v0, 0xc8

    sput v0, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->HISTORY_LIMIT:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lHistory:Ljava/util/List;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->addNewTurn()V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_war:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_war:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->getImageScale(I)F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->ICON_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->ICON_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_war:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_truce:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->getImageScale(I)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    if-ge v0, v1, :cond_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_war:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_truce:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->getImageScale(I)F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->ICON_WIDTH:I

    :cond_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->ICON_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_war:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_alliance:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->getImageScale(I)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    if-ge v0, v1, :cond_1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_war:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->diplo_alliance:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->getImageScale(I)F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->ICON_WIDTH:I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeologiesSize()I

    move-result v1

    if-ge v0, v1, :cond_3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->ICON_WIDTH:I

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getiCrownVassalImage()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->getImageScale_CrownVassal(I)F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    if-ge v1, v2, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Ideology;->getiCrownVassalImage()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->getImageScale_CrownVassal(I)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->ICON_WIDTH:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sget v0, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->ICON_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->ICON_WIDTH:I

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xc8

    goto :goto_1

    :cond_4
    const/16 v0, 0x32

    :goto_1
    sput v0, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->HISTORY_LIMIT:I

    return-void
.end method

.method protected static final buildHistoryDates()V
    .locals 6

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->clearHistoryDates()V

    const/4 v0, 0x1

    :goto_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->TURN_ID:I

    if-ge v0, v1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->lHistoryDates:Ljava/util/List;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getDate_ByTurnID(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->lHistoryDates:Ljava/util/List;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->getCurrentDate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->lHistoryDates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->lHistoryDates:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->lHistoryDatesWidth:Ljava/util/List;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    const v4, 0x3f333333    # 0.7f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected static final clearHistoryDates()V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->lHistoryDates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->lHistoryDatesWidth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method protected final addHistory(ILage/of/civilizations2/jakowski/lukasz/HistoryLog;)V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final addHistoryLog(Lage/of/civilizations2/jakowski/lukasz/HistoryLog;)V
    .locals 2

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lHistory:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisibleInGame_History()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_History()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected final addNewTurn()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->HISTORY_LIMIT:I

    if-le v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lHistory:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected final clearHistory()V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected final getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    return-object p1
.end method

.method protected final getHistorySize()I
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getHistoryTurnSize(I)I
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method protected final haveHistory()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final updateLanguage()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->timelapseStatsGD:Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Timelapse_Stats_GameData;->lHistory:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->updateLanguage()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
