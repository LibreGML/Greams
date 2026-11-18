.class Lage/of/civilizations2/jakowski/lukasz/View_Type;
.super Ljava/lang/Object;
.source "View_Type.java"


# instance fields
.field protected canMoveArmy:Z

.field protected drawCivNamesOver:Z

.field protected drawProvinces:Lage/of/civilizations2/jakowski/lukasz/Game_Render_Province$DrawProvinces;

.field protected oRenderer:Lage/of/civilizations2/jakowski/lukasz/Game_Render$Renderer;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->drawCivNamesOver:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/View_Type;->canMoveArmy:Z

    return-void
.end method


# virtual methods
.method protected disableViewAction()V
    .locals 0

    return-void
.end method

.method protected enableViewAction()V
    .locals 0

    return-void
.end method

.method protected getProvinceInformations()Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected setActiveProvinceAction()V
    .locals 0

    return-void
.end method

.method protected updateActiveCivInfo_ExtraAction(I)V
    .locals 0

    return-void
.end method

.method protected updateActiveProvinceID_ExtraAction(II)V
    .locals 0

    return-void
.end method
