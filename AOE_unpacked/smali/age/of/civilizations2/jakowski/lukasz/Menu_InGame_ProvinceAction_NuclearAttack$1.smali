.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Game_NuclearAttack;
.source "Menu_InGame_ProvinceAction_NuclearAttack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;Ljava/lang/String;IIIZ)V
    .locals 6

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Game_NuclearAttack;-><init>(Ljava/lang/String;IIIZ)V

    return-void
.end method


# virtual methods
.method protected drawMenuElementHover2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack$1;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_ProvinceAction_NuclearAttack$1;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-interface {v0, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;->drawAlwaysOver(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_0
    return-void
.end method
