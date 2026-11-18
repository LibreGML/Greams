.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left$7;
.super Lage/of/civilizations2/jakowski/lukasz/Text_Economy_Balance;
.source "Menu_InGame_FlagAction_Bot_Left.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 7

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left$7;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_FlagAction_Bot_Left;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Text_Economy_Balance;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method protected getSFX()I
    .locals 1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_GOLD:I

    return v0
.end method
