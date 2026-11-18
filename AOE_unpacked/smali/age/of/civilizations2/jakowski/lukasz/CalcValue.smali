.class public final Lage/of/civilizations2/jakowski/lukasz/CalcValue;
.super Ljava/lang/Object;
.source "CalcValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
    }
.end annotation


# static fields
.field private static final EPS:D = 1.0E-12

.field private static final MAX_BITS:I = 0x40000

.field public static final T_COMPLEX:I = 0x2

.field public static final T_INT:I = 0x0

.field public static final T_REAL:I = 0x1

.field public static final T_STR:I = 0x3


# instance fields
.field public final i:Ljava/math/BigInteger;

.field public final im:D

.field public final re:D

.field public final s:Ljava/lang/String;

.field public final type:I


# direct methods
.method private constructor <init>(ILjava/math/BigInteger;DDLjava/lang/String;)V
    .registers 8

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    .line 20
    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    .line 21
    iput-wide p3, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    .line 22
    iput-wide p5, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    .line 23
    iput-object p7, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->s:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static add(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 261
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_39

    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-ne v0, v1, :cond_a

    goto :goto_39

    .line 268
    :cond_a
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-nez v0, :cond_22

    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-nez v0, :cond_22

    .line 269
    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 270
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->guardBits(Ljava/math/BigInteger;)V

    .line 271
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 273
    :cond_22
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    .line 274
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p1

    .line 275
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    iget-wide v2, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    iget-wide p0, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    add-double/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofComplex(DD)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 262
    :cond_39
    :goto_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toDisplay()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toDisplay()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 263
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/high16 v0, 0x10000

    if-gt p1, v0, :cond_5f

    .line 266
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofStr(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 264
    :cond_5f
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "\u5b57\u7b26\u4e32\u8fc7\u957f"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bitAnd(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 443
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0
.end method

.method public static bitNot(Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 439
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0
.end method

.method public static bitOr(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 447
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0
.end method

.method public static bitXor(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 451
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0
.end method

.method public static cmp(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 486
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p2, v1, :cond_14

    .line 487
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->equalsValue(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Z

    move-result p0

    .line 488
    if-nez p2, :cond_c

    move v0, p0

    goto :goto_f

    :cond_c
    if-nez p0, :cond_f

    const/4 v0, 0x1

    :cond_f
    :goto_f
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofBool(Z)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 490
    :cond_14
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_84

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-eq v2, v3, :cond_84

    .line 493
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6f

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-ne v2, v3, :cond_27

    goto :goto_6f

    .line 497
    :cond_27
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-nez v2, :cond_40

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-nez v2, :cond_40

    .line 498
    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    invoke-static {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->cmpInt(II)Z

    move-result p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofBool(Z)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 500
    :cond_40
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide v2

    .line 501
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    .line 502
    cmpg-double v4, v2, p0

    if-gez v4, :cond_4e

    const/4 v1, -0x1

    goto :goto_54

    :cond_4e
    cmpl-double v4, v2, p0

    if-lez v4, :cond_53

    goto :goto_54

    :cond_53
    const/4 v1, 0x0

    .line 503
    :goto_54
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_6a

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_61

    goto :goto_6a

    .line 506
    :cond_61
    invoke-static {v1, p2}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->cmpInt(II)Z

    move-result p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofBool(Z)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 504
    :cond_6a
    :goto_6a
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofBool(Z)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 494
    :cond_6f
    :goto_6f
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toDisplay()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toDisplay()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    .line 495
    invoke-static {p0, p2}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->cmpInt(II)Z

    move-result p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofBool(Z)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 491
    :cond_84
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "\u590d\u6570\u4e0d\u80fd\u6bd4\u5927\u5c0f"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static cmpInt(II)Z
    .registers 5

    .line 510
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_a

    .line 511
    if-gez p0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1

    .line 513
    :cond_a
    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    .line 514
    if-gtz p0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1

    .line 516
    :cond_12
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1a

    .line 517
    if-lez p0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1

    .line 519
    :cond_1a
    if-ltz p0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    return v1
.end method

.method public static div(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 307
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->needNum(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)V

    .line 308
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    .line 309
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p1

    .line 310
    iget-wide v0, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    iget-wide v2, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    mul-double v0, v0, v2

    iget-wide v2, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    iget-wide v4, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    .line 311
    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3f

    .line 314
    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    iget-wide v4, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    mul-double v2, v2, v4

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    iget-wide v6, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    div-double/2addr v2, v0

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    iget-wide v6, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    mul-double v4, v4, v6

    iget-wide v6, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    iget-wide p0, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    mul-double v6, v6, p0

    sub-double/2addr v4, v6

    div-double/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofComplex(DD)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 312
    :cond_3f
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "\u9664\u96f6"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static equalsValue(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Z
    .registers 9

    .line 523
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5f

    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-ne v0, v3, :cond_c

    goto :goto_5f

    .line 527
    :cond_c
    :try_start_c
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-nez v0, :cond_1d

    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-nez v0, :cond_1d

    .line 528
    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 530
    :cond_1d
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->simplify()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    .line 531
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->simplify()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p1

    .line 532
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-nez v0, :cond_3e

    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-nez v0, :cond_3e

    .line 533
    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 535
    :cond_3e
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    .line 536
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p1

    .line 537
    iget-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    iget-wide v5, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    invoke-static {v3, v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->near(DD)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-wide v3, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    iget-wide p0, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    invoke-static {v3, v4, p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->near(DD)Z

    move-result p0
    :try_end_58
    .catch Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException; {:try_start_c .. :try_end_58} :catch_5d

    if-eqz p0, :cond_5b

    goto :goto_5c

    :cond_5b
    const/4 v1, 0x0

    :goto_5c
    return v1

    .line 538
    :catch_5d
    move-exception p0

    .line 539
    return v2

    .line 524
    :cond_5f
    :goto_5f
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    iget v3, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-ne v0, v3, :cond_74

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toDisplay()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toDisplay()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_74

    goto :goto_75

    :cond_74
    const/4 v1, 0x0

    :goto_75
    return v1
.end method

.method private static escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 227
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 228
    const/16 v3, 0x5c

    if-eq v2, v3, :cond_3b

    const/16 v4, 0x22

    if-ne v2, v4, :cond_19

    goto :goto_3b

    .line 230
    :cond_19
    const/16 v3, 0xa

    if-ne v2, v3, :cond_23

    .line 231
    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 232
    :cond_23
    const/16 v3, 0xd

    if-ne v2, v3, :cond_2d

    .line 233
    const-string v2, "\\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 234
    :cond_2d
    const/16 v3, 0x9

    if-ne v2, v3, :cond_37

    .line 235
    const-string v2, "\\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 237
    :cond_37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 229
    :cond_3b
    :goto_3b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 240
    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static floorDivBig(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6

    .line 365
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 366
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 367
    const/4 v3, 0x1

    aget-object v0, v0, v3

    .line 368
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-gez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p1

    if-gez p1, :cond_20

    const/4 v1, 0x1

    :cond_20
    if-eq p0, v1, :cond_28

    .line 369
    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 371
    :cond_28
    return-object v2
.end method

.method private static floorModBig(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6

    .line 340
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 341
    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 342
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    const/4 v2, 0x0

    if-gez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-gez v3, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    if-eq p0, v1, :cond_25

    .line 343
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 345
    :cond_25
    return-object v0
.end method

.method public static floordiv(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 349
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const-string v1, "\u9664\u96f6"

    if-nez v0, :cond_25

    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-nez v0, :cond_25

    .line 350
    iget-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 354
    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->floorDivBig(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 351
    :cond_1f
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 356
    :cond_25
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide v2

    .line 357
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    .line 358
    const-wide/16 v4, 0x0

    cmpl-double v0, p0, v4

    if-eqz v0, :cond_3d

    .line 361
    div-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 359
    :cond_3d
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static formatDouble(D)Ljava/lang/String;
    .registers 7

    .line 244
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 245
    const-string p0, "nan"

    return-object p0

    .line 247
    :cond_9
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 248
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_18

    const-string p0, "inf"

    goto :goto_1a

    :cond_18
    const-string p0, "-inf"

    :goto_1a
    return-object p0

    .line 250
    :cond_1b
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_36

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x430c6bf526340000L    # 1.0E15

    cmpg-double v4, v0, v2

    if-gez v4, :cond_36

    .line 251
    double-to-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 253
    :cond_36
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    .line 254
    const/16 p1, 0x45

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_48

    .line 255
    const/16 v0, 0x65

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 257
    :cond_48
    return-object p0
.end method

.method static guardBits(Ljava/math/BigInteger;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 90
    if-eqz p0, :cond_17

    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/high16 v0, 0x40000

    if-gt p0, v0, :cond_f

    goto :goto_17

    .line 91
    :cond_f
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string v0, "\u7ed3\u679c\u8fc7\u5927"

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 93
    :cond_17
    :goto_17
    return-void
.end method

.method public static mod(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 319
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const-string v1, "\u9664\u96f6"

    if-nez v0, :cond_25

    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-nez v0, :cond_25

    .line 320
    iget-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 323
    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->floorModBig(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 321
    :cond_1f
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 325
    :cond_25
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide v2

    .line 326
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    .line 327
    const-wide/16 v4, 0x0

    cmpl-double v0, p0, v4

    if-eqz v0, :cond_47

    .line 330
    div-double v0, v2, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 331
    mul-double p0, p0, v0

    sub-double/2addr v2, p0

    .line 333
    cmpl-double p0, v2, v4

    if-nez p0, :cond_41

    .line 334
    goto :goto_42

    .line 333
    :cond_41
    move-wide v4, v2

    .line 336
    :goto_42
    invoke-static {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 328
    :cond_47
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static mul(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 291
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->needNum(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)V

    .line 292
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-nez v0, :cond_41

    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-nez v0, :cond_41

    .line 293
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 294
    const-wide/32 v2, 0x40000

    cmp-long v4, v0, v2

    if-gtz v4, :cond_39

    .line 297
    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 298
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->guardBits(Ljava/math/BigInteger;)V

    .line 299
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 295
    :cond_39
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "\u7ed3\u679c\u8fc7\u5927"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 301
    :cond_41
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    .line 302
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p1

    .line 303
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    iget-wide v2, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    mul-double v0, v0, v2

    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    iget-wide v4, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    iget-wide v4, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    mul-double v2, v2, v4

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    iget-wide p0, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    mul-double v4, v4, p0

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofComplex(DD)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0
.end method

.method private static near(DD)Z
    .registers 10

    .line 544
    const/4 v0, 0x1

    cmpl-double v1, p0, p2

    if-nez v1, :cond_6

    .line 545
    return v0

    .line 547
    :cond_6
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4b

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_4b

    .line 550
    :cond_14
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_46

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_46

    .line 553
    :cond_21
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    .line 554
    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x3d719799812dea11L    # 1.0E-12

    mul-double v1, v1, p2

    cmpg-double p2, p0, v1

    if-gtz p2, :cond_44

    goto :goto_45

    :cond_44
    const/4 v0, 0x0

    :goto_45
    return v0

    .line 551
    :cond_46
    :goto_46
    if-nez v1, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v0, 0x0

    :goto_4a
    return v0

    .line 548
    :cond_4b
    :goto_4b
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_58

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_58

    goto :goto_59

    :cond_58
    const/4 v0, 0x0

    :goto_59
    return v0
.end method

.method private static needNum(Lage/of/civilizations2/jakowski/lukasz/CalcValue;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 558
    iget p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    .line 561
    return-void

    .line 559
    :cond_6
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string v0, "\u9700\u8981\u6570\u5b57"

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static needNum(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 564
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->needNum(Lage/of/civilizations2/jakowski/lukasz/CalcValue;)V

    .line 565
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->needNum(Lage/of/civilizations2/jakowski/lukasz/CalcValue;)V

    .line 566
    return-void
.end method

.method public static neg(Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 428
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->needNum(Lage/of/civilizations2/jakowski/lukasz/CalcValue;)V

    .line 429
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-nez v0, :cond_12

    .line 430
    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 432
    :cond_12
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 433
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    neg-double v0, v0

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 435
    :cond_1f
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    neg-double v0, v0

    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    neg-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofComplex(DD)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0
.end method

.method public static ofBool(Z)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 3

    .line 100
    if-eqz p0, :cond_5

    const-wide/16 v0, 0x1

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x0

    :goto_7
    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(J)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0
.end method

.method public static ofComplex(DD)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 12

    .line 43
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x2

    move-wide v3, p0

    move-wide v5, p2

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;-><init>(ILjava/math/BigInteger;DDLjava/lang/String;)V

    return-object v0
.end method

.method public static ofInt(J)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 2

    .line 34
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0
.end method

.method public static ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 9

    .line 27
    if-nez p0, :cond_6

    .line 28
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    move-object v2, p0

    goto :goto_7

    .line 27
    :cond_6
    move-object v2, p0

    .line 30
    :goto_7
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;-><init>(ILjava/math/BigInteger;DDLjava/lang/String;)V

    return-object v0
.end method

.method public static ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 10

    .line 38
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-wide v3, p0

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;-><init>(ILjava/math/BigInteger;DDLjava/lang/String;)V

    return-object v0
.end method

.method public static ofStr(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 9

    .line 96
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    if-nez p0, :cond_6

    const-string p0, ""

    :cond_6
    move-object v7, p0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;-><init>(ILjava/math/BigInteger;DDLjava/lang/String;)V

    return-object v0
.end method

.method public static pow(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 375
    const-string v0, "\u6307\u6570\u8fc7\u5927"

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->needNum(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)V

    .line 376
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const/4 v2, 0x1

    if-nez v1, :cond_6c

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-nez v1, :cond_6c

    .line 379
    :try_start_e
    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValueExact()I

    move-result p1
    :try_end_14
    .catch Ljava/lang/ArithmeticException; {:try_start_e .. :try_end_14} :catch_65

    .line 382
    nop

    .line 383
    if-gez p1, :cond_2c

    .line 384
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(J)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    neg-int p1, p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(J)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p1

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->pow(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    invoke-static {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->div(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 386
    :cond_2c
    const/16 v1, 0x1000

    if-gt p1, v1, :cond_5f

    .line 390
    int-to-long v0, p1

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    mul-long v0, v0, v2

    .line 391
    const-wide/32 v2, 0x40000

    cmp-long v4, v0, v2

    if-gtz v4, :cond_57

    .line 394
    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 395
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->guardBits(Ljava/math/BigInteger;)V

    .line 396
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 392
    :cond_57
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "\u7ed3\u679c\u8fc7\u5927"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 387
    :cond_5f
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 380
    :catch_65
    move-exception p0

    .line 381
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 398
    :cond_6c
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    .line 399
    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_80

    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-ne v0, v2, :cond_ae

    iget-wide v0, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    cmpl-double v2, v0, v3

    if-nez v2, :cond_ae

    .line 400
    :cond_80
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide v0

    .line 401
    iget-wide v5, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    cmpl-double v2, v5, v3

    if-nez v2, :cond_ae

    iget-wide v5, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    cmpl-double v2, v5, v3

    if-ltz v2, :cond_ae

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_ae

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x412e848000000000L    # 1000000.0

    cmpg-double v2, v5, v7

    if-gez v2, :cond_ae

    .line 402
    iget-wide p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 406
    :cond_ae
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p1

    .line 407
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    iget-wide v5, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 408
    cmpl-double v2, v0, v3

    if-nez v2, :cond_d8

    .line 409
    iget-wide v0, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    cmpl-double p0, v0, v3

    if-gtz p0, :cond_d3

    iget-wide p0, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    cmpl-double v0, p0, v3

    if-eqz v0, :cond_cb

    goto :goto_d3

    .line 412
    :cond_cb
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "0 \u7684\u975e\u6b63\u5e42"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 410
    :cond_d3
    :goto_d3
    invoke-static {v3, v4, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofComplex(DD)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 414
    :cond_d8
    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 416
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 417
    nop

    .line 418
    iget-wide v4, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    mul-double v4, v4, v0

    iget-wide v6, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    mul-double v6, v6, v2

    sub-double/2addr v4, v6

    .line 419
    iget-wide v6, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    mul-double v6, v6, v2

    iget-wide p0, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    mul-double p0, p0, v0

    add-double/2addr v6, p0

    .line 420
    const-wide p0, 0x4085e00000000000L    # 700.0

    cmpl-double v0, v4, p0

    if-gtz v0, :cond_11e

    const-wide p0, -0x3f7a200000000000L    # -700.0

    cmpg-double v0, v4, p0

    if-ltz v0, :cond_11e

    .line 423
    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    .line 424
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v0, v0, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double p0, p0, v2

    invoke-static {v0, v1, p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofComplex(DD)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 421
    :cond_11e
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "\u7ed3\u679c\u6ea2\u51fa"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static realToInt(D)Ljava/math/BigInteger;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 162
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const-string v1, "\u9700\u8981\u6574\u6570"

    if-nez v0, :cond_3f

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 165
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x430c6bf526340000L    # 1.0E15

    cmpl-double v0, v2, v4

    if-gez v0, :cond_39

    .line 168
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    .line 169
    sub-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v4, 0x3d719799812dea11L    # 1.0E-12

    cmpl-double v0, p0, v4

    if-gtz v0, :cond_33

    .line 172
    double-to-long p0, v2

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 170
    :cond_33
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 166
    :cond_39
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 163
    :cond_3f
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    invoke-direct {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static scrubNearZero(D)D
    .registers 7

    .line 69
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1c

    .line 70
    const-wide/16 p0, 0x0

    return-wide p0

    .line 72
    :cond_1c
    return-wide p0
.end method

.method public static shiftLeft(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 457
    const-string v0, "\u79fb\u4f4d\u8d85\u51fa\u8303\u56f4"

    :try_start_2
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValueExact()I

    move-result p1
    :try_end_a
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_a} :catch_3e

    .line 460
    nop

    .line 461
    if-ltz p1, :cond_38

    const/high16 v1, 0x10000

    if-gt p1, v1, :cond_38

    .line 464
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    .line 465
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    int-to-long v0, v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x40000

    cmp-long v4, v0, v2

    if-gtz v4, :cond_30

    .line 468
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 466
    :cond_30
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "\u7ed3\u679c\u8fc7\u5927"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 462
    :cond_38
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 458
    :catch_3e
    move-exception p0

    .line 459
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shiftRight(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 474
    const-string v0, "\u79fb\u4f4d\u8d85\u51fa\u8303\u56f4"

    :try_start_2
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValueExact()I

    move-result p1
    :try_end_a
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_a} :catch_24

    .line 477
    nop

    .line 478
    if-ltz p1, :cond_1e

    const/high16 v1, 0x10000

    if-gt p1, v1, :cond_1e

    .line 481
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 479
    :cond_1e
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 475
    :catch_24
    move-exception p0

    .line 476
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static simplifyReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 9

    .line 76
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_40

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_40

    .line 79
    :cond_d
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->scrubNearZero(D)D

    move-result-wide p0

    .line 80
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x430c6bf526340000L    # 1.0E15

    cmpg-double v4, v0, v2

    if-gez v4, :cond_3b

    .line 81
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    .line 82
    sub-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v6, v2, v4

    if-gez v6, :cond_3b

    .line 83
    double-to-long p0, v0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 86
    :cond_3b
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 77
    :cond_40
    :goto_40
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0
.end method

.method public static sub(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 279
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->needNum(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)V

    .line 280
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-nez v0, :cond_1b

    iget v0, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-nez v0, :cond_1b

    .line 281
    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 282
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->guardBits(Ljava/math/BigInteger;)V

    .line 283
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 285
    :cond_1b
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    .line 286
    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p1

    .line 287
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    iget-wide v2, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    iget-wide p0, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    sub-double/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofComplex(DD)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asInt()Ljava/math/BigInteger;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 149
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-nez v0, :cond_7

    .line 150
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    return-object v0

    .line 152
    :cond_7
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 153
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->realToInt(D)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 155
    :cond_13
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->scrubNearZero(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_2b

    .line 156
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->realToInt(D)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 158
    :cond_2b
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string v1, "\u9700\u8981\u6574\u6570"

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asReal()D
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 133
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-nez v0, :cond_b

    .line 134
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 136
    :cond_b
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 137
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    return-wide v0

    .line 139
    :cond_13
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    .line 140
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->scrubNearZero(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_27

    .line 143
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    return-wide v0

    .line 141
    :cond_27
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string v1, "\u9700\u8981\u5b9e\u6570\uff0c\u5f97\u5230\u590d\u6570"

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_2f
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string v1, "\u9700\u8981\u6570\u5b57"

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isComplex()Z
    .registers 3

    .line 112
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isInt()Z
    .registers 2

    .line 104
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isNumeric()Z
    .registers 3

    .line 116
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isStr()Z
    .registers 3

    .line 108
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public simplify()Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 8

    .line 51
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 52
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->simplifyReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    return-object v0

    .line 54
    :cond_c
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    .line 55
    return-object p0

    .line 57
    :cond_12
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->scrubNearZero(D)D

    move-result-wide v0

    .line 58
    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->scrubNearZero(D)D

    move-result-wide v2

    .line 59
    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_2f

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 60
    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->simplifyReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    return-object v0

    .line 62
    :cond_2f
    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    cmpl-double v6, v0, v4

    if-nez v6, :cond_3d

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_3c

    goto :goto_3d

    .line 65
    :cond_3c
    return-object p0

    .line 63
    :cond_3d
    :goto_3d
    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofComplex(DD)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    return-object v0
.end method

.method public toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 176
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2d

    .line 179
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 180
    return-object p0

    .line 182
    :cond_b
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-nez v0, :cond_20

    .line 183
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;-><init>(ILjava/math/BigInteger;DDLjava/lang/String;)V

    return-object v1

    .line 185
    :cond_20
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    iget-wide v5, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v9}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;-><init>(ILjava/math/BigInteger;DDLjava/lang/String;)V

    return-object v2

    .line 177
    :cond_2d
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string v1, "\u5b57\u7b26\u4e32\u4e0d\u80fd\u8f6c\u590d\u6570"

    invoke-direct {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toDisplay()Ljava/lang/String;
    .registers 8

    .line 189
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 190
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->s:Ljava/lang/String;

    return-object v0

    .line 192
    :cond_8
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-nez v0, :cond_13

    .line 193
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 195
    :cond_13
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 196
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->formatDouble(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 198
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_34

    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_33

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    .line 200
    :cond_34
    :goto_34
    if-eqz v1, :cond_3f

    .line 201
    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    invoke-static {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_3f
    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_76

    .line 204
    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    cmpl-double v6, v2, v4

    if-lez v6, :cond_52

    if-eqz v1, :cond_52

    .line 205
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    :cond_52
    iget-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_60

    .line 208
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 209
    :cond_60
    iget-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_71

    .line 210
    iget-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_71
    :goto_71
    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    :cond_76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRepr()Ljava/lang/String;
    .registers 4

    .line 218
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->s:Ljava/lang/String;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 221
    :cond_23
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toDisplay()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truthy()Z
    .registers 8

    .line 120
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_16

    .line 121
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->s:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    return v2

    .line 123
    :cond_16
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    if-nez v0, :cond_29

    .line 124
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    return v2

    .line 126
    :cond_29
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->type:I

    const/4 v1, 0x2

    const-wide/16 v4, 0x0

    if-ne v0, v1, :cond_3f

    .line 127
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    cmpl-double v6, v0, v4

    if-nez v6, :cond_3e

    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    cmpl-double v6, v0, v4

    if-eqz v6, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x0

    :cond_3e
    :goto_3e
    return v2

    .line 129
    :cond_3f
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    cmpl-double v6, v0, v4

    if-eqz v6, :cond_4e

    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 v2, 0x0

    :goto_4f
    return v2
.end method
