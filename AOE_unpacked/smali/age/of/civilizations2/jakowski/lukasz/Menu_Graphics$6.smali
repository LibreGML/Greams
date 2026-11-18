.class Lage/of/civilizations2/jakowski/lukasz/Menu_Graphics$6;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Menu;
.source "Menu_Graphics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_Graphics;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Graphics;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Graphics;Ljava/lang/String;IIIIIZZ)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_Graphics$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Graphics;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZZ)V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 2

    sget-boolean p1, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->vSync:Z

    xor-int/lit8 p1, p1, 0x1

    sput-boolean p1, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->vSync:Z

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->saveConfig()V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "GameNeedsToBeRestartedToApplyTheChanges"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    const/16 v0, 0x1770

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V

    return-void
.end method

.method protected getCheckboxState()Z
    .locals 1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/ConfigINI;->vSync:Z

    return v0
.end method
