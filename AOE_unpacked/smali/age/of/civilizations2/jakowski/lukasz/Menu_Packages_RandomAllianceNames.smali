.class Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Menu_Packages_RandomAllianceNames.java"


# instance fields
.field private lEnabled:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
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
    .locals 19

    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->lTags:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->lEnabled:Ljava/util/List;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v18, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v18}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu_LR_Line;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "game/alliance_names/Age_of_Civilizations.json"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v2, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;

    const-string v3, "Data_Random_Alliance_Names"

    const-class v4, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;-><init>()V

    const-class v2, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;->Data_Random_Alliance_Names:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;

    iget-object v1, v13, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;->Tag:Ljava/lang/String;

    invoke-direct {v9, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v1, 0x42480000    # 50.0f

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v1

    float-to-int v3, v3

    const/4 v4, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/lit8 v15, v0, 0x1

    mul-int v1, v1, v15

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/lit8 v0, v0, 0x2

    mul-int v5, v5, v0

    add-int/2addr v5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x1

    move-object v1, v14

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button_Menu;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames$1;

    iget-object v1, v13, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;->Tag:Ljava/lang/String;

    invoke-direct {v9, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int v1, v1, v15

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int v5, v5, v0

    add-int/2addr v5, v1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v6, v0, 0x2

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x1

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    iget-boolean v1, v13, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;->Enabled:Z

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCheckboxState(Z)V

    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->lTags:Ljava/util/List;

    iget-object v1, v13, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;->Tag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->lEnabled:Ljava/util/List;

    iget-boolean v1, v13, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;->Enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v15

    goto/16 :goto_0

    :catch_0
    :cond_0
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    const/4 v0, 0x0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v0, v2, v11, v11}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;-><init>(Ljava/lang/String;IZZ)V

    const/4 v2, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    sub-int v5, v0, v5

    move-object/from16 v0, p0

    move-object v6, v10

    invoke-virtual/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->initMenuWithBackButton(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->updateLanguage()V

    return-void
.end method

.method private final getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "game/alliance_names/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->getPackageName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method private final updateEnabled(IZ)V
    .locals 6

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "game/alliance_names/Age_of_Civilizations.json"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v3, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;

    const-class v4, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;

    const-string v5, "Data_Random_Alliance_Names"

    invoke-virtual {v2, v3, v5, v4}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;

    invoke-direct {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;-><init>()V

    const-class v3, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;

    invoke-virtual {v2, v3, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;-><init>()V

    const-string v3, "Data"

    iput-object v3, v2, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;->Age_of_Civilizations:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;->Data_Random_Alliance_Names:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;

    iput-boolean p2, v3, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;->Enabled:Z

    iget-object p2, v0, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;->Data_Random_Alliance_Names:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v0, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;->Data_Random_Alliance_Names:Ljava/util/ArrayList;

    iput-object p1, v2, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;->Data_Random_Alliance_Names:Ljava/util/ArrayList;

    new-instance p1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    sget-object p2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Json;->setOutputType(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    const-class p2, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;

    const-class v0, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;

    invoke-virtual {p1, p2, v5, v0}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    sget-object p2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {p2, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p2

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected final actionElement(I)V
    .locals 4

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->lTags:Ljava/util/List;

    add-int/lit8 p1, p1, -0x2

    div-int/lit8 p1, p1, 0x2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_PACKAGE_ALLIANCE_NAMES_GAME_DATA_TAG:Ljava/lang/String;

    sget-object p1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "game/alliance_names/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_PACKAGE_ALLIANCE_NAMES_GAME_DATA_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object p1

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eGAME_EDITOR_ALLIANCE_NAMES_PACKAGE_CREATE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->lEnabled:Ljava/util/List;

    add-int/lit8 v2, p1, -0x2

    div-int/lit8 v2, v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->lEnabled:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Disable"

    goto :goto_0

    :cond_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Enable"

    :goto_0
    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->lEnabled:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setCheckboxState(Z)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->lEnabled:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Enabled"

    goto :goto_1

    :cond_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "Disabled"

    :goto_1
    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;)V

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->lEnabled:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->updateEnabled(IZ)V

    goto :goto_2

    :cond_3
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    invoke-direct {p1}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;-><init>()V

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_PACKAGE_ALLIANCE_NAMES_GAME_DATA_TAG:Ljava/lang/String;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menu;->eGAME_EDITOR_ALLIANCE_NAMES_PACKAGE_CREATE:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->onBackPressed()V

    :catch_0
    :goto_2
    return-void
.end method

.method protected final onBackPressed()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Menu;->eGAME_EDITOR:Lage/of/civilizations2/jakowski/lukasz/Menu;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setViewID(Lage/of/civilizations2/jakowski/lukasz/Menu;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setBackAnimation(Z)V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->loadRandomAlliancesNames()V

    return-void
.end method

.method protected updateLanguage()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Back"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "CreateNewPackage"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->lEnabled:Ljava/util/List;

    add-int/lit8 v3, v0, -0x2

    div-int/lit8 v3, v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Disable"

    goto :goto_1

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v3, "Enable"

    :goto_1
    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_Packages_RandomAllianceNames;->getTitle()Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "RandomAlliancesNamesPackages"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
