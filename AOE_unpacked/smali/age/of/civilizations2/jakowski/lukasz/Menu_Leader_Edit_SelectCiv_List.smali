.class Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_Leader_Edit_SelectCiv_List.java"


# instance fields
.field private lCivsTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Image;",
            ">;"
        }
    .end annotation
.end field

.field private lLoadedFlags_TagsIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 25

    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lCivsTags:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lFlags:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "game/civilizations/Age_of_Civilizations"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v4
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "game/civilizations_editor/Age_of_Civilizations"

    if-eqz v4, :cond_0

    :try_start_1
    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    :goto_0
    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lCivsTags:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    const/high16 v7, 0x42480000    # 50.0f

    const/4 v8, 0x1

    if-eqz v5, :cond_7

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    array-length v5, v0

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v5, :cond_2

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v12, v0, v10

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_1

    aget-object v11, v0, v10

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInLeaderCivs(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v12, v0, v10

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v11, v0, v10

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    array-length v0, v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_4

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v11, v3, v5

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_3

    aget-object v10, v3, v5

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInLeaderCivs(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v11, v3, v5

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v10, v3, v5

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_15

    const/4 v3, 0x1

    const/4 v5, 0x0

    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v5, v3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v10, v10, v7

    float-to-int v12, v10

    const/4 v13, 0x0

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v10, v10, v0

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v18, v0, 0x1

    mul-int v14, v14, v18

    add-int/2addr v14, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    sub-int v15, v10, v15

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v17, 0x1

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic_Wiki;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    sub-int v20, v10, v11

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v10, v10, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v0, v0, v18

    add-int v21, v10, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    add-int v22, v0, v10

    sget v23, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v24, 0x1

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v24}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic_Wiki;-><init>(IIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move/from16 v0, v18

    goto/16 :goto_3

    :cond_7
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    if-nez v5, :cond_e

    array-length v5, v0

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v5, :cond_9

    aget-object v11, v0, v10

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInLeaderCivs(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v12, v0, v10

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v11, v0, v10

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_9
    array-length v0, v3

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v0, :cond_b

    aget-object v10, v3, v5

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInLeaderCivs(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v11, v3, v5

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v10, v3, v5

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_15

    const/4 v3, 0x1

    const/4 v5, 0x0

    :goto_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_d

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    move v5, v3

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_d
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v10, v10, v7

    float-to-int v12, v10

    const/4 v13, 0x0

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v10, v10, v0

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v18, v0, 0x1

    mul-int v14, v14, v18

    add-int/2addr v14, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    sub-int v15, v10, v15

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v17, 0x1

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic_Wiki;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    sub-int v20, v10, v11

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v10, v10, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v0, v0, v18

    add-int v21, v10, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    add-int v22, v0, v10

    sget v23, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v24, 0x1

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v24}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic_Wiki;-><init>(IIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move/from16 v0, v18

    goto/16 :goto_7

    :cond_e
    array-length v5, v0

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v5, :cond_10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v12, v0, v10

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v11, v12, :cond_f

    aget-object v11, v0, v10

    invoke-static {v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInLeaderCivs(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_f

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v12, v0, v10

    invoke-virtual {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v11, v0, v10

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_10
    array-length v0, v3

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v0, :cond_12

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v11, v3, v5

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v10, v11, :cond_11

    aget-object v10, v3, v5

    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInLeaderCivs(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_11

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v11, v3, v5

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v10, v3, v5

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_12
    const/4 v0, 0x0

    :goto_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_15

    const/4 v3, 0x1

    const/4 v5, 0x0

    :goto_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_14

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    move v5, v3

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_14
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v10, v10, v7

    float-to-int v12, v10

    const/4 v13, 0x0

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v10, v10, v0

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v18, v0, 0x1

    mul-int v14, v14, v18

    add-int/2addr v14, v10

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    sub-int v15, v10, v15

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v17, 0x1

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic_Wiki;

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    sub-int v20, v10, v11

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v10, v10, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v0, v0, v18

    add-int v21, v10, v0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    add-int v22, v0, v10

    sget v23, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v24, 0x1

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v24}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic_Wiki;-><init>(IIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move/from16 v0, v18

    goto/16 :goto_b

    :cond_15
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v0, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v3, v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    sub-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->updateLanguage()V

    return-void
.end method

.method private final getFlagID(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private final getIsLoaded(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lCivsTags:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private final loadFlag(I)V
    .locals 9

    const-string v0, ".png"

    const-string v1, "game/flags/"

    :try_start_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lFlags:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    :try_start_1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lFlags:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v3, v4, v0}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    :try_start_2
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v0
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    const-string v1, "_FL.png"

    const-string v2, "/"

    const-string v3, "game/civilizations_editor/"

    if-eqz v0, :cond_0

    :try_start_3
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lFlags:Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    :try_start_4
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lFlags:Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v4, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lFlags:Ljava/util/List;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v4, v5, v1}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lFlags:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "game/flags/ran.png"

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final onBack()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eGAME_LEADERS_EDIT:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 2

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lCivsTags:Ljava/util/List;

    div-int/lit8 p1, p1, 0x2

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->addCiv(Ljava/lang/String;)V

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->onBack()V

    const/4 p1, 0x0

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->onBackPressed()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lCivsTags:Ljava/util/List;

    div-int/lit8 p1, p1, 0x2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->wikiInormationsLink(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getIsInView()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lFlags:Ljava/util/List;

    div-int/lit8 v2, v0, 0x2

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->getFlagID(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getTextPos()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v4, v1, p2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->getMenuPosY()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lFlags:Ljava/util/List;

    div-int/lit8 v5, v0, 0x2

    invoke-direct {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->getFlagID(I)I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v5, v1, p3

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getTextPos()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->getMenuPosY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, p3

    invoke-virtual {v1, p1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    :catch_0
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected onBackPressed()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lFlags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lCivsTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected updateLanguage()V
    .locals 0

    return-void
.end method

.method protected updateMenuElements_IsInView()V
    .locals 4

    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateMenuElements_IsInView()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lCivsTags:Ljava/util/List;

    add-int/lit8 v2, v0, 0x0

    div-int/lit8 v2, v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->getIsLoaded(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getIsInView()Z

    move-result v3

    if-eqz v3, :cond_0

    if-gez v1, :cond_1

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->loadFlag(I)V

    goto :goto_1

    :cond_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lFlags:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lFlags:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lFlags:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leader_Edit_SelectCiv_List;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method
