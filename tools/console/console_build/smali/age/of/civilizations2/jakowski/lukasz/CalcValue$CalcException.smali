.class public final Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
.super Ljava/lang/Exception;
.source "CalcValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/CalcValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CalcException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 570
    if-nez p1, :cond_4

    const-string p1, "\u8ba1\u7b97\u9519\u8bef"

    :cond_4
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 571
    return-void
.end method
