.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_Plunder;
.source "Menu_InGame_Plunder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;Ljava/lang/String;IIIII)V
    .locals 7

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_Plunder;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->iProvinceID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getActiveProvinceID()I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToProvinceID(I)V

    return-void
.end method

.method protected getWidth()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Plunder;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
