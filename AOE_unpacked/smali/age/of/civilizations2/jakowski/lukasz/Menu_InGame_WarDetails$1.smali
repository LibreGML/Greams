.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_WarDetails$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_WarDetails_WarResult;
.source "Menu_InGame_WarDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_WarDetails;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_WarDetails;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_WarDetails;IIIIII)V
    .locals 7

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_WarDetails$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_WarDetails;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_WarDetails_WarResult;-><init>(IIIIII)V

    return-void
.end method


# virtual methods
.method protected getWidth()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_WarDetails$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_WarDetails;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_WarDetails;->getW()I

    move-result v0

    return v0
.end method
