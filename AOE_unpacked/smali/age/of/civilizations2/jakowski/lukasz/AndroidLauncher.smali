.class public Lage/of/civilizations2/jakowski/lukasz/AndroidLauncher;
.super Lcom/badlogic/gdx/backends/android/AndroidApplication;
.source "AndroidLauncher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onCreate(Landroid/os/Bundle;)V

    # Performance-tuned LibGDX config: no sensors, no MSAA, lean audio
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {v1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    iput-boolean v8, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useImmersiveMode:Z

    iput-boolean v8, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->hideStatusBar:Z

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useAccelerometer:Z

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useCompass:Z

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGyroscope:Z

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useRotationVectorSensor:Z

    iput v0, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->numSamples:I

    const/16 v2, 0x8

    iput v2, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->maxSimultaneousSounds:I

    # RGBA8888 — MuMu/x86 bridge rejects some RGB565 EGL configs (eglCreateContext IAE)
    const/16 v2, 0x8

    iput v2, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    iput v2, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    iput v2, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    iput v2, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGL30:Z

    const/4 v2, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "config.ini"

    invoke-virtual {p0, v7}, Lage/of/civilizations2/jakowski/lukasz/AndroidLauncher;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v6, ";"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v5

    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v5, v6

    const-string v7, "LANDSCAPE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    const/4 v6, 0x6

    invoke-virtual {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/AndroidLauncher;->setRequestedOrientation(I)V

    :goto_2
    new-instance v6, Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    new-instance v7, Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler;

    invoke-direct {v7, p0}, Lage/of/civilizations2/jakowski/lukasz/AndroidLinkHandler;-><init>(Landroid/app/Activity;)V

    invoke-direct {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;-><init>(Lage/of/civilizations2/jakowski/lukasz/LinkHandler;)V

    invoke-virtual {p0, v6, v1}, Lage/of/civilizations2/jakowski/lukasz/AndroidLauncher;->initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    :try_start_2
    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    check-cast v6, Lcom/badlogic/gdx/backends/android/AndroidFiles;

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/backends/android/AndroidFiles;->setAPKExpansion(II)Z
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    return-void

    :catch_1
    move-exception v0

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v8}, Lage/of/civilizations2/jakowski/lukasz/AndroidLauncher;->setRequestedOrientation(I)V

    goto :goto_2

    :catch_2
    move-exception v6

    goto :goto_3

    :catch_3
    move-exception v6

    goto :goto_1

    :catch_4
    move-exception v6

    goto :goto_1
.end method
