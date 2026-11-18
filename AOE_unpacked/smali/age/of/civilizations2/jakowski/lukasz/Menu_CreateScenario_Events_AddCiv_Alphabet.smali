.class Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_CreateScenario_Events_AddCiv_Alphabet.java"


# instance fields
.field private lCharacters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private nSearch:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 25

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->nSearch:Ljava/lang/String;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Search"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->nSearch:Ljava/lang/String;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet$1;

    const-string v3, ""

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v2, 0x2

    const/4 v5, 0x0

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v2, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v9, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    if-nez v1, :cond_2

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet$2;

    const/4 v3, 0x0

    const/4 v4, -0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v5, v2, 0x2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v9, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "game/civilizations/Age_of_Civilizations"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v23

    const-string v1, ";"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v21, 0x0

    :try_start_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "game/civilizations_editor/Age_of_Civilizations"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v21

    :goto_1
    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v24

    const-string v1, ";"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->lCharacters:Ljava/util/List;

    const/4 v12, 0x0

    move-object/from16 v0, v16

    array-length v13, v0

    :goto_3
    if-ge v12, v13, :cond_5

    aget-object v1, v16, v12

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInTheGame(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v11, 0x1

    const/4 v10, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v3, v16, v12

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_4

    const/4 v11, 0x0

    :cond_0
    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->lCharacters:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v3, v16, v12

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_2
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet$3;

    const/4 v3, 0x0

    const/4 v4, -0x1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v5, v2, 0x2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v9, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    :try_start_1
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "game/civilizations_editor/Age_of_Civilizations"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v21

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    move-object/from16 v0, v17

    array-length v13, v0

    :goto_5
    if-ge v12, v13, :cond_9

    aget-object v1, v17, v12

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isInTheGame(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v11, 0x1

    const/4 v10, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v3, v17, v12

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v11, 0x0

    :cond_6
    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->lCharacters:Ljava/util/List;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    aget-object v3, v17, v12

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_9
    const/4 v12, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v12, v1, :cond_c

    add-int/lit8 v14, v12, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v14, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    if-le v2, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v18

    move-object/from16 v0, p0

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->lCharacters:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v2, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v12, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->lCharacters:Ljava/util/List;

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_c
    const/4 v12, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_e

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_d

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Active;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/lit8 v5, v12, 0x1

    mul-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Active;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_d
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/lit8 v5, v12, 0x1

    mul-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_e
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v1

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    if-ge v1, v2, :cond_11

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int v19, v1, v2

    const/16 v22, 0x0

    const/4 v12, 0x0

    :goto_b
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v12, v1, :cond_10

    if-nez v12, :cond_f

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v22

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosX(I)V

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setWidth(I)V

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v1

    add-int v22, v22, v1

    :goto_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_f
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v22

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosX(I)V

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setWidth(I)V

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v1

    add-int v22, v22, v1

    goto :goto_c

    :cond_10
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move/from16 v0, v22

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosX(I)V

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sub-int v2, v2, v22

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setWidth(I)V

    :cond_11
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v4, v1, 0x4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object v7, v15

    invoke-virtual/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->updateLanguage()V

    return-void

    :catch_0
    move-exception v1

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->nSearch:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 4

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->lCharacters:Ljava/util/List;

    add-int/lit8 v2, p1, -0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->lCharacters:Ljava/util/List;

    add-int/lit8 v2, p1, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    sput-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_ADD_CIV:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->showKeyboard()V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    if-nez v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_2
    sput-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    sput-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eCREATE_SCENARIO_EVENTS_ADD_CIV:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected updateLanguage()V
    .locals 4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_CreateScenario_Events_AddCiv_Alphabet;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    return-void
.end method
