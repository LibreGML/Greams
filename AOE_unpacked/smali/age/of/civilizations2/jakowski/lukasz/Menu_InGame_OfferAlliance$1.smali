.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_OfferAlliance$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_OfferAlliance;
.source "Menu_InGame_OfferAlliance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_OfferAlliance;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_OfferAlliance;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_OfferAlliance;Ljava/lang/String;IIIII)V
    .locals 7

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_OfferAlliance$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_OfferAlliance;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_OfferAlliance;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method protected getWidth()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_OfferAlliance$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_OfferAlliance;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_OfferAlliance;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
