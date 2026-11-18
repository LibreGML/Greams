.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SendGiftResources$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button_NS_Opinion;
.source "Menu_InGame_SendGiftResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SendGiftResources;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SendGiftResources;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SendGiftResources;IIIIIIII)V
    .locals 9

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SendGiftResources$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SendGiftResources;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_NS_Opinion;-><init>(IIIIIIII)V

    return-void
.end method


# virtual methods
.method protected getWidth()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SendGiftResources$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SendGiftResources;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_SendGiftResources;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
