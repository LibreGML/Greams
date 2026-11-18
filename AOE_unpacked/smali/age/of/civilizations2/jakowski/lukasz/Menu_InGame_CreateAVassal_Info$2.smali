.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CreateAVassal_Info$2;
.super Lage/of/civilizations2/jakowski/lukasz/Button_FlagFrame;
.source "Menu_InGame_CreateAVassal_Info.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CreateAVassal_Info;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CreateAVassal_Info;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CreateAVassal_Info;IIZ)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CreateAVassal_Info$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CreateAVassal_Info;

    invoke-direct {p0, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Button_FlagFrame;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method protected buildElementHover()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v4, "ShowHideColorPicker"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BUTTON_GAME_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pickeIcon:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element_Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;

    invoke-direct {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2_Element2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;

    invoke-direct {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover_v2;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_CreateAVassal_Info$2;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    return-void
.end method

.method protected getFlag()Lage/of/civilizations2/jakowski/lukasz/Image;
    .locals 1

    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->createVassal_Data:Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->getFlagOfCivH()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->createVassal_Data:Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/CreateVassal_Data;->getFlagOfCivH()Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    return-object v0

    :cond_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->randomCivilizationFlag:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    return-object v0
.end method
