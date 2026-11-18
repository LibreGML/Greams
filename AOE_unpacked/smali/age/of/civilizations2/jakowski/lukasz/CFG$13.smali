.class final Lage/of/civilizations2/jakowski/lukasz/CFG$13;
.super Ljava/lang/Object;
.source "CFG.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/CFG;->updateKeyboard_Actions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 2

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->changeProvinceNameMode:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->setName(Ljava/lang/String;)V

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->changeProvinceNameMode:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->setActiveProvinceID(I)V

    :try_start_0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->changeCityNameIDToo:I

    if-ltz v0, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->game:Lage/of/civilizations2/jakowski/lukasz/Game;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->changeProvinceNameMode:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Game;->getProvince(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->changeCityNameIDToo:I

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Province;->getCity(I)Lage/of/civilizations2/jakowski/lukasz/City;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/City;->setCityName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
