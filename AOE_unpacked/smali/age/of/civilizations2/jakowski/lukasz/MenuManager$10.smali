.class Lage/of/civilizations2/jakowski/lukasz/MenuManager$10;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/MenuManager$BuildProvinceHover_Informations;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateBuildProvinceHoverInformation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/MenuManager;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/MenuManager;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapScale()Lage/of/civilizations2/jakowski/lukasz/Map_Scale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Scale;->getCurrentScale()F

    move-result v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Game_Render;->DISABLE_INNER_BORDERS:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->access$202(Lage/of/civilizations2/jakowski/lukasz/MenuManager;Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;)Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    return-void

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuManager$10;->this$0:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveView()Lage/of/civilizations2/jakowski/lukasz/View_Type;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/View_Type;->getProvinceInformations()Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    move-result-object v1

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->access$202(Lage/of/civilizations2/jakowski/lukasz/MenuManager;Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;)Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    return-void
.end method
