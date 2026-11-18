.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CreateAVassal_Info_Stats$2;
.super Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Icon;
.source "Menu_InGame_CreateAVassal_Info_Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CreateAVassal_Info_Stats;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CreateAVassal_Info_Stats;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CreateAVassal_Info_Stats;Ljava/lang/String;III)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CreateAVassal_Info_Stats$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CreateAVassal_Info_Stats;

    invoke-direct {p0, p2, p3, p4, p5}, Lage/of/civilizations2/jakowski/lukasz/Text_LeftSide_Icon;-><init>(Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method protected buildElementHover()V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getHover_PopulationOfCiv_CreateAVassal()Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CreateAVassal_Info_Stats$2;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 2

    if-eqz p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_POPULATION_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CreateAVassal_Info_Stats$2;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CreateAVassal_Info_Stats$2;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_POPULATION_HOVER:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_POPULATION:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3f333333    # 0.7f

    const v1, 0x3f47ae14    # 0.78f

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    :goto_0
    return-object p1
.end method
