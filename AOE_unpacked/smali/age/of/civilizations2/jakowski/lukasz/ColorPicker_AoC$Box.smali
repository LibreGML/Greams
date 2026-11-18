.class Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;
.super Ljava/lang/Object;
.source "ColorPicker_AoC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Box"
.end annotation


# instance fields
.field private iHeight:I

.field private iPosX:I

.field private iPosY:I

.field private iWidth:I

.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

.field private visible:Z


# direct methods
.method protected constructor <init>(Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;IIII)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->this$0:Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->visible:Z

    iput p2, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->iPosX:I

    iput p3, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->iPosY:I

    iput p4, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->iWidth:I

    iput p5, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->iHeight:I

    return-void
.end method


# virtual methods
.method protected final getHeight()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->iHeight:I

    return v0
.end method

.method protected final getPosX()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->iPosX:I

    return v0
.end method

.method protected final getPosY()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->iPosY:I

    return v0
.end method

.method protected final getVisible()Z
    .locals 1

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->visible:Z

    return v0
.end method

.method protected final getWidth()I
    .locals 1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->iWidth:I

    return v0
.end method

.method protected final setHeight(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->iHeight:I

    return-void
.end method

.method protected final setPosX(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->iPosX:I

    return-void
.end method

.method protected final setPosY(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->iPosY:I

    return-void
.end method

.method protected final setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->visible:Z

    return-void
.end method

.method protected final setWidth(I)V
    .locals 0

    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/ColorPicker_AoC$Box;->iWidth:I

    return-void
.end method
