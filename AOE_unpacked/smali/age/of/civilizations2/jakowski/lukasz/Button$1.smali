.class Lage/of/civilizations2/jakowski/lukasz/Button$1;
.super Ljava/lang/Object;
.source "Button.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Button$TextPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Button;->init(Ljava/lang/String;IIIIIZZZZLage/of/civilizations2/jakowski/lukasz/Button$TypeOfButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Button;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Button;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition()I
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button;->getTextWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method
