.class public Lage/of/civilizations2/jakowski/lukasz/AoCGame;
.super Lcom/badlogic/gdx/ApplicationAdapter;
.source "AoCGame.java"

# interfaces
.implements Lcom/badlogic/gdx/InputProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/AoCGame$RequestRendering;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCROLL:I = 0xf

.field private static final DEFAULT_SCROLL_MAP:I = 0xc

.field protected static FPS_LIMIT:I = 0x0

.field public static LEFT:I = 0x0

.field public static RIGHT:I = 0x0

.field public static final STEAM_BUILD:Z = false

.field public static TOP:I = 0x0

.field protected static TYPE_NUMBER:I = 0x0

.field protected static final TYPE_NUMBER_RESET_TIME:I = 0x271

.field protected static TYPE_NUMER_TIME:J

.field protected static blackWhiteShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field protected static camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

.field protected static defaultShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field protected static drawFPS:Z

.field protected static mLinkHandler:Lage/of/civilizations2/jakowski/lukasz/LinkHandler;

.field protected static nextPlayerTurnShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static screenShotMode:Z

.field protected static shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field protected static shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field protected static steamGame:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

.field protected static viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;


# instance fields
.field private MAP_MOVE_BOT:Z

.field private MAP_MOVE_LEFT:Z

.field private MAP_MOVE_RIGHT:Z

.field private MAP_MOVE_TOP:Z

.field private final VERTEX:Ljava/lang/String;

.field private fragmentShader:Ljava/lang/String;

.field private iNumOfFPS:I

.field private iScroll:I

.field private iScroll_MAP:F

.field private iScroll_MAPY:F

.field private lScrollTime:J

.field private lScrollTime_MAP:J

.field private lScrollTime_MAPY:J

.field private lTimeFPS:J

.field private oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

.field private renderStart:J

.field private requestRendering:Lage/of/civilizations2/jakowski/lukasz/AoCGame$RequestRendering;

.field private touch:Lage/of/civilizations2/jakowski/lukasz/Touch;

.field private vertexShader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->screenShotMode:Z

    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->drawFPS:Z

    const/16 v0, 0x3c

    sput v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->FPS_LIMIT:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMER_TIME:J

    sput v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMBER:I

    return-void
.end method

.method public constructor <init>(Lage/of/civilizations2/jakowski/lukasz/LinkHandler;)V
    .locals 5

    const/high16 v4, 0x41400000    # 12.0f

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/badlogic/gdx/ApplicationAdapter;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Touch;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Touch;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->touch:Lage/of/civilizations2/jakowski/lukasz/Touch;

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iNumOfFPS:I

    const-string v0, "attribute vec4 a_position;attribute vec4 a_color;attribute vec2 a_texCoord0;uniform mat4 u_projTrans;varying vec4 vColor;varying vec2 vTexCoord;void main() {\tvColor = a_color;\tvTexCoord = a_texCoord0;\tgl_Position =  u_projTrans * a_position;}"

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->VERTEX:Ljava/lang/String;

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_LEFT:Z

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_RIGHT:Z

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_TOP:Z

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_BOT:Z

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAP:F

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime_MAP:J

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAPY:F

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime_MAPY:J

    const/16 v0, 0xf

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll:I

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime:J

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->mLinkHandler:Lage/of/civilizations2/jakowski/lukasz/LinkHandler;

    return-void
.end method

.method private countFPS()V
    .locals 6

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iNumOfFPS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iNumOfFPS:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lTimeFPS:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lTimeFPS:J

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iNumOfFPS:I

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->iNumOfFPS:I

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iNumOfFPS:I

    :cond_0
    return-void
.end method

.method protected static final loadCursor(Z)V
    .locals 5

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->loadCursor:Z

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v3, "UI/icons/cursor.png"

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v1, v3, v4}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2, v0}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p0, :cond_0

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v3, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->Arrow:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Graphics;->setSystemCursor(Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected static final resetTypeNumber()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMER_TIME:J

    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMBER:I

    return-void
.end method

.method protected static final updateArmyFontSize()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_ARMY_SIZE:I

    if-gez v0, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXHDPI:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXXHDPI:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXHDPI:Z

    if-eqz v0, :cond_2

    :cond_0
    const/16 v0, 0x12

    :goto_0
    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_ARMY_SIZE:I

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x10

    goto :goto_0
.end method

.method private final updateMoveMap()V
    .locals 4

    :try_start_0
    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_LEFT:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->updateScroll_Map()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosX()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAP:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosX(I)V

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_TOP:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->updateScroll_MapY()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAPY:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosY(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_RIGHT:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->updateScroll_Map()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosX()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAP:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosX(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    :try_start_1
    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_BOT:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->updateScroll_MapY()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->getPosY()I

    move-result v2

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAPY:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->setNewPosY(I)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private final updateRequestRendering(Z)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->requestRendering:Lage/of/civilizations2/jakowski/lukasz/AoCGame$RequestRendering;

    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->requestRendering:Lage/of/civilizations2/jakowski/lukasz/AoCGame$RequestRendering;

    goto :goto_0
.end method

.method private final updateScroll()V
    .locals 5

    const/16 v4, 0x4b

    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime:J

    const-wide/16 v2, 0x32

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime:J

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll:I

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll:I

    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll:I

    if-le v0, v4, :cond_0

    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime:J

    const/16 v0, 0xf

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll:I

    goto :goto_0
.end method

.method private final updateScroll_Map()V
    .locals 7

    const/high16 v6, 0x420c0000    # 35.0f

    const/high16 v1, 0x3f800000    # 1.0f

    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime_MAP:J

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime_MAP:J

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAP:F

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAP:F

    const v4, 0x3ef33333    # 0.475f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAP:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    sub-float v2, v1, v2

    add-float v0, v1, v2

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAP:F

    mul-float v3, v6, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    sub-float v2, v1, v2

    add-float/2addr v1, v2

    :cond_0
    mul-float/2addr v1, v6

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAP:F

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private final updateScroll_MapY()V
    .locals 7

    const/high16 v6, 0x420c0000    # 35.0f

    const/high16 v1, 0x3f800000    # 1.0f

    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime_MAPY:J

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime_MAPY:J

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAPY:F

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAPY:F

    const v4, 0x3ef33333    # 0.475f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAPY:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    sub-float v2, v1, v2

    add-float v0, v1, v2

    :goto_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAPY:F

    mul-float v3, v6, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v2

    sub-float v2, v1, v2

    add-float/2addr v1, v2

    :cond_0
    mul-float/2addr v1, v6

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAPY:F

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public create()V
    .locals 14

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->readConfig()V

    sget-boolean v7, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->landscape:Z

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->LANDSCAPE:Z

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v7

    if-eqz v7, :cond_7

    sget-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->LANDSCAPE:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    :goto_0
    new-instance v7, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v10, v10

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v11, v11

    invoke-direct {v7, v10, v11}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>(FF)V

    sput-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    const/4 v10, 0x0

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v11, v11

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {v7, v10, v11, v12}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    new-instance v7, Lcom/badlogic/gdx/utils/viewport/FitViewport;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v10, v10

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v11, v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v7, v10, v11, v12}, Lcom/badlogic/gdx/utils/viewport/FitViewport;-><init>(FFLcom/badlogic/gdx/graphics/Camera;)V

    sput-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    const/4 v7, 0x1

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->updateRender(Z)V

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->updateRequestRendering(Z)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->loadSettings()V

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getDensity()F

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v7, v7, v10

    if-gez v7, :cond_0

    const/high16 v7, 0x3f800000    # 1.0f

    sput v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    :cond_0
    sget v7, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iUIScale:I

    if-gtz v7, :cond_c

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getPpiX()F

    move-result v7

    const/high16 v10, 0x43960000    # 300.0f

    cmpl-float v7, v7, v10

    if-gez v7, :cond_1

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    const/16 v10, 0x4b0

    if-ge v7, v10, :cond_1

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    const/16 v10, 0x4b0

    if-lt v7, v10, :cond_8

    :cond_1
    const/4 v7, 0x1

    :goto_1
    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XHDPI:Z

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getPpiX()F

    move-result v7

    const/high16 v10, 0x43be0000    # 380.0f

    cmpl-float v7, v7, v10

    if-gez v7, :cond_2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    const/16 v10, 0x708

    if-ge v7, v10, :cond_2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    const/16 v10, 0x708

    if-lt v7, v10, :cond_9

    :cond_2
    const/4 v7, 0x1

    :goto_2
    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXHDPI:Z

    :cond_3
    :goto_3
    new-instance v7, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    iput-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v7, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v7, p0}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    sget-object v7, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v10, 0x1

    invoke-interface {v7, v10}, Lcom/badlogic/gdx/Input;->setCatchBackKey(Z)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UI/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "buttons/menu.png"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_h:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UI/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "icons/feather.png"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/Images;->feather:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UI/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "icons/nuclear_weapons.png"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/Images;->top_nuclear_weapons:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UI/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "buttons/clear.png"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_clear:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UI/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "buttons/close.png"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_close:I

    const-string v7, "UI/lines/line_32_off1.png"

    sget-object v10, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v11, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v12, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v7, v10, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UI/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "gradient.png"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UI/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "loading/loading_edge.png"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v10, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v11, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v12, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v7, v10, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/Images;->loading_rect_edge:I

    const-string v7, "UI/pix"

    sget-object v10, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v11, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v12, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v7, v10, v11, v12}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->btn_menu_h:I

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXXHDPI:Z

    if-eqz v7, :cond_11

    const/16 v7, 0xd4

    :goto_4
    sput v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    const/high16 v7, 0x42c80000    # 100.0f

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v10, v10

    mul-float/2addr v7, v10

    const/high16 v10, 0x42880000    # 68.0f

    div-float/2addr v7, v10

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v7, v10

    sput v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    const/high16 v7, 0x40a00000    # 5.0f

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float/2addr v7, v10

    float-to-int v7, v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    int-to-float v7, v7

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float/2addr v7, v10

    float-to-int v7, v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    int-to-float v7, v7

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float/2addr v7, v10

    float-to-int v7, v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    int-to-float v7, v7

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float/2addr v7, v10

    float-to-int v7, v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    int-to-float v7, v7

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float/2addr v7, v10

    float-to-int v7, v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_MAIN_SIZE:I

    if-gez v7, :cond_4

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    const/high16 v10, 0x41900000    # 18.0f

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v7, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->FONT_MAIN_SIZE:I

    :cond_4
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->updateArmyFontSize()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UI/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "game_logo.png"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    const/4 v4, 0x0

    :goto_5
    const/16 v7, 0x10

    if-ge v4, v7, :cond_15

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Images;->backgrounds:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UI/bg/bg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v7

    sget-object v10, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v10}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v10

    if-ge v7, v10, :cond_6

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    goto/16 :goto_0

    :cond_6
    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    goto/16 :goto_0

    :cond_7
    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    goto/16 :goto_0

    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_a
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isDesktop()Z

    move-result v7

    if-eqz v7, :cond_3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    const/16 v10, 0x960

    if-lt v7, v10, :cond_b

    const/4 v7, 0x1

    :goto_6
    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XHDPI:Z

    goto/16 :goto_3

    :cond_b
    const/4 v7, 0x0

    goto :goto_6

    :cond_c
    sget v7, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iUIScale:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_d

    const/4 v7, 0x0

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XHDPI:Z

    const/4 v7, 0x0

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXHDPI:Z

    const/4 v7, 0x0

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXHDPI:Z

    const/4 v7, 0x0

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXXHDPI:Z

    goto/16 :goto_3

    :cond_d
    sget v7, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iUIScale:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_e

    const/4 v7, 0x1

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XHDPI:Z

    const/4 v7, 0x0

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXHDPI:Z

    const/4 v7, 0x0

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXHDPI:Z

    const/4 v7, 0x0

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXXHDPI:Z

    goto/16 :goto_3

    :cond_e
    sget v7, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iUIScale:I

    const/4 v10, 0x3

    if-ne v7, v10, :cond_f

    const/4 v7, 0x1

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XHDPI:Z

    const/4 v7, 0x1

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXHDPI:Z

    const/4 v7, 0x0

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXHDPI:Z

    const/4 v7, 0x0

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXXHDPI:Z

    goto/16 :goto_3

    :cond_f
    sget v7, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iUIScale:I

    const/4 v10, 0x4

    if-ne v7, v10, :cond_10

    const/4 v7, 0x1

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XHDPI:Z

    const/4 v7, 0x1

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXHDPI:Z

    const/4 v7, 0x1

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXHDPI:Z

    const/4 v7, 0x0

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXXHDPI:Z

    goto/16 :goto_3

    :cond_10
    sget v7, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iUIScale:I

    const/4 v10, 0x5

    if-ne v7, v10, :cond_3

    const/4 v7, 0x1

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XHDPI:Z

    const/4 v7, 0x1

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXHDPI:Z

    const/4 v7, 0x1

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXHDPI:Z

    const/4 v7, 0x1

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXXHDPI:Z

    goto/16 :goto_3

    :cond_11
    sget-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXHDPI:Z

    if-eqz v7, :cond_12

    const/16 v7, 0xb4

    goto/16 :goto_4

    :cond_12
    sget-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXHDPI:Z

    if-eqz v7, :cond_13

    const/16 v7, 0xa0

    goto/16 :goto_4

    :cond_13
    sget-boolean v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->XHDPI:Z

    if-eqz v7, :cond_14

    const/16 v7, 0x78

    goto/16 :goto_4

    :cond_14
    const/16 v7, 0x5a

    goto/16 :goto_4

    :cond_15
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v7

    const/4 v10, 0x0

    const/16 v11, 0xf

    invoke-virtual {v7, v10, v11}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/Images;->background:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/Images;->background:I

    sput v7, Lage/of/civilizations2/jakowski/lukasz/Images;->backgroundLast:I

    new-instance v7, Ljava/lang/Thread;

    new-instance v10, Lage/of/civilizations2/jakowski/lukasz/AoCGame$4;

    invoke-direct {v10, p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)V

    invoke-direct {v7, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-direct {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;-><init>()V

    sput-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->updateRenderer()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->updateDrawMoveUnits()V

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;

    invoke-direct {v7}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;-><init>()V

    sput-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->soundsManager:Lage/of/civilizations2/jakowski/lukasz/SoundsManager;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/InitGame;

    invoke-direct {v7}, Lage/of/civilizations2/jakowski/lukasz/InitGame;-><init>()V

    const/4 v7, 0x0

    sput-boolean v7, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v10, "game/shader/default_vertex.glsl"

    invoke-interface {v7, v10}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v10, "game/shader/flag_fragment.glsl"

    invoke-interface {v7, v10}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v10, "game/shader/nextPlayerTurn_vertex.glsl"

    invoke-interface {v7, v10}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v10, "attribute vec4 a_position;attribute vec4 a_color;attribute vec2 a_texCoord0;uniform mat4 u_projTrans;varying vec4 vColor;varying vec2 vTexCoord;void main() {\tvColor = a_color;\tvTexCoord = a_texCoord0;\tgl_Position =  u_projTrans * a_position;}"

    invoke-direct {v7, v10, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v10, "u_texture1"

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v10, "u_mask"

    const/4 v11, 0x2

    invoke-virtual {v7, v10, v11}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    const-string v7, "attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projTrans;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_color.a = v_color.a * (255.0/254.0);\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projTrans * a_position;\n}\n"

    iput-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->vertexShader:Ljava/lang/String;

    const-string v7, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nuniform sampler2D u_texture2;\nuniform float u_maskScale;\nuniform float u_useMask;\nuniform vec2 u_maskOffset;\nvoid main()                                  \n{                                            \n vec2 newCoords = -1.0 * (u_maskScale - 1.0)/2.0 + (u_maskScale * v_texCoords) + u_maskOffset;\n vec4 mask = vec4(1.0, 1.0, 1.0, 1.0); \nif(u_useMask > 0.5) \n\tmask = texture2D(u_texture2, v_texCoords);\n vec4 color = v_color * texture2D(u_texture, newCoords);\n  gl_FragColor = vec4(color.rgb, color.a * mask.r);\n}"

    iput-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->fragmentShader:Ljava/lang/String;

    new-instance v7, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v10, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->vertexShader:Ljava/lang/String;

    iget-object v11, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->fragmentShader:Ljava/lang/String;

    invoke-direct {v7, v10, v11}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v10, "u_texture"

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v10, "u_texture2"

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v10, "u_useMask"

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v7, v10, v11}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v10, "u_maskScale"

    const/high16 v11, 0x41a00000    # 20.0f

    invoke-virtual {v7, v10, v11}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v10, "u_maskOffset"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v10, "game/shader/default_fragment.glsl"

    invoke-interface {v7, v10}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v10, "game/shader/blackWhite_fragment.glsl"

    invoke-interface {v7, v10}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v10, "game/shader/nextPlayerTurn_fragment.glsl"

    invoke-interface {v7, v10}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v7, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->defaultShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v7, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v7, v2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->blackWhiteShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v7, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v7, v6, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->nextPlayerTurnShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v7, 0x1

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->loadCursor(Z)V

    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v10, "AoC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LOAD TIME: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dispose()V
    .locals 5

    :try_start_0
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AoC"

    const-string v4, "dispose"

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isDesktop()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->dispose()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->dispose()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->dispose()V

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImagesSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->disposeGameMap()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->soundsManager:Lage/of/civilizations2/jakowski/lukasz/SoundsManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->dispose()V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v2, :cond_2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v2, :cond_2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected getScrolled_ScaleUpdate()F
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    const v1, 0x3f266666    # 0.65f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const v0, 0x3d4ccccd    # 0.05f

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const v0, 0x3ca3d70a    # 0.02f

    goto :goto_0

    :cond_1
    const v0, 0x3c23d70a    # 0.01f

    goto :goto_0

    :cond_2
    const v0, 0x3dcccccd    # 0.1f

    goto :goto_0
.end method

.method public keyDown(I)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_0
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getVisible()Z

    move-result v3

    if-nez v3, :cond_0

    # Console uses system IME with Keyboard menu hidden. KEYCODE_U == 0x31 was
    # toggling screenShotMode (hides all HUD). Ignore map/screenshot hotkeys
    # while commandsMode / console input is active.
    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->commandsMode:Z

    if-eqz v3, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorManager:Lage/of/civilizations2/jakowski/lukasz/EditorManager;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->keyDown(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/16 v3, 0x15

    if-ne p1, v3, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_LEFT:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_RIGHT:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime_MAP:J

    const/high16 v3, 0x41700000    # 15.0f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAP:F

    :cond_2
    const/16 v3, 0x16

    if-ne p1, v3, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_RIGHT:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_LEFT:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime_MAP:J

    const/high16 v3, 0x41700000    # 15.0f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAP:F

    :cond_3
    const/16 v3, 0x13

    if-ne p1, v3, :cond_4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_TOP:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_BOT:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime_MAPY:J

    const/high16 v3, 0x41700000    # 15.0f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAPY:F

    :cond_4
    const/16 v3, 0x14

    if-ne p1, v3, :cond_5

    const/4 v3, 0x1

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_BOT:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_TOP:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime_MAPY:J

    const/high16 v3, 0x41700000    # 15.0f

    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAPY:F

    :cond_5
    const/16 v3, 0x31

    if-ne p1, v3, :cond_0

    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->screenShotMode:Z

    if-nez v3, :cond_6

    move v1, v2

    :cond_6
    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->screenShotMode:Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public keyTyped(C)Z
    .locals 5

    const/4 v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AoC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " character: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->commandsMode:Z

    if-eqz v1, :cond_kb_gate

    goto :cond_kb_ok

    :cond_kb_gate
    # Civilization Search uses system IME with in-game keyboard hidden
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CivSearchIme;->active:Z

    if-eqz v1, :cond_kb_panel

    goto :cond_kb_ok

    :cond_kb_panel
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_kb_ok
    if-lez p1, :cond_1

    const/16 v1, 0x12

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    :cond_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardDelete:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    invoke-interface {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;->action()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->onMenuPressed()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_1
    :goto_0
    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->soundsManager:Lage/of/civilizations2/jakowski/lukasz/SoundsManager;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_CLICK:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->PERC_VOLUME_KEYBOARD:F

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->playSound(IF)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    const/4 v1, 0x0

    return v1

    :cond_2
    const/16 v1, 0xd

    if-eq p1, v1, :cond_enter_check

    const/16 v1, 0xa

    if-eq p1, v1, :cond_enter_check

    goto :cond_after_enter

    :cond_enter_check
    # Enter in console → submit line, keep panel + system IME
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->commandsMode:Z

    if-eqz v1, :cond_1

    :try_start_enter
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->submitLine()V
    :try_end_enter
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_enter .. :try_end_enter} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_enter .. :try_end_enter} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_enter .. :try_end_enter} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_enter .. :try_end_enter} :catch_3

    goto :goto_0

    :cond_after_enter
    const/16 v1, 0x3b

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3c

    if-eq p1, v1, :cond_1

    :try_start_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardWrite:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;->action(Ljava/lang/String;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->onMenuPressed()V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_5
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_6
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_7
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public keyUp(I)Z
    .locals 7

    const/16 v6, 0x3e

    const/16 v4, 0x42

    const/16 v5, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :try_start_0
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getVisible()Z

    move-result v3

    if-nez v3, :cond_86

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorManager:Lage/of/civilizations2/jakowski/lukasz/EditorManager;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->keyUp(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    const/16 v3, 0x15

    if-ne p1, v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_LEFT:Z

    :cond_1
    const/16 v3, 0x16

    if-ne p1, v3, :cond_2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_RIGHT:Z

    :cond_2
    const/16 v3, 0x13

    if-ne p1, v3, :cond_3

    const/4 v3, 0x0

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_TOP:Z

    :cond_3
    const/16 v3, 0x14

    if-ne p1, v3, :cond_4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_BOT:Z

    :cond_4
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isDesktop()Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getDialogMenu()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getVisible()Z

    move-result v3

    if-eqz v3, :cond_9

    if-eq p1, v4, :cond_6

    if-ne p1, v6, :cond_7

    :cond_6
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getDialogMenu()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setClickable(Z)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getDialogMenu()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setClickable(Z)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->dialog_True()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getDialogMenu()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->onBackPressed()V

    move v1, v2

    goto :goto_0

    :cond_7
    const/16 v1, 0x83

    if-eq p1, v1, :cond_8

    const/16 v1, 0x43

    if-eq p1, v1, :cond_8

    move v1, v2

    goto :goto_0

    :cond_8
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getDialogMenu()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setClickable(Z)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getDialogMenu()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setClickable(Z)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->dialog_False()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getDialogMenu()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->onBackPressed()V

    move v1, v2

    goto/16 :goto_0

    :cond_9
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v3

    if-eqz v3, :cond_70

    const/4 v3, 0x3

    if-ne p1, v3, :cond_e

    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToProvinceID(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveViewID()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_DIPLOMACY_MODE:I

    if-ne v1, v3, :cond_a

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->disableDrawCivilizationRegions_Active()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->enableDrawCivilizationRegions_ActiveProvince()V

    :cond_a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_FlagAction()Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_FlagAction(Z)V

    :cond_b
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_c

    move v1, v2

    goto/16 :goto_0

    :cond_c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_4

    move v1, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-nez v1, :cond_d

    move v1, v2

    goto/16 :goto_0

    :cond_d
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v1, v2

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x83

    if-ne p1, v3, :cond_17

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_FlagAction()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame;->clickFlagAction()V

    move v1, v2

    goto/16 :goto_0

    :cond_f
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->regroupArmyMode:Z

    if-eqz v1, :cond_10

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->resetRegroupArmyData()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkProvinceActionMenu()V

    move v1, v2

    goto/16 :goto_0

    :cond_10
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chooseProvinceMode:Z

    if-nez v1, :cond_11

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenProvinceID:I

    if-ltz v1, :cond_12

    :cond_11
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->resetChooseProvinceData()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkProvinceActionMenu()V

    move v1, v2

    goto/16 :goto_0

    :cond_12
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView_Options()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Options;->clickBack()V

    move v1, v2

    goto/16 :goto_0

    :cond_13
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Visible()Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceRecruit(Z)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkProvinceActionMenu()V

    move v1, v2

    goto/16 :goto_0

    :cond_14
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruitInstantly_Visible()Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceRecruitInstantly(Z)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkProvinceActionMenu()V

    move v1, v2

    goto/16 :goto_0

    :cond_15
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceDisband_Visible()Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceDisband(Z)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkProvinceActionMenu()V

    move v1, v2

    goto/16 :goto_0

    :cond_16
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction;->clickOptions()V

    move v1, v2

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0x1f

    if-ne p1, v3, :cond_1a

    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->DISABLE_CITIES:Z

    if-nez v3, :cond_18

    :goto_1
    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->DISABLE_CITIES:Z

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "C, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "Cities"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->DISABLE_CITIES:Z

    if-nez v1, :cond_19

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_2
    invoke-virtual {v3, v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v3, 0x1194

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    move v1, v2

    goto/16 :goto_0

    :cond_18
    move v1, v2

    goto :goto_1

    :cond_19
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE2:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2

    :cond_1a
    const/16 v3, 0x32

    if-ne p1, v3, :cond_1d

    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->DISABLE_CIVS_NAMES:Z

    if-nez v3, :cond_1b

    :goto_3
    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->DISABLE_CIVS_NAMES:Z

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "V, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v5, "CivilizationsNames"

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->DISABLE_CIVS_NAMES:Z

    if-nez v1, :cond_1c

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_4
    invoke-virtual {v3, v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v3, 0x1194

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    move v1, v2

    goto/16 :goto_0

    :cond_1b
    move v1, v2

    goto :goto_3

    :cond_1c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE2:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_4

    :cond_1d
    const/16 v3, 0x45

    if-ne p1, v3, :cond_1e

    const/4 v1, -0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/RTS;->updateSpeed(I)V

    move v1, v2

    goto/16 :goto_0

    :cond_1e
    const/16 v3, 0x51

    if-ne p1, v3, :cond_1f

    const/4 v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/RTS;->updateSpeed(I)V

    move v1, v2

    goto/16 :goto_0

    :cond_1f
    if-ne p1, v4, :cond_27

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView_Options()Z

    move-result v1

    if-nez v1, :cond_26

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getActiveTurnState()Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    if-ne v1, v3, :cond_26

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceMoveUnits_Visible()Z

    move-result v1

    if-nez v1, :cond_20

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Visible()Z

    move-result v1

    if-nez v1, :cond_20

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruitInstantly_Visible()Z

    move-result v1

    if-nez v1, :cond_20

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRegroupArmy_Visible()Z

    move-result v1

    if-nez v1, :cond_20

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceDisband_Visible()Z

    move-result v1

    if-eqz v1, :cond_26

    :cond_20
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceMoveUnits_Visible()Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceMoveUnits_Confrim()V

    :cond_21
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Visible()Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Confrim()V

    :cond_22
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruitInstantly_Visible()Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruitInstantly_Confrim()V

    :cond_23
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRegroupArmy_Visible()Z

    move-result v1

    if-eqz v1, :cond_24

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRegroupArmy_ConfirmMove()V

    :cond_24
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceDisband_Visible()Z

    move-result v1

    if-nez v1, :cond_25

    move v1, v2

    goto/16 :goto_0

    :cond_25
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceDisband_Confrm()V

    move v1, v2

    goto/16 :goto_0

    :cond_26
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->pauseUnpause()V

    move v1, v2

    goto/16 :goto_0

    :cond_27
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView_Options()Z

    move-result v3

    if-eqz v3, :cond_28

    move v1, v2

    goto/16 :goto_0

    :cond_28
    if-ne p1, v6, :cond_2f

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRegroupArmy_Visible()Z

    move-result v3

    if-eqz v3, :cond_29

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRegroupArmy_ConfirmMove()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->soundsManager:Lage/of/civilizations2/jakowski/lukasz/SoundsManager;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_MOVE_REGROUP:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->playSound(I)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v1, v2

    goto/16 :goto_0

    :cond_29
    :try_start_3
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceDisband_Visible()Z

    move-result v3

    if-eqz v3, :cond_2a

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceDisband_Confrm()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->soundsManager:Lage/of/civilizations2/jakowski/lukasz/SoundsManager;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_CLICK2:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->playSound(I)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/StackOverflowError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v1, v2

    goto/16 :goto_0

    :cond_2a
    :try_start_4
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruitInstantly_Visible()Z

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruitInstantly_Confrim()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->soundsManager:Lage/of/civilizations2/jakowski/lukasz/SoundsManager;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_RECRUIT:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->playSound(I)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/StackOverflowError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v1, v2

    goto/16 :goto_0

    :cond_2b
    :try_start_5
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Visible()Z

    move-result v3

    if-eqz v3, :cond_2c

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Confrim()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->soundsManager:Lage/of/civilizations2/jakowski/lukasz/SoundsManager;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_RECRUIT:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->playSound(I)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/StackOverflowError; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v1, v2

    goto/16 :goto_0

    :cond_2c
    :try_start_6
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceMoveUnits_Visible()Z

    move-result v3

    if-eqz v3, :cond_2d

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceMoveUnits_Confrim()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->soundsManager:Lage/of/civilizations2/jakowski/lukasz/SoundsManager;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_MOVE_ARMY:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->playSound(I)V

    goto/16 :goto_0

    :cond_2d
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getActiveTurnState()Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    if-ne v3, v4, :cond_2e

    const/4 v3, 0x1

    sput-boolean v3, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSE:Z

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->resetTime()V
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/StackOverflowError; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_2e
    :try_start_7
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceInfo()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getClickable()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceInfo;->clickEndTurn()V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/StackOverflowError; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_2f
    :goto_5
    :try_start_8
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getActiveTurnState()Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    if-eq v3, v4, :cond_30

    move v1, v2

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_6
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_30
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceMoveUnits_Visible()Z

    move-result v3

    if-nez v3, :cond_31

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Visible()Z

    move-result v3

    if-nez v3, :cond_31

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruitInstantly_Visible()Z

    move-result v3

    if-nez v3, :cond_31

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRegroupArmy_Visible()Z

    move-result v3

    if-nez v3, :cond_31

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceDisband_Visible()Z

    move-result v3

    if-eqz v3, :cond_38

    :cond_31
    const/4 v3, 0x7

    if-eq p1, v3, :cond_32

    const/16 v3, 0x90

    if-ne p1, v3, :cond_3b

    :cond_32
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->typeNumber(I)V

    :cond_33
    :goto_6
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceMoveUnits_Visible()Z

    move-result v3

    if-eqz v3, :cond_34

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceMoveUnits_Slider()Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMBER:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGame_ActionInfo_Move()V

    :cond_34
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Visible()Z

    move-result v3

    if-eqz v3, :cond_35

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Slider()Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMBER:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGame_ActionInfo_Recruit()V

    :cond_35
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruitInstantly_Visible()Z

    move-result v3

    if-eqz v3, :cond_36

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruitInstantly_Slider()Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMBER:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGame_ActionInfo_RecruitInstantly()V

    :cond_36
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRegroupArmy_Visible()Z

    move-result v3

    if-eqz v3, :cond_37

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_RegroupArmy_Slider()Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMBER:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGame_ActionInfo_Regroup()V

    :cond_37
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceDisband_Visible()Z

    move-result v3

    if-eqz v3, :cond_38

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceDisband_Slider()Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMBER:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCurrent(I)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGame_ActionInfo_Disband()V

    :cond_38
    const/16 v3, 0x4d

    if-ne p1, v3, :cond_39

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_FlagAction_Console()Z

    move-result v3

    if-nez v3, :cond_4d

    move v3, v1

    :goto_7
    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_FlagAction_Console(Z)V

    :cond_39
    const/16 v3, 0xf4

    if-ne p1, v3, :cond_4e

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame;->clickFlagAction()V

    :cond_3a
    :goto_8
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_ProvinceAction()Z

    move-result v1

    if-nez v1, :cond_66

    move v1, v2

    goto/16 :goto_0

    :cond_3b
    const/16 v3, 0x8

    if-eq p1, v3, :cond_3c

    const/16 v3, 0x91

    if-ne p1, v3, :cond_3d

    :cond_3c
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->typeNumber(I)V

    goto/16 :goto_6

    :cond_3d
    if-eq p1, v5, :cond_3e

    const/16 v3, 0x92

    if-ne p1, v3, :cond_3f

    :cond_3e
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->typeNumber(I)V

    goto/16 :goto_6

    :cond_3f
    const/16 v3, 0xa

    if-eq p1, v3, :cond_40

    const/16 v3, 0x93

    if-ne p1, v3, :cond_41

    :cond_40
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->typeNumber(I)V

    goto/16 :goto_6

    :cond_41
    const/16 v3, 0xb

    if-eq p1, v3, :cond_42

    const/16 v3, 0x94

    if-ne p1, v3, :cond_43

    :cond_42
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->typeNumber(I)V

    goto/16 :goto_6

    :cond_43
    const/16 v3, 0xc

    if-eq p1, v3, :cond_44

    const/16 v3, 0x95

    if-ne p1, v3, :cond_45

    :cond_44
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->typeNumber(I)V

    goto/16 :goto_6

    :cond_45
    const/16 v3, 0xd

    if-eq p1, v3, :cond_46

    const/16 v3, 0x96

    if-ne p1, v3, :cond_47

    :cond_46
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->typeNumber(I)V

    goto/16 :goto_6

    :cond_47
    const/16 v3, 0xe

    if-eq p1, v3, :cond_48

    const/16 v3, 0x97

    if-ne p1, v3, :cond_49

    :cond_48
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->typeNumber(I)V

    goto/16 :goto_6

    :cond_49
    const/16 v3, 0xf

    if-eq p1, v3, :cond_4a

    const/16 v3, 0x98

    if-ne p1, v3, :cond_4b

    :cond_4a
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->typeNumber(I)V

    goto/16 :goto_6

    :cond_4b
    const/16 v3, 0x10

    if-eq p1, v3, :cond_4c

    const/16 v3, 0x99

    if-ne p1, v3, :cond_33

    :cond_4c
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->typeNumber(I)V

    goto/16 :goto_6

    :cond_4d
    move v3, v2

    goto/16 :goto_7

    :cond_4e
    const/16 v3, 0xf5

    if-eq p1, v3, :cond_4f

    const/16 v3, 0x3d

    if-ne p1, v3, :cond_52

    :cond_4f
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_FlagAction()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame;->clickFlagAction()V

    :cond_50
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_CivInfo()Z

    move-result v4

    if-nez v4, :cond_51

    :goto_9
    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_CivInfo(Z)V

    goto/16 :goto_8

    :cond_51
    move v1, v2

    goto :goto_9

    :cond_52
    const/16 v3, 0xf6

    if-ne p1, v3, :cond_53

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_DIPLOMACY_MODE:I

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->setActiveViewID(I)V

    goto/16 :goto_8

    :cond_53
    const/16 v3, 0xf7

    if-ne p1, v3, :cond_55

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_MapModes()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getVisible()Z

    move-result v4

    if-nez v4, :cond_54

    :goto_a
    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_MapModes(Z)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_MapModes()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v1

    if-gez v1, :cond_3a

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_MapModes()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_MapModes()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setPosX_Force(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_MapModes()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_MapModes()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->getHeight()I

    move-result v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v4

    add-int/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setPosY(I)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_MapModes()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_MapModes()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v3, v4

    if-le v1, v3, :cond_3a

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_MapModes()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_MapModes()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setPosX_Force(I)V

    goto/16 :goto_8

    :cond_54
    move v1, v2

    goto/16 :goto_a

    :cond_55
    const/16 v3, 0xf8

    if-ne p1, v3, :cond_57

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_Menu_InGame_Outliner()Z

    move-result v1

    if-eqz v1, :cond_56

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_Menu_InGame_Outliner(Z)V

    goto/16 :goto_8

    :cond_56
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction;->clickStats()V

    goto/16 :goto_8

    :cond_57
    const/16 v3, 0xf9

    if-ne p1, v3, :cond_59

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisibleInGame_Wars()Z

    move-result v1

    if-eqz v1, :cond_58

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleInGame_Wars(Z)V

    goto/16 :goto_8

    :cond_58
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_Wars()V

    goto/16 :goto_8

    :cond_59
    const/16 v3, 0xfa

    if-ne p1, v3, :cond_5b

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisibleInGame_MilitaryAlliances()Z

    move-result v1

    if-eqz v1, :cond_5a

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleInGame_MilitaryAlliances(Z)V

    goto/16 :goto_8

    :cond_5a
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_MilitaryAlliances()V

    goto/16 :goto_8

    :cond_5b
    const/16 v3, 0xfb

    if-ne p1, v3, :cond_5d

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisibleInGame_History()Z

    move-result v1

    if-eqz v1, :cond_5c

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleInGame_History(Z)V

    goto/16 :goto_8

    :cond_5c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_History()V

    goto/16 :goto_8

    :cond_5d
    const/16 v3, 0xfc

    if-ne p1, v3, :cond_5f

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisibleInGame_Rank()Z

    move-result v1

    if-eqz v1, :cond_5e

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleInGame_Rank(Z)V

    goto/16 :goto_8

    :cond_5e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_Rank()V

    goto/16 :goto_8

    :cond_5f
    const/16 v3, 0xff

    if-ne p1, v3, :cond_61

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisibleInGame_Playlist()Z

    move-result v4

    if-nez v4, :cond_60

    :goto_b
    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleInGame_Playlist(Z)V

    goto/16 :goto_8

    :cond_60
    move v1, v2

    goto :goto_b

    :cond_61
    const/16 v3, 0x8

    if-eq p1, v3, :cond_3a

    const/16 v3, 0x2d

    if-ne p1, v3, :cond_62

    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->chooseProvinceMode:Z

    if-eqz v3, :cond_3a

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->resetChooseProvinceData()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkProvinceActionMenu()V

    goto/16 :goto_0

    :cond_62
    const/16 v3, 0x33

    if-ne p1, v3, :cond_63

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Visible()Z

    move-result v3

    if-eqz v3, :cond_3a

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceRecruit(Z)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkProvinceActionMenu()V

    goto/16 :goto_0

    :cond_63
    const/16 v3, 0x21

    if-ne p1, v3, :cond_64

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceBuild_Visible()Z

    move-result v3

    if-eqz v3, :cond_3a

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceBuild(ZZ)V

    goto/16 :goto_0

    :cond_64
    const/16 v3, 0x2e

    if-ne p1, v3, :cond_65

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceDisband_Visible()Z

    move-result v3

    if-eqz v3, :cond_3a

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceDisband(Z)V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkProvinceActionMenu()V

    goto/16 :goto_0

    :cond_65
    const/16 v3, 0x30

    if-ne p1, v3, :cond_3a

    sget-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->regroupArmyMode:Z

    if-eqz v3, :cond_3a

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->resetRegroupArmyData()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkProvinceActionMenu()V

    goto/16 :goto_0

    :cond_66
    const/16 v1, 0x2d

    if-ne p1, v1, :cond_69

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getActiveTurnState()Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    if-eq v1, v3, :cond_67

    move v1, v2

    goto/16 :goto_0

    :cond_67
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chooseProvinceMode:Z

    if-nez v1, :cond_68

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction;->clickMove()V

    move v1, v2

    goto/16 :goto_0

    :cond_68
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->resetChooseProvinceData()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->checkProvinceActionMenu()V

    move v1, v2

    goto/16 :goto_0

    :cond_69
    const/16 v1, 0x33

    if-ne p1, v1, :cond_6b

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction;->canRecruit()Z

    move-result v1

    if-nez v1, :cond_6a

    move v1, v2

    goto/16 :goto_0

    :cond_6a
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction;->clickRecruit()V

    move v1, v2

    goto/16 :goto_0

    :cond_6b
    const/16 v1, 0x21

    if-ne p1, v1, :cond_6d

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction;->canRecruit()Z

    move-result v1

    if-nez v1, :cond_6c

    move v1, v2

    goto/16 :goto_0

    :cond_6c
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction;->clickBuild()V

    move v1, v2

    goto/16 :goto_0

    :cond_6d
    const/16 v1, 0x2e

    if-ne p1, v1, :cond_6e

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction;->clickDisband()V

    move v1, v2

    goto/16 :goto_0

    :cond_6e
    const/16 v1, 0x30

    if-eq p1, v1, :cond_6f

    move v1, v2

    goto/16 :goto_0

    :cond_6f
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction;->clickMoveTo()V

    move v1, v2

    goto/16 :goto_0

    :cond_70
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInNextPlayerTurn()Z

    move-result v1

    if-eqz v1, :cond_72

    if-eq p1, v6, :cond_71

    move v1, v2

    goto/16 :goto_0

    :cond_71
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_NextPlayerTurn;->clickBack()V

    move v1, v2

    goto/16 :goto_0

    :cond_72
    const/16 v1, 0x43

    if-ne p1, v1, :cond_73

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->onBackPressed()V

    move v1, v2

    goto/16 :goto_0

    :cond_73
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Timeline()Z

    move-result v1

    if-nez v1, :cond_74

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInVictory()Z

    move-result v1

    if-eqz v1, :cond_78

    :cond_74
    const/16 v1, 0x45

    if-ne p1, v1, :cond_75

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->updateSpeed(I)V

    move v1, v2

    goto/16 :goto_0

    :cond_75
    const/16 v1, 0x51

    if-ne p1, v1, :cond_76

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->updateSpeed(I)V

    move v1, v2

    goto/16 :goto_0

    :cond_76
    if-eq p1, v4, :cond_77

    move v1, v2

    goto/16 :goto_0

    :cond_77
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/TimelapseManager;->pauseUnpause()V

    move v1, v2

    goto/16 :goto_0

    :cond_78
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_CreateAVassal()Z

    move-result v1

    if-eqz v1, :cond_79

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Menu;->eINGAME:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    move v1, v2

    goto/16 :goto_0

    :cond_79
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateNewGame()Z

    move-result v1

    if-eqz v1, :cond_7c

    const/16 v1, 0xf4

    if-ne p1, v1, :cond_7a

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame;->clickOptions()V

    move v1, v2

    goto/16 :goto_0

    :cond_7a
    const/16 v1, 0x3d

    if-eq p1, v1, :cond_7b

    move v1, v2

    goto/16 :goto_0

    :cond_7b
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateNewGame_Top;->clickChooseScenario()V

    move v1, v2

    goto/16 :goto_0

    :cond_7c
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInChooseScenario()Z

    move-result v1

    if-nez v1, :cond_7d

    move v1, v2

    goto/16 :goto_0

    :cond_7d
    if-eq p1, v4, :cond_7e

    if-ne p1, v6, :cond_7f

    :cond_7e
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_ChooseScenario_Title;->clickLoadScenario()V

    move v1, v2

    goto/16 :goto_0

    :cond_7f
    const/16 v1, 0x3d

    if-ne p1, v1, :cond_80

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_NEW_GAME:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    move v1, v2

    goto/16 :goto_0

    :cond_80
    const/16 v1, 0x14

    if-eq p1, v1, :cond_81

    const/16 v1, 0x16

    if-ne p1, v1, :cond_83

    :cond_81
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menu_ChooseScenario_Title;->iPreviewScenarioID:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menu_ChooseScenario_Title;->iPreviewScenarioID:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->SCENARIOS_SIZE:I

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_82

    const/4 v1, 0x0

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menu_ChooseScenario_Title;->iPreviewScenarioID:I

    :cond_82
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_ChooseScenario_Title;->loadPreview()V

    move v1, v2

    goto/16 :goto_0

    :cond_83
    const/16 v1, 0x13

    if-eq p1, v1, :cond_84

    const/16 v1, 0x15

    if-eq p1, v1, :cond_84

    move v1, v2

    goto/16 :goto_0

    :cond_84
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Menu_ChooseScenario_Title;->iPreviewScenarioID:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menu_ChooseScenario_Title;->iPreviewScenarioID:I

    if-gez v1, :cond_85

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->SCENARIOS_SIZE:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Menu_ChooseScenario_Title;->iPreviewScenarioID:I

    :cond_85
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menu_ChooseScenario_Title;->loadPreview()V

    move v1, v2

    goto/16 :goto_0

    :cond_86
    if-eq p1, v4, :cond_87

    move v1, v2

    goto/16 :goto_0

    :cond_87
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardSave:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    invoke-interface {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;->action()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->onMenuPressed()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    const/4 v1, -0x1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/StackOverflowError; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_8 .. :try_end_8} :catch_4

    move v1, v2

    goto/16 :goto_0
.end method

.method public mouseMoved(II)Z
    .locals 5

    const/4 v4, 0x1

    :try_start_0
    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Touch;->setMousePosXY(II)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    if-ge p1, v1, :cond_4

    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_LEFT:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_LEFT:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_RIGHT:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime_MAP:J

    const/high16 v1, 0x41700000    # 15.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAP:F

    :cond_0
    :goto_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_5

    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_RIGHT:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_RIGHT:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_LEFT:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime_MAP:J

    const/high16 v1, 0x41700000    # 15.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAP:F

    :cond_1
    :goto_1
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    if-ge p2, v1, :cond_6

    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_TOP:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_TOP:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_BOT:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime_MAPY:J

    const/high16 v1, 0x41700000    # 15.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAPY:F

    :cond_2
    :goto_2
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_7

    iget-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_BOT:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_BOT:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_TOP:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime_MAPY:J

    const/high16 v1, 0x41700000    # 15.0f

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAPY:F

    :cond_3
    :goto_3
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->touch:Lage/of/civilizations2/jakowski/lukasz/Touch;

    invoke-virtual {v1, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Touch;->actionMove_Hover(II)V

    :goto_4
    return v4

    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_LEFT:Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_RIGHT:Z
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_TOP:Z
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_BOT:Z
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public pause()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->updateRequestRendering(Z)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInLoadMap()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInInitMenu()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->updateRender(Z)V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    invoke-super {p0}, Lcom/badlogic/gdx/ApplicationAdapter;->pause()V

    return-void
.end method

.method public render()V
    .locals 8

    const/4 v7, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->renderStart:J

    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->update()V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->updateMoveMap()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->RENDER:Z

    if-nez v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-boolean v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CONTINUOUS_RENDERING:Z

    if-eqz v2, :cond_9

    :cond_0
    :try_start_1
    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->RENDER3:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->RENDER3:Z

    :goto_1
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0x4100

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    const/4 v3, 0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v5

    div-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    neg-int v5, v5

    int-to-float v5, v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v6

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->defaultShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    const/4 v3, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->drawWithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    const/4 v3, 0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v5

    div-float/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    neg-int v5, v5

    int-to-float v5, v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v6

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->defaultShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->drawMapDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    const/4 v3, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    # KEYCODE_U used to flip screenShotMode while console IME is open; clear it
    # whenever commandsMode is on so HUD cannot stay blank after that toggle.
    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->commandsMode:Z

    if-eqz v2, :cond_screenshot_gate

    const/4 v2, 0x0

    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->screenShotMode:Z

    :cond_screenshot_gate
    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->screenShotMode:Z

    if-nez v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorManager:Lage/of/civilizations2/jakowski/lukasz/EditorManager;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_1
    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->drawFPS:Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_b

    if-eqz v2, :cond_2

    :try_start_2
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FPS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->iNumOfFPS:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v2, v3, v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_b

    :cond_2
    :goto_2
    :try_start_3
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/StackOverflowError; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_b

    :cond_3
    :goto_3
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isDesktop()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_4
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->requestRendering:Lage/of/civilizations2/jakowski/lukasz/AoCGame$RequestRendering;

    invoke-interface {v2}, Lage/of/civilizations2/jakowski/lukasz/AoCGame$RequestRendering;->update()V

    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_4
    move-exception v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    :try_start_4
    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->RENDER2:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->RENDER2:Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/StackOverflowError; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_b

    goto/16 :goto_1

    :catch_5
    move-exception v1

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v2, :cond_6

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_6
    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :try_start_5
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_3

    :catch_6
    move-exception v2

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :try_start_6
    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->RENDER:Z
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/StackOverflowError; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_b

    goto/16 :goto_1

    :catch_7
    move-exception v1

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v2, :cond_8

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_8
    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    goto :goto_3

    :catch_8
    move-exception v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    goto :goto_3

    :catch_9
    move-exception v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    goto :goto_3

    :catch_a
    move-exception v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    goto :goto_3

    :catch_b
    move-exception v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    goto :goto_3

    :cond_9
    const/high16 v2, 0x447a0000    # 1000.0f

    :try_start_7
    sget v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->FPS_LIMIT:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->renderStart:J

    sub-long/2addr v4, v6

    long-to-float v3, v4

    sub-float/2addr v2, v3

    float-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_e

    goto/16 :goto_3

    :catch_c
    move-exception v0

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v2, :cond_3

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catch_d
    move-exception v0

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v2, :cond_3

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catch_e
    move-exception v0

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v2, :cond_3

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catch_f
    move-exception v2

    goto/16 :goto_2

    :catch_10
    move-exception v2

    goto/16 :goto_2
.end method

.method public resize(II)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LANDSCAPE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0, p1, p2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->update(IIZ)V

    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    return-void

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    neg-int v1, p2

    neg-int v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->update(IIZ)V

    goto :goto_0

    :cond_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0, p1, p2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->update(IIZ)V

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    const/4 v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->updateRender(Z)V

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->updateRequestRendering(Z)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    invoke-super {p0}, Lcom/badlogic/gdx/ApplicationAdapter;->resume()V

    return-void
.end method

.method public scrolled(I)Z
    .locals 5

    const/4 v4, 0x1

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIsScrollableY_MenuHovered()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->updateScroll()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    if-ne p1, v4, :cond_1

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll:I

    neg-int v1, v1

    :goto_0
    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->scrollHoveredMenu_Y(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    :goto_1
    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->soundsManager:Lage/of/civilizations2/jakowski/lukasz/SoundsManager;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_CLICK:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->PERC_VOLUME_KEYBOARD:F

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->playSound(IF)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    return v4

    :cond_1
    :try_start_2
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll:I

    goto :goto_0

    :cond_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIsScrollableX_MenuHovered()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->updateScroll()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    if-ne p1, v4, :cond_3

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll:I

    neg-int v1, v1

    :goto_3
    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->scrollHoveredMenu_X(I)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    :try_start_3
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll:I

    goto :goto_3

    :cond_4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIsScrollable_Hovered_MenuElement()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->updateScroll()V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    if-ne p1, v4, :cond_5

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll:I

    neg-int v1, v1

    :goto_4
    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->scrollHoveredMenuElement(I)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    :try_start_4
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll:I

    goto :goto_4

    :cond_6
    if-ne p1, v4, :cond_7

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->getScrolled_ScaleUpdate()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->setNewCurrentScaleByButton2(F)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_7
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    :try_start_5
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->getScrolled_ScaleUpdate()F

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->setNewCurrentScaleByButton2(F)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_5
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_6
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_7
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public touchDown(IIII)Z
    .locals 3

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Touch;->setMousePosXY(II)V

    const/4 v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->touch:Lage/of/civilizations2/jakowski/lukasz/Touch;

    invoke-virtual {v1, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Touch;->actionDown(III)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorManager:Lage/of/civilizations2/jakowski/lukasz/EditorManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->touchDown(IIII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public touchDragged(III)Z
    .locals 8

    const/4 v7, 0x1

    :try_start_0
    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Touch;->setMousePosXY(II)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Input;->isTouched(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p3, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->touch:Lage/of/civilizations2/jakowski/lukasz/Touch;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Input;->getX(I)I

    move-result v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Input;->getY(I)I

    move-result v3

    sget-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Input;->getX(I)I

    move-result v4

    sget-object v5, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Input;->getY(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Touch;->actionMove(IIII)V

    :goto_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorManager:Lage/of/civilizations2/jakowski/lukasz/EditorManager;

    invoke-virtual {v1, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->touchDragged(III)V

    :goto_1
    return v7

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->touch:Lage/of/civilizations2/jakowski/lukasz/Touch;

    invoke-virtual {v1, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Touch;->actionMove(III)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public touchUp(IIII)Z
    .locals 7

    const/4 v6, 0x1

    :try_start_0
    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Touch;->setMousePosXY(II)V

    const/4 v1, 0x1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    if-ne p4, v6, :cond_1

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SPECTATOR_MODE:Z

    if-nez v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getActiveTurnState()Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    if-ne v1, v2, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovePoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeologyID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getIdeology(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE_OWN_PROVINCE:I

    if-lt v1, v2, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v1

    if-ltz v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivID()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->controlsArmyInProvince(II)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_FlagAction()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Game;->setProvinceID_PPM(II)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorManager:Lage/of/civilizations2/jakowski/lukasz/EditorManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/EditorManager;->touchUp(IIII)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_1
    return v6

    :cond_1
    :try_start_3
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->touch:Lage/of/civilizations2/jakowski/lukasz/Touch;

    invoke-virtual {v1, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Touch;->actionUp(III)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/StackOverflowError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->touch:Lage/of/civilizations2/jakowski/lukasz/Touch;

    invoke-virtual {v1, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Touch;->actionUp(III)V

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    :try_start_5
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->touch:Lage/of/civilizations2/jakowski/lukasz/Touch;

    invoke-virtual {v1, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Touch;->actionUp(III)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/StackOverflowError; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->touch:Lage/of/civilizations2/jakowski/lukasz/Touch;

    invoke-virtual {v1, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Touch;->actionUp(III)V

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    :try_start_7
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->touch:Lage/of/civilizations2/jakowski/lukasz/Touch;

    invoke-virtual {v1, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Touch;->actionUp(III)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/StackOverflowError; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/ArithmeticException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_5
    move-exception v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected final typeNumber(I)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x271

    sub-long/2addr v0, v2

    sget-wide v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMER_TIME:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sput p1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMBER:I

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMER_TIME:J

    return-void

    :cond_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMBER:I

    mul-int/lit8 v0, v0, 0xa

    sput v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMBER:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMBER:I

    add-int/2addr v0, p1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMBER:I

    goto :goto_0
.end method

.method public update()V
    .locals 2

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->countFPS()V

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->update()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    :goto_0
    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->update()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_7

    :cond_1
    :goto_1
    :try_start_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->update()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_b

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_4
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_5
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_6
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_7
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_8
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_9
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_a
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_b
    move-exception v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_2
.end method
