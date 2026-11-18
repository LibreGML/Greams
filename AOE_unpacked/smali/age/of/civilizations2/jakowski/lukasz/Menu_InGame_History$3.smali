.class Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_History$3;
.super Lage/of/civilizations2/jakowski/lukasz/Text_Clear;
.source "Menu_InGame_History.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_History;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_History;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_History;IIIIII)V
    .locals 7

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_History$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_History;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Text_Clear;-><init>(IIIIII)V

    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 10

    sget-object p5, Lage/of/civilizations2/jakowski/lukasz/CFG;->historyManager:Lage/of/civilizations2/jakowski/lukasz/HistoryManager;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_History$3;->getTextPos()I

    move-result v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_History$3;->getCurrent()I

    move-result v1

    invoke-virtual {p5, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/HistoryManager;->getHistory(II)Lage/of/civilizations2/jakowski/lukasz/HistoryLog;

    move-result-object v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_History$3;->getTextPos()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_History$3;->getPosX()I

    move-result p5

    add-int v5, p5, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_History$3;->getPosY()I

    move-result p2

    add-int v6, p2, p3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_History$3;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_History$3;->getHeight()I

    move-result v8

    move-object v3, p1

    move v9, p4

    invoke-virtual/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/HistoryLog;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V

    return-void
.end method

.method protected getWidth()I
    .locals 1

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_History$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_History;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu_InGame_History;->getElementW()I

    move-result v0

    return v0
.end method
