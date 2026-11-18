.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm$2;
.super Lage/of/civilizations2/jakowski/lukasz/Text_Build;
.source "Menu_InGame_BuildConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_BuildConfirm;

    invoke-direct {p0, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Text_Build;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 0

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    return-object p1
.end method
