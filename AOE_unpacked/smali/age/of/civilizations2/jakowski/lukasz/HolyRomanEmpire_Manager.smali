.class public Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;
.super Ljava/lang/Object;
.source "HolyRomanEmpire_Manager.java"


# static fields
.field protected static final HOLY_ROMAN_EMPRIE_TAG:Ljava/lang/String; = "holy"

.field protected static final MAX_NUM_OF_ELECTORS:I = 0x7

.field protected static final oColorHRE:Lcom/badlogic/gdx/graphics/Color;

.field protected static final oColorHRE_BG:Lcom/badlogic/gdx/graphics/Color;

.field protected static final oColorHRE_Electors:Lcom/badlogic/gdx/graphics/Color;

.field protected static final oColorHRE_Emperor:Lcom/badlogic/gdx/graphics/Color;

.field protected static final oColorHRE_NotControledByEmpire:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field protected holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

.field private sHRE_Name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3df0f0f1

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->oColorHRE:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->oColorHRE_BG:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->oColorHRE_Emperor:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f6aeaeb

    const v3, 0x3f3ebebf

    const v4, 0x3e34b4b5

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->oColorHRE_Electors:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3d20a0a1

    const v3, 0x3f6bebec

    invoke-direct {v0, v3, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->oColorHRE_NotControledByEmpire:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->updateHREName()V

    return-void
.end method


# virtual methods
.method protected final addProvince(I)Z
    .locals 6

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->addProvince(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ne v0, p1, :cond_8

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getIsPrince(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    if-ne v2, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result p1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->addPrince(I)V

    return v3

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    if-ne v2, v4, :cond_4

    return v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getProvincesSize()I

    move-result v0

    if-ge v1, v0, :cond_7

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getProvinces(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    if-eq v0, v2, :cond_6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getProvinces(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getPuppetOfCivID()I

    move-result v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    if-ne v0, v2, :cond_6

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getProvinces(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    invoke-virtual {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getIsImperialProvince(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getProvinces(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->addPrince(I)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result p1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->addPrince(I)V

    return v3

    :cond_8
    return v1
.end method

.method protected final getHRE()Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    return-object v0
.end method

.method protected final getHRE_Name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->sHRE_Name:Ljava/lang/String;

    return-object v0
.end method

.method protected final initHolyRomanEmpire()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    return-void
.end method

.method protected final loadHolyRomanEmpire_ScenarioData()V
    .locals 6

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioIsInternal(I)Z

    move-result v0

    const-string v1, "_HRE"

    const-string v2, "/"

    const-string v3, "scenarios/"

    const-string v4, "map/"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioTag(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioTag(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioTag(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getGameScenarios()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Game;->getScenarioID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->getScenarioTag(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->holyRomanEmpire_Manager:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->getHRE()Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getProvincesSize()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    :try_start_1
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->holyRomanEmpire_Manager:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->getHRE()Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getProvinces(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->holyRomanEmpire_Manager:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->getHRE()Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    move-result-object v4

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getProvinces(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->setIsPartOfHolyRomanEmpire(Z)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_0
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    :try_start_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->holyRomanEmpire_Manager:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->getHRE()Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    if-ge v0, v1, :cond_3

    :try_start_3
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->holyRomanEmpire_Manager:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->getHRE()Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->setIsPartOfHolyRomanEmpire(Z)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_1
    :try_start_4
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->holyRomanEmpire_Manager:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->getHRE()Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->removePrinceID(I)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    move v0, v2

    :goto_3
    add-int/2addr v0, v3

    goto :goto_2

    :cond_3
    return-void

    :catch_2
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->initHolyRomanEmpire()V

    return-void
.end method

.method protected final removeProvince(I)Z
    .locals 4

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->removeProvince(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v2, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Game;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrincesSize()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->getPrince(I)I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->holyRomanEmpire:Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCivID()I

    move-result p1

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_GameData;->removePrince(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected final updateHREName()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v1, "holy"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/HolyRomanEmpire_Manager;->sHRE_Name:Ljava/lang/String;

    return-void
.end method
