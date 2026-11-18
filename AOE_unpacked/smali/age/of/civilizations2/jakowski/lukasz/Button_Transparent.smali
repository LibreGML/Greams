.class Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;
.super Lage/of/civilizations2/jakowski/lukasz/Button;
.source "Button_Transparent.java"


# direct methods
.method protected constructor <init>(IIIIIZ)V
    .locals 12

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button;-><init>()V

    const-string v1, ""

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-super/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Button;->init(Ljava/lang/String;IIIIIZZZZLage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;->BUTTON_TRANSPARENT:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    move-object v1, p0

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    return-void
.end method

.method protected constructor <init>(IIIIZ)V
    .locals 12

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Button;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-super/range {v0 .. v11}, Lage/of/civilizations2/jakowski/lukasz/Button;->init(Ljava/lang/String;IIIIIZZZZLage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;->BUTTON_TRANSPARENT:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    move-object v1, p0

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    return-void
.end method
