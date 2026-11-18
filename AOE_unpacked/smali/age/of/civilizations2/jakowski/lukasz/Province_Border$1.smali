.class Lage/of/civilizations2/jakowski/lukasz/Province_Border$1;
.super Ljava/lang/Object;
.source "Province_Border.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Province_Border$DrawProvince_Border;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Province_Border;->updateDrawProvinceBorder(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Province_Border;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Province_Border;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .locals 1

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Province_Border$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Province_Border;

    invoke-virtual {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Province_Border;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    return-void
.end method
