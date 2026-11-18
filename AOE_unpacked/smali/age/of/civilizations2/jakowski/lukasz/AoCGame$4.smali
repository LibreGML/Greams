.class Lage/of/civilizations2/jakowski/lukasz/AoCGame$4;
.super Ljava/lang/Object;
.source "AoCGame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/AoCGame;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)V
    .locals 0

    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :cond_0
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v2

    const/16 v3, 0x1e

    const/16 v4, 0x3c

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->background:I

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->backgroundLast:I

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->background:I

    const/4 v1, 0x0

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->backgroundAlpha:F

    :goto_0
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->backgroundAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->backgroundAlpha:F

    const v2, 0x3c23d70a    # 0.01f

    add-float/2addr v1, v2

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->backgroundAlpha:F
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
