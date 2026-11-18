.class Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectProvinces$2;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Game_Checkbox;
.source "Menu_CreateScenario_Events_SelectProvinces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectProvinces;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectProvinces;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectProvinces;Ljava/lang/String;IIIIZZ)V
    .locals 8

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectProvinces$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_SelectProvinces;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Game_Checkbox;-><init>(Ljava/lang/String;IIIIZZ)V

    return-void
.end method


# virtual methods
.method protected getCheckboxState()Z
    .locals 1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->selectMode:Z

    return v0
.end method
