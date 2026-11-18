.class Lage/of/civilizations2/jakowski/lukasz/SoundsManager;
.super Ljava/lang/Object;
.source "SoundsManager.java"


# static fields
.field private static final CONSOLE_MUSIC_TITLE:Ljava/lang/String; = "Scheming_Weasel.ogg"

.field private static final DEFEAT_MUSIC:Ljava/lang/String; = "Sudden_Defeat.ogg"

.field protected static PERC_VOLUME_KEYBOARD:F = 0.0f

.field protected static PERC_VOLUME_SELECT_PROVINCE:F = 0.0f

.field protected static SOUND_ACTION_MOVE:I = 0x0

.field protected static SOUND_ASSIMILATE:I = 0x0

.field protected static SOUND_BUILD:I = 0x0

.field protected static SOUND_CLICK:I = 0x0

.field protected static SOUND_CLICK2:I = 0x0

.field protected static SOUND_CLICK3:I = 0x0

.field protected static SOUND_CROW:I = 0x0

.field protected static SOUND_DIPLOMACY:I = 0x0

.field protected static SOUND_FARM:I = 0x0

.field protected static SOUND_GEIGER:I = 0x0

.field protected static SOUND_GOLD:I = 0x0

.field protected static SOUND_INVADE:I = 0x0

.field protected static SOUND_LIBRARY:I = 0x0

.field protected static SOUND_MOVE_ARMY:I = 0x0

.field protected static SOUND_MOVE_ARMY2:I = 0x0

.field protected static SOUND_MOVE_REGROUP:I = 0x0

.field protected static SOUND_NUCLEAR_EXPLOSION:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static SOUND_PLUNDER:I = 0x0

.field protected static SOUND_PORT:I = 0x0

.field protected static SOUND_PROVINCE:I = 0x0

.field protected static SOUND_RANDOM:I = 0x0

.field protected static SOUND_RECRUIT:I = 0x0

.field protected static SOUND_SEND:I = 0x0

.field protected static SOUND_SEND2:I = 0x0

.field protected static SOUND_SEND3:I = 0x0

.field protected static SOUND_SEND4:I = 0x0

.field protected static SOUND_SHAFT:I = 0x0

.field protected static SOUND_SUPPLY:I = 0x0

.field protected static SOUND_TECHNOLOGY:I = 0x0

.field protected static SOUND_WAR:I = 0x0

.field protected static SOUND_WAR2:I = 0x0

.field protected static SOUND_WORKSHOP:I = 0x0

.field private static final START_MUSIC:Ljava/lang/String; = "Impact_Allegretto.ogg"

.field protected static isPlayingConsoleMusic:Z


# instance fields
.field private currentMusic:Lcom/badlogic/gdx/audio/Music;

.field private iCurrentMusicID:I

.field private lSounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/audio/Sound;",
            ">;"
        }
    .end annotation
.end field

.field private lTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private masterVolume:F

.field private musicVolume:F

.field private final oR:Ljava/util/Random;

.field private soundsVolume:F

.field protected timerCurrent:Ljava/util/Timer;

.field protected timerCurrentTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_NUCLEAR_EXPLOSION:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->isPlayingConsoleMusic:Z

    const v0, 0x3f733333    # 0.95f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->PERC_VOLUME_SELECT_PROVINCE:F

    const v0, 0x3f666666    # 0.9f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->PERC_VOLUME_KEYBOARD:F

    return-void
.end method

.method protected constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    const v5, 0x3ecccccd    # 0.4f

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->musicVolume:F

    const/4 v5, 0x0

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    const v5, 0x3f0ccccd    # 0.55f

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->soundsVolume:F

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->masterVolume:F

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    iput-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->oR:Ljava/util/Random;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lSounds:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v6, "music/Age_of_Civilizations"

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    aget-object v6, v2, v0

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->randomizePlayList()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->playStartMusic()V

    const-string v5, "click.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_CLICK:I

    const-string v5, "click2.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_CLICK2:I

    const-string v5, "click3.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_CLICK3:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_CLICK:I

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_PROVINCE:I

    const-string v5, "move_army.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_MOVE_ARMY:I

    const-string v5, "move_army2.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_MOVE_ARMY2:I

    const-string v5, "geiger.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_GEIGER:I

    const-string v5, "move_army_re.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_MOVE_REGROUP:I

    const-string v5, "gold2.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_GOLD:I

    const-string v5, "diplomacy.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_DIPLOMACY:I

    const-string v5, "technology.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_TECHNOLOGY:I

    const-string v5, "action_move.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_ACTION_MOVE:I

    const-string v5, "metal.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_RECRUIT:I

    const-string v5, "shaft.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_SHAFT:I

    const-string v5, "war.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_WAR:I

    const-string v5, "war2.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_WAR2:I

    const-string v5, "build.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_BUILD:I

    const-string v5, "send.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_SEND:I

    const-string v5, "send2.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_SEND2:I

    const-string v5, "send3.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_SEND3:I

    const-string v5, "send4.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_SEND4:I

    const-string v5, "plunder.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_PLUNDER:I

    const-string v5, "crow.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_CROW:I

    const-string v5, "assimilate.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_ASSIMILATE:I

    const-string v5, "workshop.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_WORKSHOP:I

    const-string v5, "farm.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_FARM:I

    const-string v5, "port.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_PORT:I

    const-string v5, "supply.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_SUPPLY:I

    const-string v5, "library.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_LIBRARY:I

    const-string v5, "random.ogg"

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v5

    sput v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_RANDOM:I

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_NUCLEAR_EXPLOSION:Ljava/util/ArrayList;

    const-string v6, "nuclear_explosion1.ogg"

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_NUCLEAR_EXPLOSION:Ljava/util/ArrayList;

    const-string v6, "nuclear_explosion2.ogg"

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_NUCLEAR_EXPLOSION:Ljava/util/ArrayList;

    const-string v6, "nuclear_explosion3.ogg"

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_NUCLEAR_EXPLOSION:Ljava/util/ArrayList;

    const-string v6, "nuclear_explosion4.ogg"

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_NUCLEAR_EXPLOSION:Ljava/util/ArrayList;

    const-string v6, "nuclear_explosion5.ogg"

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_NUCLEAR_EXPLOSION:Ljava/util/ArrayList;

    const-string v6, "nuclear_explosion6.ogg"

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_NUCLEAR_EXPLOSION:Ljava/util/ArrayList;

    const-string v6, "nuclear_explosion7.ogg"

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->VOLUME_MASTER:F

    iput v5, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->masterVolume:F

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->VOLUME_SOUNDS:F

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->setSoundsVolume(F)V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget v5, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->VOLUME_MUSIC:F

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->setMusicVolume(F)V

    return-void
.end method

.method protected static final getSend()I
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_SEND4:I

    :goto_0
    return v0

    :pswitch_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_SEND:I

    goto :goto_0

    :pswitch_1
    sget v0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_SEND2:I

    goto :goto_0

    :pswitch_2
    sget v0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_SEND3:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected final addSound(Ljava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lSounds:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sounds/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Audio;->newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lSounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected final dispose()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lSounds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Music;->dispose()V

    return-void

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lSounds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Sound;->dispose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final disposeCurrentMusic()V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->stop()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->dispose()V

    :cond_0
    return-void
.end method

.method protected final getCurrentMusicTittle()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ".ogg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ".ogg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method protected final getLastMusicTittle()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ".ogg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ".ogg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method protected final getMasterVolume()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->masterVolume:F

    return v0
.end method

.method protected getMusicCurrent()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Music;->getPosition()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    float-to-int v1, v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final getMusicVolume()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->musicVolume:F

    return v0
.end method

.method protected final getNextMusicTittle()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ".ogg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ".ogg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method protected final getSoundsVolume()F
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->soundsVolume:F

    return v0
.end method

.method protected getlTitles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    return-object v0
.end method

.method protected final loadMusic(I)V
    .locals 4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->disposeCurrentMusic()V

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    :try_start_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "music/"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->musicVolume:F

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->masterVolume:F

    mul-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SoundsManager$2;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/SoundsManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->isPlayingConsoleMusic:Z
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->getCurrentMusicTittle()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v1, 0x1194

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected final loadNextMusic()V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->disposeCurrentMusic()V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    :cond_0
    :try_start_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "music/"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->musicVolume:F

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->masterVolume:F

    mul-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SoundsManager$1;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/SoundsManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->isPlayingConsoleMusic:Z
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->getCurrentMusicTittle()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v1, 0x1194

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected final loadPreviousMusic()V
    .locals 5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->disposeCurrentMusic()V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    :cond_0
    :try_start_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "music/"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->musicVolume:F

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->masterVolume:F

    mul-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SoundsManager$3;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/SoundsManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->isPlayingConsoleMusic:Z
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->getCurrentMusicTittle()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v1, 0x1194

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected final playConsoleMusic()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->disposeCurrentMusic()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "music/Scheming_Weasel.ogg"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->musicVolume:F

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->masterVolume:F

    mul-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SoundsManager$4;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/SoundsManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->isPlayingConsoleMusic:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected final playMoveArmy()I
    .locals 3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->oR:Ljava/util/Random;

    const/16 v2, 0xae

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    rem-int/lit8 v0, v1, 0x2

    packed-switch v0, :pswitch_data_0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_MOVE_ARMY:I

    :goto_0
    return v1

    :pswitch_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_MOVE_ARMY2:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected final playSound(I)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->playSound(IF)V

    return-void
.end method

.method protected final playSound(IF)V
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lSounds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Sound;->stop()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lSounds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Sound;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->soundsVolume:F

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->masterVolume:F

    mul-float/2addr v1, v2

    mul-float/2addr v1, p2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Sound;->play(F)J

    return-void
.end method

.method protected final playStartMusic()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->disposeCurrentMusic()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "music/Impact_Allegretto.ogg"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->musicVolume:F

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->masterVolume:F

    mul-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SoundsManager$5;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/SoundsManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected final playSuperEventMusic(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->disposeCurrentMusic()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".ogg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->musicVolume:F

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->masterVolume:F

    mul-float v1, v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SoundsManager$4;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/SoundsManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->isPlayingConsoleMusic:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method protected final randomizePlayList()V
    .locals 6

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    return-void

    :cond_0
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->lTitles:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method protected final setMasterVolume(F)V
    .locals 1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->masterVolume:F

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->getMusicVolume()F

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->setMusicVolume(F)V

    return-void
.end method

.method protected setMusicCurrent(F)V
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/audio/Music;->setPosition(F)V

    return-void
.end method

.method protected final setMusicVolume(F)V
    .locals 3

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->musicVolume:F

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->musicVolume:F

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->masterVolume:F

    mul-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->musicVolume:F

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->pause()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final setSoundsVolume(F)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->soundsVolume:F

    return-void
.end method

.method protected startCurrentTimer()V
    .locals 4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->timerCurrent:Ljava/util/Timer;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->timerCurrentTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
