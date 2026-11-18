.class Lage/of/civilizations2/jakowski/lukasz/AI_Build;
.super Ljava/lang/Object;
.source "AI_Build.java"


# instance fields
.field protected iMaxDangerLevel:I

.field protected iProvincesToBuild_NumOfElements:I

.field protected lProvincesToBuild:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Build;->lProvincesToBuild:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Build;->iProvincesToBuild_NumOfElements:I

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AI_Build;->iMaxDangerLevel:I

    return-void
.end method


# virtual methods
.method protected build(IIZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getMoney(I)J
    .locals 5

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->getMoney_MinReserve(I)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMoney()J

    move-result-wide v0

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/AI_Style;->getMoney_MinReserve(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method protected getNumOfAlreadyBuilt(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
