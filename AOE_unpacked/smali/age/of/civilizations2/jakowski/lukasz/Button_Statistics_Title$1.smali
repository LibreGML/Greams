.class Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Title$1;
.super Ljava/lang/Object;
.source "Button_Statistics_Title.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Button$TextPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Title;-><init>(Ljava/lang/String;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Title;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Title;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Title$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Title;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition()I
    .locals 3

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Title$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Title;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Title;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Title$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Title;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button_Statistics_Title;->getTextWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float v1, v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
