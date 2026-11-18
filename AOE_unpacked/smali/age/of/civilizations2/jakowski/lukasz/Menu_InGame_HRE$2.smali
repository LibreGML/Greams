.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_HRE$2;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Elections;
.source "Menu_InGame_HRE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_HRE;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_HRE;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_HRE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_HRE$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_HRE;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Elections;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method protected getWidth()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_HRE$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_HRE;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_HRE;->getW()I

    move-result v0

    return v0
.end method
