.class Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_Leaders_Options.java"


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

.field private lTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 26

    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lTags:Ljava/util/List;

    iput-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lCivsTags:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lFlags:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lCivsTags:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lTags:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v14, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isDesktop()Z

    move-result v0
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_7

    const-string v1, "game/leaders/"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getFileNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "Age_of_Civilizations"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v3, "game/leaders/Age_of_Civilizations"

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    const/high16 v9, 0x42480000    # 50.0f

    const/4 v10, 0x1

    if-eqz v0, :cond_8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    array-length v0, v3
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_7

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v0, :cond_5

    :try_start_2
    sget-object v12, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v3, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v12

    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    sput-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_0
    :try_start_3
    sget-object v12, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v3, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v12

    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    sput-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_7

    :catch_1
    :goto_4
    :try_start_4
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_4

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v12, v3, v11

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v12, v2}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getCiv(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    const/4 v1, 0x1

    const/4 v3, 0x0

    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    move v3, v1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v11, v11, v9

    float-to-int v13, v11

    const/4 v14, 0x0

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/lit8 v19, v0, 0x1

    mul-int v11, v11, v19

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v0, v0, 0x2

    mul-int v15, v15, v0

    add-int/2addr v15, v11

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v17, v17, 0x2

    add-int v16, v16, v17

    sub-int v16, v11, v16

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v18, 0x1

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic_Wiki;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    sub-int v21, v11, v12

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v11, v11, v19

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v12, v12, v0

    add-int v22, v11, v12

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v11, v11, 0x2

    add-int v23, v0, v11

    sget v24, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v25, 0x1

    move-object/from16 v20, v1

    invoke-direct/range {v20 .. v25}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic_Wiki;-><init>(IIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lCivsTags:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lTags:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move/from16 v0, v19

    goto/16 :goto_5

    :cond_8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    if-nez v0, :cond_c

    array-length v11, v3
    :try_end_4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4 .. :try_end_4} :catch_7

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v11, :cond_9

    :try_start_5
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v3, v12

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;
    :try_end_5
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    :try_start_6
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v3, v12

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_a

    :goto_8
    :try_start_7
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_a

    :goto_9
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_a
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v0, v3, v12

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getCiv(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    const/4 v1, 0x1

    const/4 v3, 0x0

    :goto_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_b

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    move v3, v1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_b
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v11, v11, v9

    float-to-int v13, v11

    const/4 v14, 0x0

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/lit8 v19, v0, 0x1

    mul-int v11, v11, v19

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v0, v0, 0x2

    mul-int v15, v15, v0

    add-int/2addr v15, v11

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v17, v17, 0x2

    add-int v16, v16, v17

    sub-int v16, v11, v16

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v18, 0x1

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic_Wiki;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    sub-int v21, v11, v12

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v11, v11, v19

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v12, v12, v0

    add-int v22, v11, v12

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v11, v11, 0x2

    add-int v23, v0, v11

    sget v24, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v25, 0x1

    move-object/from16 v20, v1

    invoke-direct/range {v20 .. v25}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic_Wiki;-><init>(IIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lCivsTags:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lTags:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move/from16 v0, v19

    goto/16 :goto_b

    :cond_c
    array-length v0, v3
    :try_end_7
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_7 .. :try_end_7} :catch_7

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v0, :cond_e

    :try_start_8
    sget-object v12, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v3, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v12

    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    sput-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;
    :try_end_8
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_e

    :catch_5
    :try_start_9
    sget-object v12, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v3, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v12

    invoke-static {v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    sput-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_9 .. :try_end_9} :catch_7

    :catch_6
    :goto_e
    :try_start_a
    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosen_AlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v12, v13, :cond_d

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v12

    invoke-virtual {v12}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v12, v3, v11

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v12, v2}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getCiv(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    const/4 v1, 0x1

    const/4 v3, 0x0

    :goto_10
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_10

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v11, v12}, Lage/of/civilizations2/jakowski/lukasz/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    move v3, v1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_10
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v11, v11, v9

    float-to-int v13, v11

    const/4 v14, 0x0

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/lit8 v19, v0, 0x1

    mul-int v11, v11, v19

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v0, v0, 0x2

    mul-int v15, v15, v0

    add-int/2addr v15, v11

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v17, v17, 0x2

    add-int v16, v16, v17

    sub-int v16, v11, v16

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v18, 0x1

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic_Wiki;

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    sub-int v21, v11, v12

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v11, v11, v19

    sget v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v12, v12, v0

    add-int v22, v11, v12

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    sget v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v11, v11, 0x2

    add-int v23, v0, v11

    sget v24, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/16 v25, 0x1

    move-object/from16 v20, v1

    invoke-direct/range {v20 .. v25}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_Classic_Wiki;-><init>(IIIIZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lCivsTags:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lTags:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_a
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_a .. :try_end_a} :catch_7

    move/from16 v0, v19

    goto/16 :goto_f

    :catch_7
    :cond_11
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int v4, v0, v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v6

    sub-int v6, v0, v1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->updateLanguage()V

    return-void
.end method

.method private final getFlagID(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

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
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lCivsTags:Ljava/util/List;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

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
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lFlags:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lCivsTags:Ljava/util/List;

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
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lFlags:Ljava/util/List;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesManager:Lage/of/civilizations2/jakowski/lukasz/Ideologies_Manager;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lCivsTags:Ljava/util/List;

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
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lFlags:Ljava/util/List;

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
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    rem-int/lit8 v3, p1, 0x2

    const-string v4, "game/leaders/"

    if-ne v3, v2, :cond_0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->clearSelectedProvinces()V

    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->selectMode:Z

    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushTool:Z

    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->VIEW_SHOW_VALUES:Z

    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lTags:Ljava/util/List;

    add-int/lit8 v5, p1, -0x1

    div-int/lit8 v5, v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lTags:Ljava/util/List;

    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x2

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object p1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getDay()I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getMonth()I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getYear()I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAgeOfYear(I)I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_AGE:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eGAME_LEADERS_EDIT:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    goto/16 :goto_2

    :cond_0
    :try_start_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lTags:Ljava/util/List;

    add-int/lit8 v5, p1, -0x1

    div-int/lit8 v5, v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    nop

    goto :goto_1

    :catch_3
    :try_start_3
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lTags:Ljava/util/List;

    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x2

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object p1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getWiki()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    :try_start_4
    sget-object p1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.bing.com/search?q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getWiki()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Net;->openURI(Ljava/lang/String;)Z
    :try_end_4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :cond_1
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    :catch_4
    :goto_2
    return-void

    :cond_2
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getSelectedProvinces()Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Selected_Provinces;->clearSelectedProvinces()V

    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->selectMode:Z

    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->brushTool:Z

    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->VIEW_SHOW_VALUES:Z

    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-direct {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;-><init>()V

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->setTag(Ljava/lang/String;)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getDay()I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentDay:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getMonth()I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentMonth:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->leader_GameData:Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Leader_GameData;->getLeaderOfCiv()Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/LeaderOfCiv_GameData;->getYear()I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAges:Lage/of/civilizations2/jakowski/lukasz/Game_Ages;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Game_Calendar;->currentYear:I

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Game_Ages;->getAgeOfYear(I)I

    move-result p1

    sput p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_SCENARIO_AGE:I

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eGAME_LEADERS_EDIT:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    return-void
.end method

.method protected disposeData()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lFlags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lCivsTags:Ljava/util/List;

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
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getIsInView()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lFlags:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    div-int/lit8 v3, v2, 0x2

    invoke-direct {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->getFlagID(I)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getTextPos()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    add-int v5, v1, p2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->getMenuPosY()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lFlags:Ljava/util/List;

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->getFlagID(I)I

    move-result v2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

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

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getTextPos()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_FLAG_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->getMenuPosY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

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

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eEDITOR:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->disposeData()V

    return-void
.end method

.method protected setVisible(Z)V
    .locals 0

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->disposeData()V

    :cond_0
    return-void
.end method

.method protected updateLanguage()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "AddNewLeader"

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
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lCivsTags:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    div-int/lit8 v2, v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->getIsLoaded(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getIsInView()Z

    move-result v3

    if-eqz v3, :cond_0

    if-gez v1, :cond_1

    invoke-direct {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->loadFlag(I)V

    goto :goto_1

    :cond_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lFlags:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lFlags:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lFlags:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Leaders_Options;->lLoadedFlags_TagsIDs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method
