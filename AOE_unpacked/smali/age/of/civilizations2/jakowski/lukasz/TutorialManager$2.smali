.class Lage/of/civilizations2/jakowski/lukasz/TutorialManager$2;
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

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Lage/of/civilizations2/jakowski/lukasz/Tutorial_ActionType;)Z
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Tutorial_ActionType;->NEXT_TURN:Lage/of/civilizations2/jakowski/lukasz/Tutorial_ActionType;

    if-ne p1, v0, :cond_0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/Game_Action;

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Game_Action;->getActiveTurnState()Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    move-result-object p1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/Game_Action$TurnStates;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->STEP_ID:I

    iget-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    iget-boolean v0, p1, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->IN_TUTORIAL:Z

    invoke-virtual {p1, v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->updateDrawTutorial(Z)V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 8

    sget-object p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lcom/badlogic/gdx/graphics/Color;

    const p3, 0x3e19999a    # 0.15f

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, v0, p3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->patt2:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    const/4 v2, 0x0

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->patt2:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p2

    const/4 p3, 0x0

    rsub-int/lit8 v3, p2, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_GRADIENT_DARK_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v3, 0x3ee66666    # 0.45f

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    const/4 v2, 0x0

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p2

    rsub-int/lit8 v3, p2, 0x0

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    div-int/lit8 v4, p2, 0x4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    add-int/2addr p2, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    div-int/lit8 v1, v1, 0x4

    sub-int v2, p2, v1

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p2

    rsub-int/lit8 v3, p2, 0x0

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    div-int/lit8 v4, p2, 0x4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    const/4 v2, 0x0

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object p2

    invoke-virtual {p2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result p2

    rsub-int/lit8 v3, p2, 0x0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    div-int/lit8 v5, p2, 0x4

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p2, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    add-int/2addr p2, p3

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr p2, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sub-int v3, p2, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget p2, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    div-int/lit8 v5, p2, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    :try_start_0
    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->access$200(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceBuild_Visible()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_CivInfo()Lage/of/civilizations2/jakowski/lukasz/SliderMenu;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->access$000(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :goto_1
    sget v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->access$100(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;->draw_HoverWithoutAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

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

    :goto_2
    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->access$300(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->INNER_STEP:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p3, p2, :cond_2

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

    invoke-static {p2}, Lage/of/civilizations2/jakowski/lukasz/TutorialManager;->access$300(Lage/of/civilizations2/jakowski/lukasz/TutorialManager;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TutorialManager$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/TutorialManager;

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

    goto :goto_2

    :catch_0
    :cond_2
    return-void
.end method
