.class Lage/of/civilizations2/jakowski/lukasz/TutorialManager$65;
.super Lage/of/civilizations2/jakowski/lukasz/TutorialBox;
.source "TutorialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->updateDrawTutorial(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$65;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    invoke-direct {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/TutorialBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getPosX()I
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceMoveUnits()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceMoveUnits()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getPosY()I
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceMoveUnits()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceMoveUnits()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceMoveUnits()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v0, v1

    return v0
.end method
