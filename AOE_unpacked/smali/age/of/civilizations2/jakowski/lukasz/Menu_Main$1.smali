.class Lage/of/civilizations2/jakowski/lukasz/Menu_Main$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Rate;
.source "Menu_Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_Main;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Main;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Main;Ljava/lang/String;IIIIIZ)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_Main$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Main;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_MainMenu_Rate;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 2

    :try_start_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->gameRated:Z

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->saveSettings()V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    const-string v0, "https://libregml.github.io/"

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Net;->openURI(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "NoData"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
