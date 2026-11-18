.class Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_MapEditor_FormableCivs_Options.java"


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

    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lCivsTags:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lFlags:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lCivsTags:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v15, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->readLocalFiles()Z

    move-result v0
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Age_of_Civilizations"

    const-string v2, "formable_civs/"

    const-string v3, "map/"

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    const/high16 v4, 0x42480000    # 50.0f

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_5

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    array-length v3, v0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v3, :cond_2

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v11, v0, v9

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_1

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v11, v0, v9

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v10, v0, v9

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_e

    const/4 v3, 0x1

    const/4 v9, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_4

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v9, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v10, v10, v4

    float-to-int v12, v10

    const/4 v13, 0x0

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/lit8 v18, v0, 0x1

    mul-int v10, v10, v18

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v0, v0, 0x2

    mul-int v14, v14, v0

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

    mul-int v10, v10, v18

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v11, v11, v0

    add-int v21, v10, v11

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    add-int v22, v0, v10

    sget v23, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v24, 0x1

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v24}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic_Wiki;-><init>(IIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lCivsTags:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move/from16 v0, v18

    goto/16 :goto_2

    :cond_5
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    if-nez v3, :cond_9

    array-length v3, v0

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v3, :cond_6

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v11, v0, v9

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v10, v0, v9

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_e

    const/4 v3, 0x1

    const/4 v9, 0x0

    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_8

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    move v9, v3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v10, v10, v4

    float-to-int v12, v10

    const/4 v13, 0x0

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/lit8 v18, v0, 0x1

    mul-int v10, v10, v18

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v0, v0, 0x2

    mul-int v14, v14, v0

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

    mul-int v10, v10, v18

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v11, v11, v0

    add-int v21, v10, v11

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    add-int v22, v0, v10

    sget v23, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v24, 0x1

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v24}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic_Wiki;-><init>(IIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lCivsTags:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move/from16 v0, v18

    goto/16 :goto_5

    :cond_9
    array-length v3, v0

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v3, :cond_b

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v11, v0, v9

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v10, v11, :cond_a

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v11, v0, v9

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v10, v0, v9

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    :goto_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_e

    const/4 v3, 0x1

    const/4 v9, 0x0

    :goto_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_d

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    move v9, v3

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_d
    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v10, v10, v4

    float-to-int v12, v10

    const/4 v13, 0x0

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/lit8 v18, v0, 0x1

    mul-int v10, v10, v18

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v0, v0, 0x2

    mul-int v14, v14, v0

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

    mul-int v10, v10, v18

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v11, v11, v0

    add-int v21, v10, v11

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    add-int v22, v0, v10

    sget v23, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v24, 0x1

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v24}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic_Wiki;-><init>(IIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v7, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lCivsTags:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v0, v18

    goto/16 :goto_8

    :catch_0
    :cond_e
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

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v0, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v5, v8

    sub-int v5, v0, v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->updateLanguage()V

    return-void
.end method

.method private final getFlagID(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

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
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lCivsTags:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

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
    .locals 8

    const-string v0, ".png"

    const-string v1, "game/flags/"

    :try_start_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lFlags:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lCivsTags:Ljava/util/List;

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

    goto :goto_0

    :catch_0
    :try_start_1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lFlags:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lCivsTags:Ljava/util/List;

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

    goto :goto_0

    :catch_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lFlags:Ljava/util/List;

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
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 8

    const-string v0, "formable_civs/"

    const-string v1, "map/"

    const-string v2, "https://www.bing.com/search?q="

    const-string v3, "game/civilizations_informations/"

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_2

    rem-int/lit8 v7, p1, 0x2

    if-ne v7, v6, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->clearSelectedProvinces()V

    sput-boolean v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->selectMode:Z

    sput-boolean v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushTool:Z

    sput-boolean v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->VIEW_SHOW_VALUES:Z

    :try_start_0
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lCivsTags:Ljava/util/List;

    add-int/lit8 v7, p1, -0x1

    div-int/lit8 v7, v7, 0x2

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    sput-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->formableCivs_GameData:Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    :try_start_1
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lCivsTags:Ljava/util/List;

    sub-int/2addr p1, v6

    div-int/lit8 p1, p1, 0x2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object p1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->formableCivs_GameData:Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    :goto_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->formableCivs_GameData:Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->getProvincesSize()I

    move-result p1

    if-ge v5, p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->formableCivs_GameData:Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    invoke-virtual {v0, v5}, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->getProvinceID(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->addProvince(I)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMapCoordinates()Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->formableCivs_GameData:Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->getCapitalProvinceID()I

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Map_Coordinates;->centerToProvinceID(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->formableCivs_GameData:Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;->clearProvinces()V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eMAP_EDITOR_FORMABLE_CIVS_EDIT:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lCivsTags:Ljava/util/List;

    sub-int/2addr p1, v6

    div-int/lit8 v1, p1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/badlogic/gdx/Net;->openURI(Ljava/lang/String;)Z
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x2d

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5f

    const/16 v7, 0x20

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Net;->openURI(Ljava/lang/String;)Z

    :goto_1
    return-void

    :cond_2
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->clearSelectedProvinces()V

    sput-boolean v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->selectMode:Z

    sput-boolean v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushTool:Z

    sput-boolean v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->VIEW_SHOW_VALUES:Z

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    invoke-direct {p1}, Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;-><init>()V

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->formableCivs_GameData:Lage/of/civilizations2/jakowski/lukasz/FormableCivs_GameData;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eMAP_EDITOR_FORMABLE_CIVS_EDIT:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void
.end method

.method protected disposeData()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lFlags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lCivsTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-super {p0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getIsInView()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lFlags:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    div-int/lit8 v3, v2, 0x2

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getFlagID(I)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getTextPos()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    add-int v5, v1, p2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getMenuPosY()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lFlags:Ljava/util/List;

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getFlagID(I)I

    move-result v2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v6, v1, p3

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_HEIGHT:I

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->flag_rect:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getTextPos()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getMenuPosY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

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

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eMAP_EDITOR_EDIT:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->disposeData()V

    return-void
.end method

.method protected setVisible(Z)V
    .locals 0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->disposeData()V

    :cond_0
    return-void
.end method

.method protected updateLanguage()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "AddNewFormableCivilization"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    return-void
.end method

.method protected updateMenuElements_IsInView()V
    .locals 4

    invoke-super {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->updateMenuElements_IsInView()V

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lCivsTags:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    div-int/lit8 v2, v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getIsLoaded(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getIsInView()Z

    move-result v3

    if-eqz v3, :cond_0

    if-gez v1, :cond_1

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->loadFlag(I)V

    goto :goto_1

    :cond_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lFlags:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lFlags:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lFlags:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method
