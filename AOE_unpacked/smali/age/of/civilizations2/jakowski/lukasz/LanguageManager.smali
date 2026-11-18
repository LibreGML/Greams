.class Lage/of/civilizations2/jakowski/lukasz/LanguageManager;
.super Ljava/lang/Object;
.source "LanguageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/LanguageManager$KeyOutput;
    }
.end annotation


# static fields
.field protected static translationsKeysMode:Z


# instance fields
.field private bundle:Lcom/badlogic/gdx/utils/I18NBundle;

.field private bundleCivs:Lcom/badlogic/gdx/utils/I18NBundle;

.field private bundleEvents:Lcom/badlogic/gdx/utils/I18NBundle;

.field private bundleLoading:Lcom/badlogic/gdx/utils/I18NBundle;

.field private fileHandle:Lcom/badlogic/gdx/files/FileHandle;

.field private fileHandleCivs:Lcom/badlogic/gdx/files/FileHandle;

.field private fileHandleEvents:Lcom/badlogic/gdx/files/FileHandle;

.field private fileHandleLoading:Lcom/badlogic/gdx/files/FileHandle;

.field protected iLoading_NumOfTexts:I

.field private keyOutput:Lage/of/civilizations2/jakowski/lukasz/LanguageManager$KeyOutput;

.field private locale:Ljava/util/Locale;

.field private localeCivs:Ljava/util/Locale;

.field private localeEvents:Ljava/util/Locale;

.field private localeLoading:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->iLoading_NumOfTexts:I

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "game/languages/events/Bundle"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->fileHandleEvents:Lcom/badlogic/gdx/files/FileHandle;

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->localeEvents:Ljava/util/Locale;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->fileHandleEvents:Lcom/badlogic/gdx/files/FileHandle;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->localeEvents:Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->bundleEvents:Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->initCivsBundle(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->initLoadingBundle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->updateKeyOutput()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "game/languages/Bundle"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->fileHandle:Lcom/badlogic/gdx/files/FileHandle;

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->locale:Ljava/util/Locale;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->fileHandle:Lcom/badlogic/gdx/files/FileHandle;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->bundle:Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->initCivsBundle(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->initLoadingBundle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->updateKeyOutput()V

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/LanguageManager;)Lcom/badlogic/gdx/utils/I18NBundle;
    .locals 0

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->bundle:Lcom/badlogic/gdx/utils/I18NBundle;

    return-object p0
.end method


# virtual methods
.method protected final dispose()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->fileHandle:Lcom/badlogic/gdx/files/FileHandle;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->bundle:Lcom/badlogic/gdx/utils/I18NBundle;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->fileHandleCivs:Lcom/badlogic/gdx/files/FileHandle;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->localeCivs:Ljava/util/Locale;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->bundleCivs:Lcom/badlogic/gdx/utils/I18NBundle;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->fileHandleLoading:Lcom/badlogic/gdx/files/FileHandle;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->localeLoading:Ljava/util/Locale;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->bundleLoading:Lcom/badlogic/gdx/utils/I18NBundle;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->fileHandleEvents:Lcom/badlogic/gdx/files/FileHandle;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->localeEvents:Ljava/util/Locale;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->bundleEvents:Lcom/badlogic/gdx/utils/I18NBundle;

    return-void
.end method

.method protected get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->keyOutput:Lage/of/civilizations2/jakowski/lukasz/LanguageManager$KeyOutput;

    invoke-interface {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager$KeyOutput;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected get(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->keyOutput:Lage/of/civilizations2/jakowski/lukasz/LanguageManager$KeyOutput;

    invoke-interface {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager$KeyOutput;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->keyOutput:Lage/of/civilizations2/jakowski/lukasz/LanguageManager$KeyOutput;

    invoke-interface {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager$KeyOutput;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->keyOutput:Lage/of/civilizations2/jakowski/lukasz/LanguageManager$KeyOutput;

    invoke-interface {v0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager$KeyOutput;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getCiv(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->bundleCivs:Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->bundleCivs:Lcom/badlogic/gdx/utils/I18NBundle;

    const/4 v2, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    :cond_0
    :try_start_2
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v0
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    const-string v1, "_NM"

    const-string v2, "/"

    const-string v3, "game/civilizations_editor/"

    if-eqz v0, :cond_1

    :try_start_3
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    return-object p1

    :catch_2
    :try_start_4
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    return-object p1

    :catch_3
    # Silent miss — avoid log spam on missing civ keys
    return-object p1
.end method

.method protected getLoading(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->bundleLoading:Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-wide/16 v1, 0x0

    sput-wide v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->loadingTime:J

    :catch_1
    return-object v0
.end method

.method protected final initCivsBundle(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "game/languages/civilizations/Bundle"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->fileHandleCivs:Lcom/badlogic/gdx/files/FileHandle;

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->localeCivs:Ljava/util/Locale;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->fileHandleCivs:Lcom/badlogic/gdx/files/FileHandle;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->localeCivs:Ljava/util/Locale;

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object p1

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->bundleCivs:Lcom/badlogic/gdx/utils/I18NBundle;

    return-void
.end method

.method protected final initLoadingBundle(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "game/languages/loading/Bundle"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->fileHandleLoading:Lcom/badlogic/gdx/files/FileHandle;

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->localeLoading:Ljava/util/Locale;

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->fileHandleLoading:Lcom/badlogic/gdx/files/FileHandle;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->localeLoading:Ljava/util/Locale;

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object p1

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->bundleLoading:Lcom/badlogic/gdx/utils/I18NBundle;

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "num: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "NumOfTexts"

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getLoading(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {p1, v2, v0}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getLoading(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->iLoading_NumOfTexts:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->iLoading_NumOfTexts:I

    :goto_0
    return-void
.end method

.method protected final updateKeyOutput()V
    .locals 1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->translationsKeysMode:Z

    if-eqz v0, :cond_0

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/LanguageManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->keyOutput:Lage/of/civilizations2/jakowski/lukasz/LanguageManager$KeyOutput;

    goto :goto_0

    :cond_0
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/LanguageManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->keyOutput:Lage/of/civilizations2/jakowski/lukasz/LanguageManager$KeyOutput;

    :goto_0
    return-void
.end method
