.class Lage/of/civilizations2/jakowski/lukasz/ConfigINI;
.super Ljava/lang/Object;
.source "ConfigINI.java"


# static fields
.field protected static fullscreen:Z

.field protected static iHeight:I

.field protected static iSamples:I

.field protected static iUIScale:I

.field protected static iWidth:I

.field protected static landscape:Z

.field public static newTopUI:Z

.field protected static vSync:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->newTopUI:Z

    sput v1, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iWidth:I

    sput v1, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iHeight:I

    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->fullscreen:Z

    sput v1, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iSamples:I

    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->vSync:Z

    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->landscape:Z

    sput v1, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iUIScale:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final readConfig()V
    .locals 8

    :try_start_0
    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v7, "config.ini"

    invoke-interface {v6, v7}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_2

    aget-object v6, v3, v2

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v4, v6

    const-string v7, "FULLSCREEN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->fullscreen:Z

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v7, "WIDTH"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iWidth:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v6, -0x1

    :try_start_2
    sput v6, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iWidth:I

    const/4 v6, -0x1

    sput v6, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iHeight:I

    const/4 v6, 0x1

    sput-boolean v6, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->fullscreen:Z

    const/4 v6, -0x1

    sput v6, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iSamples:I

    const/4 v6, 0x0

    sput-boolean v6, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->vSync:Z

    const/4 v6, 0x1

    sput-boolean v6, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->landscape:Z

    const/4 v6, -0x1

    sput v6, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iUIScale:I
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v6, 0x0

    :try_start_3
    aget-object v6, v4, v6

    const-string v7, "HEIGHT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iHeight:I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v6, -0x1

    :try_start_4
    sput v6, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iWidth:I

    const/4 v6, -0x1

    sput v6, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iHeight:I

    const/4 v6, 0x1

    sput-boolean v6, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->fullscreen:Z

    const/4 v6, -0x1

    sput v6, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iSamples:I

    const/4 v6, 0x0

    sput-boolean v6, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->vSync:Z

    const/4 v6, 0x1

    sput-boolean v6, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->newTopUI:Z

    const/4 v6, 0x1

    sput-boolean v6, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->landscape:Z

    const/4 v6, -0x1

    sput v6, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iUIScale:I
    :try_end_4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    sget-boolean v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGS:Z

    if-eqz v6, :cond_2

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :try_start_5
    aget-object v6, v4, v6

    const-string v7, "ANTIALIASING"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iSamples:I

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v7, "VSYNC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->vSync:Z

    goto/16 :goto_1

    :cond_6
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v7, "NEWTOPUI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->newTopUI:Z

    goto/16 :goto_1

    :cond_7
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v7, "LANDSCAPE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->landscape:Z

    goto/16 :goto_1

    :cond_8
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v7, "UISCALE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iUIScale:I
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1
.end method

.method protected static final saveConfig()V
    .locals 4

    const/4 v3, 0x1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "config.ini"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FULLSCREEN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->fullscreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIDTH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HEIGHT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NEWTOPUI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->newTopUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANTIALIASING="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iSamples:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VSYNC="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->vSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LANDSCAPE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->landscape:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UISCALE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->iUIScale:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    return-void
.end method
