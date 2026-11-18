.class public final Lage/of/civilizations2/jakowski/lukasz/ScenarioExport;
.super Ljava/lang/Object;
.source "ScenarioExport.java"


# static fields
.field public static final EXPORT_ROOT:Ljava/lang/String; = "Download/GemorinScenarios/"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static activeMapPath()Ljava/lang/String;
    .registers 2

    .line 103
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    if-eqz v0, :cond_13

    .line 104
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_14

    if-lez v1, :cond_13

    .line 106
    return-object v0

    .line 110
    :cond_13
    goto :goto_15

    .line 109
    :catchall_14
    move-exception v0

    .line 111
    :goto_15
    const-string v0, "TZ/"

    return-object v0
.end method

.method private static appendExportIndex(Ljava/lang/String;)V
    .registers 6

    .line 116
    const-string v0, ";"

    :try_start_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "Download/GemorinScenarios/Age_of_Civilizations"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 117
    nop

    .line 118
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_97

    const-string v3, ""

    if-eqz v2, :cond_1b

    .line 119
    :try_start_13
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 120
    if-nez v2, :cond_1a

    .line 121
    goto :goto_1b

    .line 120
    :cond_1a
    move-object v3, v2

    .line 124
    :cond_1b
    :goto_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_96

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    goto :goto_96

    .line 127
    :cond_5f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7c

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    :cond_7c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_95
    .catchall {:try_start_13 .. :try_end_95} :catchall_97

    .line 132
    goto :goto_98

    .line 125
    :cond_96
    :goto_96
    return-void

    .line 131
    :catchall_97
    move-exception p0

    .line 133
    :goto_98
    return-void
.end method

.method public static exportAllLocal()I
    .registers 6

    .line 40
    nop

    .line 42
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ScenarioExport;->activeMapPath()Ljava/lang/String;

    move-result-object v1

    .line 43
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "map/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "scenarios/Age_of_Civilizations"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-nez v2, :cond_31

    .line 45
    const-string v1, "No local scenarios"

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/ScenarioExport;->toast(Ljava/lang/String;Z)V

    .line 46
    return v0

    .line 48
    :cond_31
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_3b
    .catchall {:try_start_2 .. :try_end_3b} :catchall_82

    .line 49
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3d
    :try_start_3d
    array-length v4, v1

    if-ge v2, v4, :cond_5f

    .line 50
    aget-object v4, v1, v2

    if-eqz v4, :cond_4b

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_4d

    :cond_4b
    const-string v4, ""

    .line 51
    :goto_4d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_54

    .line 52
    goto :goto_5c

    .line 54
    :cond_54
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ScenarioExport;->exportTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5c

    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 49
    :cond_5c
    :goto_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 58
    :cond_5f
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ScenarioExport;->writePackHelp()V

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scenarios to Download/GemorinScenarios"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/ScenarioExport;->toast(Ljava/lang/String;Z)V
    :try_end_7f
    .catchall {:try_start_3d .. :try_end_7f} :catchall_80

    .line 63
    goto :goto_8c

    .line 60
    :catchall_80
    move-exception v1

    goto :goto_84

    :catchall_82
    move-exception v1

    const/4 v3, 0x0

    .line 61
    :goto_84
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 62
    const-string v1, "Export all failed"

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/ScenarioExport;->toast(Ljava/lang/String;Z)V

    .line 64
    :goto_8c
    return v3
.end method

.method public static exportCurrent()V
    .registers 3

    .line 24
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_GAME_DATA_TAG:Ljava/lang/String;

    .line 25
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_29

    .line 28
    :cond_b
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ScenarioExport;->exportTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    if-eqz v1, :cond_28

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exported: Download/GemorinScenarios/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ScenarioExport;->toast(Ljava/lang/String;Z)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_2a

    .line 35
    :cond_28
    goto :goto_34

    .line 26
    :cond_29
    :goto_29
    return-void

    .line 32
    :catchall_2a
    move-exception v0

    .line 33
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 34
    const-string v0, "Export failed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ScenarioExport;->toast(Ljava/lang/String;Z)V

    .line 36
    :goto_34
    return-void
.end method

.method public static exportTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 71
    const/4 v0, 0x0

    if-eqz p0, :cond_a7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a7

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    if-nez v1, :cond_f

    goto/16 :goto_a7

    .line 74
    :cond_f
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ScenarioExport;->activeMapPath()Ljava/lang/String;

    move-result-object v1

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "scenarios/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v3, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-nez v3, :cond_43

    .line 78
    return-object v0

    .line 80
    :cond_43
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download/GemorinScenarios/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 83
    :try_start_60
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 84
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->deleteDirectory()V
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_6a

    .line 87
    :cond_69
    goto :goto_6b

    .line 86
    :catchall_6a
    move-exception v2

    .line 88
    :goto_6b
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->mkdirs()V

    .line 89
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/files/FileHandle;->copyTo(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 90
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/ScenarioExport;->appendExportIndex(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ScenarioExport;->writePackHelp()V

    .line 94
    :try_start_77
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_82

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_93

    :cond_82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_93
    .catchall {:try_start_77 .. :try_end_93} :catchall_94

    :goto_93
    return-object p0

    .line 96
    :catchall_94
    move-exception v0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 72
    :cond_a7
    :goto_a7
    return-object v0
.end method

.method private static toast(Ljava/lang/String;Z)V
    .registers 3

    .line 158
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    if-eqz v0, :cond_15

    .line 159
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    .line 160
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    if-eqz p1, :cond_10

    const/16 p1, 0x1194

    goto :goto_12

    :cond_10
    const/16 p1, 0xdac

    :goto_12
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    .line 163
    :cond_15
    goto :goto_17

    .line 162
    :catchall_16
    move-exception p0

    .line 164
    :goto_17
    return-void
.end method

.method private static writePackHelp()V
    .registers 3

    .line 137
    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "Download/GemorinScenarios/HOW_TO_PACK.txt"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 138
    const-string v1, "Gemorin scenario export (no root needed)\r\n=====================================\r\n1. Connect phone by USB, or use Files app.\r\n2. Open: Download / GemorinScenarios /\r\n3. Copy each <tag> folder to PC:\r\n   AOE_unpacked/assets/map/TZ/scenarios/<tag>/\r\n4. Append <tag>; to:\r\n   AOE_unpacked/assets/map/TZ/scenarios/Age_of_Civilizations\r\n5. Or run on PC:\r\n   python tools/import_exported_scenarios.py\r\n   (pulls via adb from Download/GemorinScenarios)\r\n6. Rebuild APK.\r\n"

    .line 151
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    .line 153
    goto :goto_10

    .line 152
    :catchall_f
    move-exception v0

    .line 154
    :goto_10
    return-void
.end method
