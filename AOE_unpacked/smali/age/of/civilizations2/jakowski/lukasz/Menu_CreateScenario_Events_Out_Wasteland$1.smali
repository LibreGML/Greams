.class Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Out_Wasteland$1;
.super Lage/of/civilizations2/jakowski/lukasz/Slider_BG;
.source "Menu_CreateScenario_Events_Out_Wasteland.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Out_Wasteland;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Out_Wasteland;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Out_Wasteland;IIIIIII)V
    .locals 8

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Out_Wasteland$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Out_Wasteland;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Slider_BG;-><init>(IIIIIII)V

    return-void
.end method


# virtual methods
.method protected getDrawText()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_Out_Wasteland$1;->getCurrent()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "WontBeAWastelandAnymore"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "WillTurnIntoAWasteland"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
