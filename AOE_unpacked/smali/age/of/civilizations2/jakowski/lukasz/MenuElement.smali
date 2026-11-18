.class Lage/of/civilizations2/jakowski/lukasz/MenuElement;
.super Ljava/lang/Object;
.source "MenuElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;
    }
.end annotation


# instance fields
.field private iHeight:I

.field private iPosX:I

.field private iPosY:I

.field private iWidth:I

.field private isClickable:Z

.field private isHovered:Z

.field private isInView:Z

.field private isVisible:Z

.field protected menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

.field protected typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->isClickable:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->isVisible:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->isInView:Z

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->isHovered:Z

    return-void
.end method


# virtual methods
.method protected actionElement(I)V
    .locals 0

    return-void
.end method

.method protected addData(Lage/of/civilizations2/jakowski/lukasz/GraphData;)V
    .locals 0

    return-void
.end method

.method protected addText(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method protected buildElementHover()V
    .locals 0

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 0

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 0

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 0

    return-void
.end method

.method protected drawMenuElementHover2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 1

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    if-eqz p2, :cond_1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosX()I

    move-result p3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosY()I

    move-result p4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHover_ExtraPosY()I

    move-result v0

    sub-int/2addr p4, v0

    invoke-interface {p2, p1, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;->drawAlwaysOver_Mobile(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosX()I

    move-result p3

    sget-object p4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {p4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHover_ExtraPosX()I

    move-result p4

    add-int/2addr p3, p4

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->getMousePosY()I

    move-result p4

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menuManager:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getHover_ExtraPosY()I

    move-result v0

    add-int/2addr p4, v0

    invoke-interface {p2, p1, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getAnotherView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getCheckboxState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getClickable()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->isClickable:Z

    return v0
.end method

.method protected getCurrent()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getHeight()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->iHeight:I

    return v0
.end method

.method protected final getIsHovered()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->isHovered:Z

    return v0
.end method

.method protected final getIsInView()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->isInView:Z

    return v0
.end method

.method protected getIsScrollable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getMenuElement_Hover_IsNull()Z
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getMoveable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getPosX()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->iPosX:I

    return v0
.end method

.method protected getPosY()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->iPosY:I

    return v0
.end method

.method protected getSFX()I
    .locals 1

    sget v0, Lage/of/civilizations2/jakowski/lukasz/SoundsManager;->SOUND_CLICK:I

    return v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected getTextHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getTextPos()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getTextToDraw()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected getTextWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final getTypeOfElement()Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->typeOfElement:Lage/of/civilizations2/jakowski/lukasz/MenuElement$TypeOfElement;

    return-object v0
.end method

.method protected getVisible()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->isVisible:Z

    return v0
.end method

.method protected getWidth()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->iWidth:I

    return v0
.end method

.method protected removeData(I)V
    .locals 0

    return-void
.end method

.method protected resetElementHover()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->menuElementHover:Lage/of/civilizations2/jakowski/lukasz/MenuElement_Hover;

    return-void
.end method

.method protected scrollTheMenu()V
    .locals 0

    return-void
.end method

.method protected setAnotherView(Z)V
    .locals 0

    return-void
.end method

.method protected setCheckboxState(Z)V
    .locals 0

    return-void
.end method

.method protected final setClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->isClickable:Z

    return-void
.end method

.method protected setCurrent(I)V
    .locals 0

    return-void
.end method

.method protected setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/GraphData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected final setHeight(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->iHeight:I

    return-void
.end method

.method protected setIsHovered(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->isHovered:Z

    return-void
.end method

.method protected final setIsInView(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->isInView:Z

    return-void
.end method

.method protected setMax(I)V
    .locals 0

    return-void
.end method

.method protected setMin(I)V
    .locals 0

    return-void
.end method

.method protected final setPosX(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->iPosX:I

    return-void
.end method

.method protected final setPosY(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->iPosY:I

    return-void
.end method

.method protected setScrollPosY(I)V
    .locals 0

    return-void
.end method

.method protected setText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected setTypeOfButton(Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;)V
    .locals 0

    return-void
.end method

.method protected setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->isVisible:Z

    return-void
.end method

.method protected setWidth(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->iWidth:I

    return-void
.end method

.method protected srollByWheel(I)V
    .locals 0

    return-void
.end method

.method protected updateHover(IIII)V
    .locals 0

    return-void
.end method

.method protected updateSlider(I)V
    .locals 0

    return-void
.end method
