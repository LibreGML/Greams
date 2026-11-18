.class Lage/of/civilizations2/jakowski/lukasz/Province_FogofWar;
.super Ljava/lang/Object;
.source "Province_FogofWar.java"


# instance fields
.field private isVisible:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_FogofWar;->isVisible:Z

    return-void
.end method


# virtual methods
.method protected final getIsVisible()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_FogofWar;->isVisible:Z

    return v0
.end method

.method protected final setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_FogofWar;->isVisible:Z

    return-void
.end method
