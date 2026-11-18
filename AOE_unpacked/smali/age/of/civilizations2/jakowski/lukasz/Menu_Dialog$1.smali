.class Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog$1;
.super Lage/of/civilizations2/jakowski/lukasz/Button_Close;
.source "Menu_Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;IIII)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;

    invoke-direct {p0, p2, p3, p4, p5}, Lage/of/civilizations2/jakowski/lukasz/Button_Close;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method protected getPosY()I
    .locals 2

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu_Dialog;->getMenuElement(I)Lage/of/civilizations2/jakowski/lukasz/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuElement;->getPosY()I

    move-result v0

    return v0
.end method
