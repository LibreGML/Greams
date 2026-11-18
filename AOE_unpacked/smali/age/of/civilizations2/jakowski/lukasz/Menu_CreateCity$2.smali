.class Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity$2;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Game;
.source "Menu_CreateCity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;Ljava/lang/String;IIIZ)V
    .locals 6

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button_Game;-><init>(Ljava/lang/String;IIIZ)V

    return-void
.end method


# virtual methods
.method protected final getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3cf5c28f    # 0.03f

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateCity$2;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f70e560    # 0.941f

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3f2c8b44    # 0.674f

    const v1, 0x3db851ec    # 0.09f

    const v2, 0x3d872b02    # 0.066f

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    :goto_0
    return-object p1
.end method
