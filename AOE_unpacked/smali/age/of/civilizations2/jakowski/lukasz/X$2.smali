.class Lage/of/civilizations2/jakowski/lukasz/X$2;
.super Ljava/lang/Object;

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/X;->updateKeyboard_Actions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
    .locals 3

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    :goto_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardMessage:Ljava/lang/String;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/X;->rebuildSelectEventsList()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->sSearch:Ljava/lang/String;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/X;->rebuildSelectEventsList()V

    :goto_1
    return-void
.end method
