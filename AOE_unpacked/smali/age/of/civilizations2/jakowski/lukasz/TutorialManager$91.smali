.class Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;
.super Ljava/lang/Object;
.source "TutorialManager.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/TutorialManager$TutStep;


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
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Lage/of/civilizations2/jakowski/lukasz/Tutorial_ActionType;)Z
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Tutorial_ActionType;->NEXT_TURN:Lage/of/civilizations2/jakowski/lukasz/Tutorial_ActionType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getActiveTurnState()Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    if-ne p1, v0, :cond_1

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Budget()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getVisible()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_Budget(Z)V

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_CivInfo(Z)V

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    add-int/2addr v1, v0

    iput v1, p1, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    iget-boolean v1, p1, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->IN_TUTORIAL:Z

    invoke-virtual {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->updateDrawTutorial(Z)V

    goto :goto_0

    :cond_0
    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toast:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "OpenTheViewOfYourCivilizationsBudget"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setInView(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 4

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result p2

    if-eqz p2, :cond_3

    :try_start_0
    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Budget()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getVisible()Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_2

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    iput p3, p2, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->INNER_STEP:I

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->access$200(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceBuild_Visible()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_CivInfo()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->access$000(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    :goto_1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->access$100(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)I

    move-result v2

    invoke-interface {p2, p1, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;->draw_HoverWithoutAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v3

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v0

    invoke-virtual {p2, p1, v1, v2, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->drawLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    :goto_2
    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->access$300(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->INNER_STEP:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p3, p2, :cond_3

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->access$300(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->INNER_STEP:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lage/of/civilizations2/jakowski/lukasz/TutorialBox;

    invoke-virtual {p2, p1}, Lage/of/civilizations2/jakowski/lukasz/TutorialBox;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    iput v0, p2, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->INNER_STEP:I

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->access$200(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->access$000(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)I

    move-result v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->access$100(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;->draw_HoverWithoutAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceInfo()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceInfo()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    invoke-virtual {v1, p3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceInfo()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosY()I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceInfo()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v2

    invoke-virtual {v2, p3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceInfo()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v2

    invoke-virtual {v2, p3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    invoke-virtual {p2, p1, v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->drawLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    const/16 p2, 0x11

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Budget()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Budget()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v2

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Budget()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuPosY()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Budget()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v3

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Budget()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v3

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result p2

    invoke-virtual {v0, p1, v1, v2, p2}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->drawLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    const/16 p2, 0x12

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Budget()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getPosX()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Budget()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v2

    invoke-virtual {v2, p2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Budget()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuPosY()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Budget()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v3

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Budget()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v3

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Budget()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v3

    invoke-virtual {v3, p2}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result p2

    invoke-virtual {v0, p1, v1, v2, p2}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->drawLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    :goto_3
    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->access$300(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->INNER_STEP:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p3, p2, :cond_3

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->access$300(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$91;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->INNER_STEP:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lage/of/civilizations2/jakowski/lukasz/TutorialBox;

    invoke-virtual {p2, p1}, Lage/of/civilizations2/jakowski/lukasz/TutorialBox;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :catch_0
    :cond_3
    return-void
.end method
