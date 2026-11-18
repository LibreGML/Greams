.class Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Options$9;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Menu;
.source "Menu_Settings_Options.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Options;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Options;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Options;Ljava/lang/String;IIIIIZZ)V
    .locals 9

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Options$9;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Settings_Options;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZZ)V

    return-void
.end method


# virtual methods
.method protected getCheckboxState()Z
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsManager:Lage/of/civilizations2/jakowski/lukasz/SettingsManager;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsManager;->CONFIRM_END_TURN:Z

    return v0
.end method
