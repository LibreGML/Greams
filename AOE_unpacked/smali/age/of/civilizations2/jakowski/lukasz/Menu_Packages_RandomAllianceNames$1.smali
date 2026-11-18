.class Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ReflectedBG;
.source "Menu_Packages_RandomAllianceNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;Ljava/lang/String;IIIIIZ)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_ReflectedBG;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method protected final getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f70e560    # 0.941f

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames$1;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames$1;->getCheckboxState()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ecac083    # 0.396f

    const v2, 0x3f1374bc    # 0.576f

    const v3, 0x3c449ba6    # 0.012f

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f249ba6    # 0.643f

    const v2, 0x3de76c8b    # 0.113f

    const v3, 0x3c03126f    # 0.008f

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3f2c8b44    # 0.674f

    const v1, 0x3db851ec    # 0.09f

    const v2, 0x3d872b02    # 0.066f

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    :goto_0
    return-object p1
.end method
