.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_InGame_CivInfo_Stats.java"


# direct methods
.method protected constructor <init>()V
    .locals 14

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$1;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;Ljava/lang/String;II)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$2;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    add-int/lit8 v10, v1, -0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v11, v1, 0x3

    sget v12, Lage/of/civilizations2/jakowski/lukasz/Images;->population:I

    const-string v9, ""

    move-object v7, v0

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;Ljava/lang/String;III)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$3;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    invoke-direct {v0, p0, v3, v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;Ljava/lang/String;II)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$4;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v1, v4

    add-int/lit8 v10, v1, -0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int v11, v1, v4

    sget v12, Lage/of/civilizations2/jakowski/lukasz/Images;->city:I

    const-string v9, "3"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;Ljava/lang/String;III)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$5;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v7

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-direct {v0, p0, v3, v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;Ljava/lang/String;II)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$6;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v1, v4

    sub-int/2addr v1, v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v7

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const-string v5, "3"

    invoke-direct {v0, p0, v5, v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;Ljava/lang/String;II)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$7;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v9, v4, 0x3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v7

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v10, v4, v5

    const/4 v13, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;IILjava/util/List;Ljava/util/List;Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$8;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v5, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->graphCircleDraw:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->getWidth()I

    move-result v7

    add-int/2addr v5, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v5, v7

    invoke-direct {v1, p0, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;Ljava/lang/String;II)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$9;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    add-int/lit8 v10, v4, -0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v7

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v4, v5

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->graphCircleDraw:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x3

    add-int v11, v4, v5

    sget v12, Lage/of/civilizations2/jakowski/lukasz/Images;->technology:I

    const-string v9, ""

    move-object v7, v1

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;Ljava/lang/String;III)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Text_CivInfo;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v5, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v7

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->graphCircleDraw:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->getWidth()I

    move-result v7

    add-int/2addr v5, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v5, v7

    invoke-direct {v1, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Text_CivInfo;-><init>(Ljava/lang/String;II)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$10;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    add-int/lit8 v10, v3, -0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v3, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->graphCircleDraw:Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Graph_CircleDraw;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int v11, v3, v4

    sget v12, Lage/of/civilizations2/jakowski/lukasz/Images;->economy:I

    const-string v9, ""

    move-object v7, v1

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;Ljava/lang/String;III)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$11;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    const/4 v4, 0x6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v5

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v5, v7

    const-string v7, ""

    invoke-direct {v1, p0, v7, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;Ljava/lang/String;II)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$12;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x3

    sub-int/2addr v3, v5

    sub-int/2addr v3, v2

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v5

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v8

    add-int/2addr v5, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v5, v8

    invoke-direct {v1, p0, v7, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;Ljava/lang/String;II)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$13;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x3

    sub-int/2addr v3, v5

    sub-int/2addr v3, v2

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v5

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v5, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v5, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v4

    invoke-direct {v1, p0, v7, v3, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;Ljava/lang/String;II)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v12, v3, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x1

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lage/of/civilizations2/jakowski/lukasz/Button_Transparent;-><init>(IIIIZ)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->top_flag_frame:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->top_left:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    add-int/lit8 v4, v1, 0x0

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, v3

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapBG()Lage/of/civilizations2/jakowski/lukasz/Map_BG;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Map_BG;->getMinimapHeight()I

    move-result v7

    sub-int/2addr v1, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v1, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v7

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v1, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v2, v4

    move v4, v5

    move v5, v7

    move v7, v8

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->updateLanguage()V

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_PROVINCE_STABILITY_MODE:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->setActiveViewID(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveViewID()I

    move-result p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_PROVINCE_STABILITY_MODE:I

    if-ne p1, v0, :cond_4

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "ProvinceStability"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_1

    :pswitch_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_IDEOLOGIES_MODE:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->setActiveViewID(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveViewID()I

    move-result p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_IDEOLOGIES_MODE:I

    if-ne p1, v0, :cond_4

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Governments"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_1

    :pswitch_2
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_HAPPINESS_MODE:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->setActiveViewID(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveViewID()I

    move-result p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_HAPPINESS_MODE:I

    if-ne p1, v0, :cond_4

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Happiness"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_1

    :pswitch_3
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_ECONOMY_MODE:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->setActiveViewID(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveViewID()I

    move-result p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_ECONOMY_MODE:I

    if-ne p1, v0, :cond_4

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Economy"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_1

    :pswitch_4
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_TECHNOLOGY_MODE:I

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->setActiveViewID(IZ)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveViewID()I

    move-result p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_TECHNOLOGY_MODE:I

    if-ne p1, v0, :cond_4

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "TechnologyLevel"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_1

    :pswitch_5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->activeCivLeader:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setVisible(Z)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    goto/16 :goto_1

    :pswitch_6
    :try_start_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v2

    invoke-virtual {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result p1

    const/4 v1, 0x1

    :goto_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getPopulationData()Lage/of/civilizations2/jakowski/lukasz/Province_Population;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province_Population;->getPopulation()I

    move-result v3

    if-ge v2, v3, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v2

    invoke-virtual {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object p1

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getProvinceID(I)I

    move-result p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne v1, v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToProvinceID(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object v0

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToProvinceID(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    goto/16 :goto_1

    :pswitch_7
    sget p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->FOG_OF_WAR:I

    if-ne p1, v0, :cond_3

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURNID:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Player;->getMetProvince(I)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToProvinceID(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    goto :goto_1

    :cond_3
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToProvinceID(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfo()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :pswitch_8
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_POPULATION_OF_CIV_MODE:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->setActiveViewID(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->viewsManager:Lage/of/civilizations2/jakowski/lukasz/ViewsManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->getActiveViewID()I

    move-result p1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/ViewsManager;->VIEW_POPULATION_OF_CIV_MODE:I

    if-ne p1, v0, :cond_4

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Population"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    :catch_0
    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    sget-wide v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->lTime:J

    const-wide/16 v3, 0xaf

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v12, 0x1

    const/4 v13, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->hideAnimation:Z

    const/high16 v2, 0x432f0000    # 175.0f

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->lTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    div-float/2addr v3, v2

    mul-float v1, v1, v3

    float-to-int v1, v1

    sub-int v1, p2, v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getWidth()I

    move-result v1

    neg-int v1, v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->lTime:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    div-float/2addr v4, v2

    mul-float v3, v3, v4

    float-to-int v2, v3

    add-int/2addr v1, v2

    add-int v1, p2, v1

    :goto_0
    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    move v14, v1

    goto :goto_1

    :cond_1
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo;->hideAnimation:Z

    if-eqz v1, :cond_2

    invoke-super {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    return-void

    :cond_2
    move/from16 v14, p2

    :goto_1
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getPosX()I

    move-result v2

    add-int v3, v2, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, v10

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getHeight()I

    move-result v2

    add-int/lit8 v6, v2, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-virtual {v0, v9, v14, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v2

    add-int/2addr v1, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuPosY()I

    move-result v2

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v10

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v3

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v12}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v15, 0x6

    invoke-virtual {v0, v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v4

    invoke-virtual {v0, v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v5

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-static {v9, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_InfoBox_Left(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :try_start_0
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->activeCivLeader:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v1

    invoke-virtual {v0, v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->activeCivLeader:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v16, v1, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->activeCivLeader:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getPosX()I

    move-result v2

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v12

    add-int v3, v2, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuPosY()I

    move-result v2

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->activeCivLeader:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/2addr v2, v12

    add-int v4, v2, v10

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->activeCivLeader:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v5, v2

    invoke-virtual {v0, v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v2

    invoke-virtual {v0, v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v6

    sub-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    add-int/lit8 v6, v2, -0x2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f133333    # 0.575f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getPosX()I

    move-result v2

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v12

    add-int v3, v2, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuPosY()I

    move-result v2

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/2addr v2, v12

    add-int v4, v2, v10

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->activeCivLeader:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v5, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getPosX()I

    move-result v2

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v12

    add-int v3, v2, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuPosY()I

    move-result v2

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/2addr v2, v12

    invoke-virtual {v0, v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v4

    invoke-virtual {v0, v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v5

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    add-int v4, v2, v10

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->activeCivLeader:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v5, v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getPosX()I

    move-result v2

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v12

    add-int v3, v2, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuPosY()I

    move-result v2

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/2addr v2, v12

    add-int v4, v2, v10

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-virtual {v0, v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v2

    invoke-virtual {v0, v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v6

    sub-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    add-int/lit8 v6, v2, -0x2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getPosX()I

    move-result v2

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v12

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->activeCivLeader:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v16

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int v3, v2, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuPosY()I

    move-result v2

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/2addr v2, v12

    add-int v4, v2, v10

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-virtual {v0, v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v2

    invoke-virtual {v0, v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v6

    sub-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    add-int/lit8 v6, v2, -0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3e333333    # 0.175f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getPosX()I

    move-result v1

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v1, v2

    add-int/2addr v1, v12

    add-int/2addr v1, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuPosY()I

    move-result v2

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v10

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->activeCivLeader:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v16

    float-to-int v3, v3

    sub-int/2addr v3, v12

    invoke-virtual {v0, v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v4

    invoke-virtual {v0, v15}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v13}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v5

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    invoke-static {v9, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuPosY()I

    move-result v3

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v10

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v5

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v5, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v5, v4

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v6

    invoke-virtual {v0, v4}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v6, v4

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v1

    sub-int/2addr v6, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v6, v1

    invoke-static {v9, v2, v3, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawRect_InfoBox_Left(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {v0, v9, v14, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-virtual {v0, v9, v14, v10, v11}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    if-eqz v1, :cond_4

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_CREATE_NEW_GAME_BOX_PLAYERS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getPosX()I

    move-result v2

    add-int v3, v2, v14

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int v4, v2, v10

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getHeight()I

    move-result v2

    add-int/lit8 v6, v2, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_4
    return-void
.end method

.method protected drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawScrollPos(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :cond_0
    return-void
.end method

.method protected onHovered()V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setOrderOfMenu_InGame_CivInfo()V

    return-void
.end method

.method protected setVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method protected updateLanguage()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Population"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Capital"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "LargestCity"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "TechnologyLevel"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CivInfo_Stats;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Economy"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    return-void
.end method
