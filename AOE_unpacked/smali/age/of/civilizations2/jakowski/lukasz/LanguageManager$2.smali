.class Lage/of/civilizations2/jakowski/lukasz/LanguageManager$2;
.super Ljava/lang/Object;
.source "LanguageManager.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/LanguageManager$KeyOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->updateKeyOutput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/LanguageManager;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->access$000(Lage/of/civilizations2/jakowski/lukasz/LanguageManager;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    # Silent miss — logging every missing key kills FPS
    return-object p1
.end method

.method public get(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->access$000(Lage/of/civilizations2/jakowski/lukasz/LanguageManager;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->access$000(Lage/of/civilizations2/jakowski/lukasz/LanguageManager;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LanguageManager$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->access$000(Lage/of/civilizations2/jakowski/lukasz/LanguageManager;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p1
.end method
