.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build_All$6;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_Demand;
.source "Menu_InGame_Build_All.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build_All;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build_All;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build_All;Ljava/lang/String;IIII)V
    .locals 6

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build_All$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build_All;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Diplomacy_Demand;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fBuildWorkshop:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fBuildWorkshop:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCheckboxState()Z
    .locals 1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/BuildingsManager;->fBuildWorkshop:Z

    return v0
.end method

.method protected getWidth()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build_All$6;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build_All;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_Build_All;->getElementW()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
