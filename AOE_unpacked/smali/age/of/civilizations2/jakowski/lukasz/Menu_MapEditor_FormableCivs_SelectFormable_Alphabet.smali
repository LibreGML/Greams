.class Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_MapEditor_FormableCivs_SelectFormable_Alphabet.java"


# instance fields
.field private lCharacters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private nSearch:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 28

    move-object/from16 v9, p0

    const-string v10, ";"

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->nSearch:Ljava/lang/String;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Search"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->nSearch:Ljava/lang/String;

    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet$1;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v6, v0, 0x2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const-string v2, ""

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet$2;

    const/4 v2, 0x0

    const/4 v3, -0x1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v4, v0, 0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x1

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v12, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet$3;

    const/4 v2, 0x0

    const/4 v3, -0x1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v4, v0, 0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x1

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->readLocalFiles()Z

    move-result v2
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "Age_of_Civilizations"

    const-string v4, "formable_civs/"

    const-string v5, "map/"

    if-eqz v2, :cond_1

    :try_start_1
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    const/4 v2, 0x0

    :goto_2
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "game/civilizations/Age_of_Civilizations"

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/String;

    :try_start_2
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v5
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v6, "game/civilizations_editor/Age_of_Civilizations"

    if-eqz v5, :cond_2

    :try_start_3
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    goto :goto_3

    :cond_2
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    :goto_3
    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    array-length v5, v3

    const/4 v6, 0x0

    :goto_4
    const/4 v7, 0x1

    if-ge v6, v5, :cond_a

    aget-object v8, v3, v6

    invoke-static {v8}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInFormableCivs(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_9

    :cond_3
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v2, :cond_5

    aget-object v10, v1, v8

    aget-object v12, v3, v6

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v8, 0x0

    goto :goto_6

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    const/4 v8, 0x1

    :goto_6
    if-nez v8, :cond_6

    goto :goto_9

    :cond_6
    const/4 v8, 0x0

    :goto_7
    iget-object v10, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_8

    iget-object v10, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Character;

    invoke-virtual {v10}, Ljava/lang/Character;->charValue()C

    move-result v10

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v13, v3, v6

    invoke-virtual {v12, v13}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v10, v12, :cond_7

    const/4 v7, 0x0

    goto :goto_8

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_8
    :goto_8
    if-eqz v7, :cond_9

    iget-object v7, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v10, v3, v6

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_a
    array-length v3, v4

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v3, :cond_12

    aget-object v6, v4, v5

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInFormableCivs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_f

    :cond_b
    const/4 v6, 0x0

    :goto_b
    if-ge v6, v2, :cond_d

    aget-object v8, v1, v6

    aget-object v10, v4, v5

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v6, 0x0

    goto :goto_c

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_d
    const/4 v6, 0x1

    :goto_c
    if-nez v6, :cond_e

    goto :goto_f

    :cond_e
    const/4 v6, 0x0

    :goto_d
    iget-object v8, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_10

    iget-object v8, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Character;

    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    move-result v8

    sget-object v10, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v12, v4, v5

    invoke-virtual {v10, v12}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_f

    const/4 v6, 0x0

    goto :goto_e

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_10
    const/4 v6, 0x1

    :goto_e
    if-eqz v6, :cond_11

    iget-object v6, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v10, v4, v5

    invoke-virtual {v8, v10}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_12
    const/4 v1, 0x0

    :goto_10
    iget-object v2, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v7

    if-ge v1, v2, :cond_15

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    :goto_11
    iget-object v4, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_14

    iget-object v4, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    iget-object v5, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    if-le v4, v5, :cond_13

    iget-object v4, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    iget-object v5, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_14
    move v1, v2

    goto :goto_10

    :cond_15
    const/4 v1, 0x0

    :goto_12
    iget-object v2, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    const-string v3, "]"

    const-string v4, "["

    if-eqz v2, :cond_16

    iget-object v2, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v2, v5, :cond_16

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Active;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/lit8 v4, v1, 0x1

    mul-int v3, v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v4, v4, 0x2

    add-int v15, v3, v4

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v19, 0x1

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Active;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_16
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, -0x1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/lit8 v4, v1, 0x1

    mul-int v3, v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v4, v4, 0x2

    add-int v23, v3, v4

    sget v24, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v25, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v26, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v27, 0x1

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v27}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_12

    :cond_17
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    if-ge v1, v2, :cond_1a

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v7

    div-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_14
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v7

    if-ge v0, v3, :cond_19

    if-nez v0, :cond_18

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosX(I)V

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setWidth(I)V

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v3

    goto :goto_15

    :cond_18
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosX(I)V

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setWidth(I)V

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v3

    :goto_15
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_19
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosX(I)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setWidth(I)V

    :cond_1a
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v6, v11

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->updateLanguage()V

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->nSearch:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 4

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    add-int/lit8 v3, p1, -0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    if-eq v0, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->lCharacters:Ljava/util/List;

    add-int/lit8 p1, p1, -0x2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eMAP_EDITOR_FORMABLE_CIVS_SELECT_FORMABLE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    :cond_1
    return-void

    :cond_2
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    if-nez p1, :cond_3

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    if-eqz p1, :cond_4

    :cond_3
    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eMAP_EDITOR_FORMABLE_CIVS_SELECT_FORMABLE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    :cond_4
    return-void

    :cond_5
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard()V

    return-void
.end method

.method protected updateLanguage()V
    .locals 4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_MapEditor_FormableCivs_SelectFormable_Alphabet;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    return-void
.end method
