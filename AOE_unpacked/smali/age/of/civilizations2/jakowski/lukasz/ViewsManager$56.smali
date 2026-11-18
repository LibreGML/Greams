.class Lage/of/civilizations2/jakowski/lukasz/ViewsManager$56;
.super Lage/of/civilizations2/jakowski/lukasz/View_Type;
.source "ViewsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/ViewsManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/ViewsManager;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager$56;->this$0:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/View_Type;-><init>()V

    return-void
.end method


# virtual methods
.method protected enableViewAction()V
    .locals 2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->updateMaxPopulationOfCivilization(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->PROVINCE_COLOR_ANIMATION_TIMER:J

    return-void
.end method

.method protected getProvinceInformations()Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected setActiveProvinceAction()V
    .locals 2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->updateMaxPopulationOfCivilization(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province;->PROVINCE_COLOR_ANIMATION_TIMER:J

    return-void
.end method
