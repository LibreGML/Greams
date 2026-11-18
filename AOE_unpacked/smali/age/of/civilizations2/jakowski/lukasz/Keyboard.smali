.class Lage/of/civilizations2/jakowski/lukasz/Keyboard;
.super Lage/of/civilizations2/jakowski/lukasz/SliderMenu;
.source "Keyboard.java"


# static fields
.field protected static activeColor_RGB_ID:I

.field protected static changeCityNameIDToo:I

.field protected static changeCivilizationNameMode:I

.field protected static changeProvinceNameMode:I

.field protected static colorPickerMode:Z

.field protected static commandsMode:Z

.field protected static numbers:Z

.field protected static shift:Z


# instance fields
.field private animationChangePosY:I

.field private animationStepID:I

.field private barTime:J

.field private closeMenu:Z

.field private drawBar:Z

.field private iTextHeight:I

.field private iTextWidth:I

.field private lKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lKeys123:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lKeysNUM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lKeysSHIFT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shift:Z

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->numbers:Z

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->colorPickerMode:Z

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->commandsMode:Z

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->changeCivilizationNameMode:I

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->changeProvinceNameMode:I

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->changeCityNameIDToo:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 14

    const/16 v13, 0xa

    const/16 v12, 0x19

    const/4 v7, 0x1

    const v8, 0x3f4ccccd    # 0.8f

    const/4 v11, 0x0

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysNUM:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys123:Ljava/util/List;

    iput v11, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationStepID:I

    iput-boolean v11, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->closeMenu:Z

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "q"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "w"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "e"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "r"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "t"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "y"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "u"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "i"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "o"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "p"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "a"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "s"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "d"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "f"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "g"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "h"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "j"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "k"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "l"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "z"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "x"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "c"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "v"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "b"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "m"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "SH"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "<<"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "123"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "Space"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, ","

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const-string v1, "."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "Q"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "W"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "E"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "R"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "T"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "Y"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "U"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "I"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "O"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "P"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "A"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "S"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "D"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "F"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "G"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "H"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "J"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "K"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "L"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "Z"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "X"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "C"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "V"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "B"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "N"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    const-string v1, "M"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysNUM:Ljava/util/List;

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysNUM:Ljava/util/List;

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysNUM:Ljava/util/List;

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysNUM:Ljava/util/List;

    const-string v1, "4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysNUM:Ljava/util/List;

    const-string v1, "5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysNUM:Ljava/util/List;

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysNUM:Ljava/util/List;

    const-string v1, "7"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysNUM:Ljava/util/List;

    const-string v1, "8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysNUM:Ljava/util/List;

    const-string v1, "9"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysNUM:Ljava/util/List;

    const-string v1, "0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys123:Ljava/util/List;

    const-string v1, "@"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys123:Ljava/util/List;

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys123:Ljava/util/List;

    const-string v1, "#"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys123:Ljava/util/List;

    const-string v1, ":"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys123:Ljava/util/List;

    const-string v1, ";"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys123:Ljava/util/List;

    const-string v1, "&"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys123:Ljava/util/List;

    const-string v1, "_"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys123:Ljava/util/List;

    const-string v1, "("

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys123:Ljava/util/List;

    const-string v1, ")"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys123:Ljava/util/List;

    const-string v1, "-"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys123:Ljava/util/List;

    const-string v1, "+"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys123:Ljava/util/List;

    const-string v1, "\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys123:Ljava/util/List;

    const-string v1, "\""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys123:Ljava/util/List;

    const-string v1, "%"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys123:Ljava/util/List;

    const-string v1, "!"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys123:Ljava/util/List;

    const-string v1, "?"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v13, :cond_0

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0xb

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0xa

    mul-int/2addr v2, v9

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/2addr v3, v9

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0xb

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0xa

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;-><init>(Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;Z)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v13, :cond_1

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v1

    sub-int/2addr v3, v1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v1

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosX(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_2
    const/16 v0, 0x9

    if-ge v9, v0, :cond_2

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    add-int/lit8 v2, v9, 0xa

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    mul-int/2addr v2, v9

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/2addr v3, v9

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;-><init>(Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;Z)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    const/16 v9, 0xa

    :goto_3
    const/16 v0, 0x13

    if-ge v9, v0, :cond_3

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v1

    sub-int/2addr v3, v1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v1

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosX(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_4
    const/4 v0, 0x7

    if-ge v9, v0, :cond_4

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    add-int/lit8 v2, v9, 0x13

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    mul-int/2addr v2, v9

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/2addr v3, v9

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x6

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;-><init>(Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;Z)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    const/16 v9, 0x13

    :goto_5
    const/16 v0, 0x1a

    if-ge v9, v0, :cond_5

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v1

    sub-int/2addr v3, v1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v1

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setPosX(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_5
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const/16 v2, 0x1a

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x6

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    add-int/2addr v3, v4

    const/16 v4, 0x13

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD_OPTIONS:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;-><init>(Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;Z)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const/16 v2, 0x1b

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v3

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x6

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v4

    sub-int/2addr v5, v4

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v4

    sub-int v4, v5, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD_OPTIONS:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;-><init>(Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;Z)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const/16 v2, 0x1c

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v8

    float-to-int v5, v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD_OPTIONS:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;-><init>(Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;Z)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const/16 v2, 0x1d

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v2, 0x2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    add-int/2addr v3, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    sub-int v4, v5, v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x5

    sub-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v8

    float-to-int v5, v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;-><init>(Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;Z)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const/16 v2, 0x1e

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v2, 0x3

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    add-int/2addr v3, v2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    sub-int v2, v3, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x5

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v8

    float-to-int v5, v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD_OPTIONS:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;-><init>(Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;Z)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    const/16 v2, 0x1f

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v2, 0x4

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    add-int/2addr v3, v2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    sub-int v2, v3, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x5

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v8

    float-to-int v5, v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD_OPTIONS:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;-><init>(Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;Z)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;

    const/4 v1, 0x0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v3, v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_HEIGHT:I

    int-to-float v5, v5

    mul-float/2addr v5, v8

    float-to-int v5, v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD_SAVE:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button_Keyboard;-><init>(Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;Z)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_HEIGHT:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    sub-int v3, v2, v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAME_WIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v2, v0, 0x2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v0

    add-int/2addr v2, v0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v0

    add-int v5, v2, v0

    move-object v0, p0

    move v2, v11

    move-object v6, v10

    move v7, v11

    move v8, v11

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->initMenu(Lage/of/civilizations2/jakowski/lukasz/SliderMenuTitle;IIIILjava/util/List;ZZ)V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->updateLanguage()V

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->updateKeyboard_Actions()V

    return-void
.end method

.method private final resetAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationStepID:I

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->closeMenu:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getHeight()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    :cond_0
    return-void
.end method

.method private final updateChangePosY()V
    .locals 8

    const/16 v7, 0xd

    const/4 v6, 0x0

    const/4 v0, -0x1

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v1, 0x1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationStepID:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->iNumOfFPS:I

    const/16 v2, 0x16

    if-ge v0, v2, :cond_0

    iput v7, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationStepID:I

    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    :cond_0
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->closeMenu:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationStepID:I

    if-ne v0, v7, :cond_1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getHeight()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    invoke-super {p0, v6}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    :cond_1
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationStepID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationStepID:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    return-void

    :pswitch_0
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40200000    # 2.5f

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    iget-boolean v4, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->closeMenu:Z

    if-eqz v4, :cond_2

    :goto_1
    int-to-float v0, v0

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_1
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    iget-boolean v4, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->closeMenu:Z

    if-eqz v4, :cond_3

    :goto_2
    int-to-float v0, v0

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    :pswitch_2
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    iget-boolean v4, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->closeMenu:Z

    if-eqz v4, :cond_4

    :goto_3
    int-to-float v0, v0

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_3

    :pswitch_3
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41700000    # 15.0f

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    iget-boolean v4, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->closeMenu:Z

    if-eqz v4, :cond_5

    :goto_4
    int-to-float v0, v0

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_4

    :pswitch_4
    iput v6, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private final writeNumber(I)V
    .locals 2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardWrite:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysNUM:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;->action(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected actionClose()V
    .locals 4

    const/16 v2, 0x1c

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->numbers:Z

    if-eqz v2, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD_ACTIVE:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    :goto_0
    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setTypeOfButton(Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;)V

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->numbers:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysNUM:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysNUM:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD_NUM:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setTypeOfButton(Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD_OPTIONS:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysNUM:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys123:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys123:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysNUM:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shift:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_4
    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setTypeOfButton(Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysNUM:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    :goto_5
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysNUM:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys123:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_6

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shift:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_6
    invoke-virtual {v3, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setTypeOfButton(Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_6

    :cond_6
    return-void
.end method

.method protected final actionElement(I)V
    .locals 4

    const/16 v2, 0xa

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shift:Z

    if-eqz v0, :cond_5

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_5

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->numbers:Z

    if-eqz v0, :cond_4

    if-ge p1, v2, :cond_3

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->writeNumber(I)V

    :cond_0
    :goto_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->iTextWidth:I

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->iTextHeight:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->barTime:J

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->drawBar:Z

    :cond_1
    :goto_1
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shiftAction()V

    goto :goto_1

    :pswitch_2
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardDelete:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    invoke-interface {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;->action()V

    goto :goto_0

    :pswitch_3
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I

    if-gez v0, :cond_1

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->numbers:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->numbers:Z

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->actionClose()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :pswitch_4
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardWrite:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    const-string v2, " "

    invoke-interface {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;->action(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    # Console float: tapping the input field focuses the system IME (do not submit/close)
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->commandsMode:Z

    if-eqz v0, :cond_save_legacy

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ConsoleFloat;->showSystemIme()V

    goto :goto_1

    :cond_save_legacy
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardSave:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    invoke-interface {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;->action()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->closeMenu()V

    const/4 v0, -0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I

    goto :goto_1

    :cond_3
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I

    if-gez v0, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardWrite:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys123:Ljava/util/List;

    add-int/lit8 v3, p1, -0xa

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;->action(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I

    if-gez v0, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardWrite:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;->action(Ljava/lang/String;)V

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shift:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shiftAction()V

    goto/16 :goto_0

    :cond_5
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->numbers:Z

    if-eqz v0, :cond_7

    if-ge p1, v2, :cond_6

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->writeNumber(I)V

    goto/16 :goto_0

    :cond_6
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I

    if-gez v0, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardWrite:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys123:Ljava/util/List;

    add-int/lit8 v3, p1, -0xa

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;->action(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I

    if-gez v0, :cond_0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardWrite:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;->action(Ljava/lang/String;)V

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shift:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shiftAction()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected final closeMenu()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->closeMenu:Z

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->resetAnimation()V

    return-void
.end method

.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IZ)V
    .locals 8

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->updateChangePosY()V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidth()I

    move-result v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v3, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->new_game_top_edge_line:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ccccccd    # 0.025f

    const v2, 0x3cf5c28f    # 0.03f

    const v3, 0x3dbc6a7f    # 0.092f

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v1, v3

    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getHeight()I

    move-result v1

    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v5

    sub-int/2addr v1, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e189899

    const v2, 0x3e34b4b5

    const v3, 0x3e5cdcdd

    const v4, 0x3f266666    # 0.65f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->patt:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->patt:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v1, v3

    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getHeight()I

    move-result v1

    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v5

    sub-int/2addr v1, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_INFO_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_INFO_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_INFO_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3e8f5c29    # 0.28f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->slider_gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidth()I

    move-result v4

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v1

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    add-int/lit8 v5, v1, -0x4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x3ed9999a    # 0.425f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v1

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidth()I

    move-result v1

    add-int/lit8 v4, v1, -0x4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v1, 0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v1

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v1

    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x4

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidth()I

    move-result v1

    add-int/lit8 v4, v1, -0x4

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v5, v1, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEW_GAME_EDGE_LINE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEW_GAME_EDGE_LINE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEW_GAME_EDGE_LINE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v1

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255_255_255:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidth()I

    move-result v1

    add-int/lit8 v4, v1, -0x4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f266666    # 0.65f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v1

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->line_32_off1:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/ImageManager;->getImage(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidth()I

    move-result v1

    div-int/lit8 v4, v1, 0x2

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v0, 0x0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    invoke-virtual {p0, p1, v0, v1, p3}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->drawMenuElements(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    # Console float docks SAVE; draw typed text inside that field (not screen-left / Save label)
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->commandsMode:Z

    if-eqz v1, :cond_kbmsg_ok

    if-eqz v0, :cond_kbmsg_ph

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_kbmsg_ok

    :cond_kbmsg_ph
    const-string v0, "\u63a7\u5236\u53f0.."

    :cond_kbmsg_ok
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElementsSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v1

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosX()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int/2addr v1, p2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElementsSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->iTextHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3f50d0d1

    const v5, 0x3f2babac

    const v6, 0x3ee2e2e3

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->barTime:J

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->drawBar:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x2bc

    :goto_0
    int-to-long v0, v0

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->drawBar:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->drawBar:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->barTime:J

    const/4 v0, 0x1

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRender_3(Z)V

    :cond_0
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->drawBar:Z

    if-eqz v0, :cond_1

    const-string v0, "|"

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->iTextWidth:I

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElementsSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElementsSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->iTextHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x28a

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected final onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->closeMenu()V

    return-void
.end method

.method protected onMenuPressed()V
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->iTextWidth:I

    return-void
.end method

.method protected final setVisible(Z)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->iTextWidth:I

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLayout:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v1, v1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->iTextHeight:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->barTime:J

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->drawBar:Z

    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/SliderMenu;->setVisible(Z)V

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->closeMenu:Z

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->resetAnimation()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final shiftAction()V
    .locals 4

    const/4 v2, 0x0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shift:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shift:Z

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->numbers:Z

    if-eqz v1, :cond_0

    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->numbers:Z

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->actionClose()V

    :cond_0
    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v3

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shift:Z

    if-eqz v1, :cond_2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD_ACTIVE:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    :goto_1
    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setTypeOfButton(Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;)V

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shift:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->numbers:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysNUM:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;->KEYBOARD_OPTIONS:Lage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->numbers:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysNUM:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeysSHIFT:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    return-void
.end method

.method protected updateLanguage()V
    .locals 4

    const/16 v3, 0x1a

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Shift"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->lKeys:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->langManager:Lage/of/civilizations2/jakowski/lukasz/LanguageManager;

    const-string v2, "Save"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->setText(Ljava/lang/String;)V

    return-void
.end method
