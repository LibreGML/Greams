.class public final Lage/of/civilizations2/jakowski/lukasz/CalcFns;
.super Ljava/lang/Object;
.source "CalcFns.java"


# static fields
.field private static final B64:[C

.field private static final COMB_MAX_N:I = 0x3e8

.field private static final FACT_MAX:I = 0xc8

.field private static final HELP:Ljava/util/Map;

.field private static final RNG:Ljava/util/Random;

.field private static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->HELP:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->RNG:Ljava/util/Random;

    .line 17
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->UTF8:Ljava/nio/charset/Charset;

    .line 20
    const/16 v0, 0x48

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "abs"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "round"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "floor"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "ceil"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "trunc"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v4, "min"

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v4, "max"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v4, "sum"

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v4, "pow"

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-string v4, "sqrt"

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string v4, "cbrt"

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-string v4, "hypot"

    aput-object v4, v1, v2

    const/16 v2, 0xc

    const-string v4, "exp"

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-string v4, "expm1"

    aput-object v4, v1, v2

    const/16 v2, 0xe

    const-string v4, "log"

    aput-object v4, v1, v2

    const/16 v2, 0xf

    const-string v4, "log10"

    aput-object v4, v1, v2

    const/16 v2, 0x10

    const-string v4, "log2"

    aput-object v4, v1, v2

    const/16 v2, 0x11

    const-string v4, "log1p"

    aput-object v4, v1, v2

    const/16 v2, 0x12

    const-string v4, "sin"

    aput-object v4, v1, v2

    const/16 v2, 0x13

    const-string v4, "cos"

    aput-object v4, v1, v2

    const/16 v2, 0x14

    const-string v4, "tan"

    aput-object v4, v1, v2

    const/16 v2, 0x15

    const-string v4, "asin"

    aput-object v4, v1, v2

    const/16 v2, 0x16

    const-string v4, "acos"

    aput-object v4, v1, v2

    const/16 v2, 0x17

    const-string v4, "atan"

    aput-object v4, v1, v2

    const/16 v2, 0x18

    const-string v4, "atan2"

    aput-object v4, v1, v2

    const/16 v2, 0x19

    const-string v4, "sinh"

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    const-string v4, "cosh"

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    const-string v4, "tanh"

    aput-object v4, v1, v2

    const/16 v2, 0x1c

    const-string v4, "asinh"

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    const-string v4, "acosh"

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    const-string v4, "atanh"

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    const-string v4, "degrees"

    aput-object v4, v1, v2

    const/16 v2, 0x20

    const-string v4, "radians"

    aput-object v4, v1, v2

    const/16 v2, 0x21

    const-string v4, "clamp"

    aput-object v4, v1, v2

    const/16 v2, 0x22

    const-string v4, "sign"

    aput-object v4, v1, v2

    const/16 v2, 0x23

    const-string v4, "frac"

    aput-object v4, v1, v2

    const/16 v2, 0x24

    const-string v4, "complex"

    aput-object v4, v1, v2

    const/16 v2, 0x25

    const-string v4, "real"

    aput-object v4, v1, v2

    const/16 v2, 0x26

    const-string v4, "imag"

    aput-object v4, v1, v2

    const/16 v2, 0x27

    const-string v4, "conj"

    aput-object v4, v1, v2

    const/16 v2, 0x28

    const-string v4, "phase"

    aput-object v4, v1, v2

    const/16 v2, 0x29

    const-string v4, "arg"

    aput-object v4, v1, v2

    const/16 v2, 0x2a

    const-string v4, "polar"

    aput-object v4, v1, v2

    const/16 v2, 0x2b

    const-string v4, "rect"

    aput-object v4, v1, v2

    const/16 v2, 0x2c

    const-string v4, "int"

    aput-object v4, v1, v2

    const/16 v2, 0x2d

    const-string v4, "float"

    aput-object v4, v1, v2

    const/16 v2, 0x2e

    const-string v4, "bool"

    aput-object v4, v1, v2

    const/16 v2, 0x2f

    const-string v4, "gcd"

    aput-object v4, v1, v2

    const/16 v2, 0x30

    const-string v4, "lcm"

    aput-object v4, v1, v2

    const/16 v2, 0x31

    const-string v4, "factorial"

    aput-object v4, v1, v2

    const/16 v2, 0x32

    const-string v4, "comb"

    aput-object v4, v1, v2

    const/16 v2, 0x33

    const-string v4, "perm"

    aput-object v4, v1, v2

    const/16 v2, 0x34

    const-string v4, "isqrt"

    aput-object v4, v1, v2

    const/16 v2, 0x35

    const-string v4, "bit_length"

    aput-object v4, v1, v2

    const/16 v2, 0x36

    const-string v4, "bit_count"

    aput-object v4, v1, v2

    const/16 v2, 0x37

    const-string v4, "bin"

    aput-object v4, v1, v2

    const/16 v2, 0x38

    const-string v4, "oct"

    aput-object v4, v1, v2

    const/16 v2, 0x39

    const-string v4, "hex"

    aput-object v4, v1, v2

    const/16 v2, 0x3a

    const-string v4, "tobase"

    aput-object v4, v1, v2

    const/16 v2, 0x3b

    const-string v4, "rand"

    aput-object v4, v1, v2

    const/16 v2, 0x3c

    const-string v4, "randint"

    aput-object v4, v1, v2

    const/16 v2, 0x3d

    const-string v4, "len"

    aput-object v4, v1, v2

    const/16 v2, 0x3e

    const-string v4, "ord"

    aput-object v4, v1, v2

    const/16 v2, 0x3f

    const-string v4, "chr"

    aput-object v4, v1, v2

    const/16 v2, 0x40

    const-string v4, "hexencode"

    aput-object v4, v1, v2

    const/16 v2, 0x41

    const-string v4, "hexdecode"

    aput-object v4, v1, v2

    const/16 v2, 0x42

    const-string v4, "b64encode"

    aput-object v4, v1, v2

    const/16 v2, 0x43

    const-string v4, "b64decode"

    aput-object v4, v1, v2

    const/16 v2, 0x44

    const-string v4, "urlencode"

    aput-object v4, v1, v2

    const/16 v2, 0x45

    const-string v4, "urldecode"

    aput-object v4, v1, v2

    const/16 v2, 0x46

    const-string v4, "repr"

    aput-object v4, v1, v2

    const/16 v2, 0x47

    const-string v4, "str"

    aput-object v4, v1, v2

    .line 33
    nop

    :goto_1c3
    if-ge v3, v0, :cond_1d1

    .line 34
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->HELP:Ljava/util/Map;

    aget-object v4, v1, v3

    aget-object v5, v1, v3

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c3

    .line 672
    :cond_1d1
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->B64:[C

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static base64Decode(Ljava/lang/String;)[B
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 702
    const-string v0, "\r"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 703
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_ca

    .line 706
    nop

    .line 707
    const-string v0, "=="

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 708
    const/4 v0, 0x2

    goto :goto_33

    .line 709
    :cond_28
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 710
    const/4 v0, 0x1

    goto :goto_33

    .line 709
    :cond_32
    const/4 v0, 0x0

    .line 712
    :goto_33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v2, v0

    .line 713
    new-array v0, v2, [B

    .line 714
    const/16 v3, 0x80

    new-array v4, v3, [I

    .line 715
    const/4 v5, 0x0

    :goto_43
    if-ge v5, v3, :cond_4b

    .line 716
    const/4 v6, -0x1

    aput v6, v4, v5

    .line 715
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 718
    :cond_4b
    const/4 v3, 0x0

    :goto_4c
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->B64:[C

    array-length v5, v5

    if-ge v3, v5, :cond_5a

    .line 719
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->B64:[C

    aget-char v5, v5, v3

    aput v3, v4, v5

    .line 718
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 721
    :cond_5a
    nop

    .line 722
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_5d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_c9

    .line 723
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->dec64([IC)I

    move-result v6

    .line 724
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->dec64([IC)I

    move-result v7

    .line 725
    add-int/lit8 v8, v3, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3d

    if-ne v9, v10, :cond_81

    const/4 v8, 0x0

    goto :goto_89

    :cond_81
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->dec64([IC)I

    move-result v8

    .line 726
    :goto_89
    add-int/lit8 v9, v3, 0x3

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v10, :cond_93

    const/4 v9, 0x0

    goto :goto_9b

    :cond_93
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->dec64([IC)I

    move-result v9

    .line 727
    :goto_9b
    shl-int/lit8 v6, v6, 0x12

    shl-int/lit8 v7, v7, 0xc

    or-int/2addr v6, v7

    shl-int/lit8 v7, v8, 0x6

    or-int/2addr v6, v7

    or-int/2addr v6, v9

    .line 728
    if-ge v5, v2, :cond_b0

    .line 729
    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v6, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v5

    move v5, v7

    .line 731
    :cond_b0
    if-ge v5, v2, :cond_bc

    .line 732
    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v5

    move v5, v7

    .line 734
    :cond_bc
    if-ge v5, v2, :cond_c6

    .line 735
    add-int/lit8 v7, v5, 0x1

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    move v5, v7

    .line 722
    :cond_c6
    add-int/lit8 v3, v3, 0x4

    goto :goto_5d

    .line 738
    :cond_c9
    return-object v0

    .line 704
    :cond_ca
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string v0, "\u574f\u7684 base64"

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static base64Encode([B)Ljava/lang/String;
    .registers 7

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 676
    const/4 v1, 0x0

    .line 677
    :goto_d
    add-int/lit8 v3, v1, 0x2

    array-length v4, p0

    if-ge v3, v4, :cond_53

    .line 678
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    .line 679
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->B64:[C

    shr-int/lit8 v5, v3, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 680
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->B64:[C

    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 681
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->B64:[C

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 682
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->B64:[C

    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 683
    add-int/lit8 v1, v1, 0x3

    .line 684
    goto :goto_d

    .line 685
    :cond_53
    array-length v3, p0

    sub-int/2addr v3, v1

    .line 686
    const/4 v4, 0x1

    if-ne v3, v4, :cond_7a

    .line 687
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    .line 688
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->B64:[C

    shr-int/lit8 v2, p0, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 689
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->B64:[C

    shr-int/lit8 p0, p0, 0xc

    and-int/lit8 p0, p0, 0x3f

    aget-char p0, v1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 690
    const-string p0, "=="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b1

    .line 691
    :cond_7a
    if-ne v3, v2, :cond_b1

    .line 692
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v4

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v2

    .line 693
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->B64:[C

    shr-int/lit8 v2, p0, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 694
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->B64:[C

    shr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 695
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->B64:[C

    shr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3f

    aget-char p0, v1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 696
    const/16 p0, 0x3d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b2

    .line 691
    :cond_b1
    :goto_b1
    nop

    .line 698
    :goto_b2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static call(Ljava/lang/String;[Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 46
    if-eqz p0, :cond_60

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string v1, "arg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 52
    const-string v0, "phase"

    .line 54
    :cond_10
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->HELP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "int"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    :cond_1d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->HELP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 60
    if-nez p1, :cond_2a

    .line 61
    const/4 p0, 0x0

    new-array p1, p0, [Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    .line 64
    :cond_2a
    :try_start_2a
    invoke-static {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->dispatch(Ljava/lang/String;[Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->simplify()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0
    :try_end_32
    .catch Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException; {:try_start_2a .. :try_end_32} :catch_45
    .catch Ljava/lang/ArithmeticException; {:try_start_2a .. :try_end_32} :catch_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_32} :catch_33

    return-object p0

    .line 69
    :catch_33
    move-exception p0

    .line 70
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "\u6570\u5b57\u683c\u5f0f\u9519\u8bef"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :catch_3c
    move-exception p0

    .line 68
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "\u6570\u503c\u8d85\u51fa\u8303\u56f4"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :catch_45
    move-exception p0

    .line 66
    throw p0

    .line 58
    :cond_47
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u672a\u77e5\u51fd\u6570: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_60
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "\u7a7a\u51fd\u6570\u540d"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static comb(II)Ljava/math/BigInteger;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 638
    if-ltz p0, :cond_2c

    if-ltz p1, :cond_2c

    if-gt p1, p0, :cond_2c

    const/16 v0, 0x3e8

    if-gt p0, v0, :cond_2c

    .line 641
    sub-int v0, p0, p1

    if-le p1, v0, :cond_f

    .line 642
    move p1, v0

    .line 644
    :cond_f
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 645
    const/4 v1, 0x0

    :goto_12
    if-ge v1, p1, :cond_2b

    .line 646
    sub-int v2, p0, v1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 645
    goto :goto_12

    .line 648
    :cond_2b
    return-object v0

    .line 639
    :cond_2c
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "comb \u53c2\u6570\u975e\u6cd5"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static dec64([IC)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 742
    const/16 v0, 0x80

    if-ge p1, v0, :cond_b

    aget v0, p0, p1

    if-ltz v0, :cond_b

    .line 745
    aget p0, p0, p1

    return p0

    .line 743
    :cond_b
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "\u574f\u7684 base64"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static dispatch(Ljava/lang/String;[Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 75
    const-string v0, "abs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4a

    .line 76
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 77
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->isComplex()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 78
    aget-object p0, p1, v2

    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    aget-object p0, p1, v2

    iget-wide p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 80
    :cond_26
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->isInt()Z

    move-result p0

    if-eqz p0, :cond_3b

    .line 81
    aget-object p0, p1, v2

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 83
    :cond_3b
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 85
    :cond_4a
    const-string v0, "round"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    const/4 v5, 0x2

    if-eqz v0, :cond_8b

    .line 86
    array-length p0, p1

    if-ne p0, v1, :cond_67

    .line 87
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(J)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 89
    :cond_67
    invoke-static {p1, v5}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 90
    aget-object p0, p1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValueExact()I

    move-result p0

    int-to-double v0, p0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 91
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 93
    :cond_8b
    const-string v0, "floor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 94
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 95
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 97
    :cond_a5
    const-string v0, "ceil"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 98
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 99
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 101
    :cond_bf
    const-string v0, "trunc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_e4

    .line 102
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 103
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    .line 104
    cmpg-double v0, p0, v6

    if-gez v0, :cond_db

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    goto :goto_df

    :cond_db
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    :goto_df
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 106
    :cond_e4
    const-string v0, "min"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 107
    array-length p0, p1

    if-lt p0, v1, :cond_107

    .line 110
    aget-object p0, p1, v2

    .line 111
    nop

    :goto_f2
    array-length v0, p1

    if-ge v1, v0, :cond_106

    .line 112
    aget-object v0, p1, v1

    invoke-static {v0, p0, v5}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->cmp(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->truthy()Z

    move-result v0

    if-eqz v0, :cond_103

    .line 113
    aget-object p0, p1, v1

    .line 111
    :cond_103
    add-int/lit8 v1, v1, 0x1

    goto :goto_f2

    .line 116
    :cond_106
    return-object p0

    .line 108
    :cond_107
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "min \u9700\u8981\u53c2\u6570"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_10f
    const-string v0, "max"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 119
    array-length p0, p1

    if-lt p0, v1, :cond_133

    .line 122
    aget-object p0, p1, v2

    .line 123
    nop

    :goto_11d
    array-length v0, p1

    if-ge v1, v0, :cond_132

    .line 124
    aget-object v0, p1, v1

    const/4 v2, 0x4

    invoke-static {v0, p0, v2}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->cmp(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->truthy()Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 125
    aget-object p0, p1, v1

    .line 123
    :cond_12f
    add-int/lit8 v1, v1, 0x1

    goto :goto_11d

    .line 128
    :cond_132
    return-object p0

    .line 120
    :cond_133
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "max \u9700\u8981\u53c2\u6570"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 130
    :cond_13b
    const-string v0, "sum"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v8, 0x0

    if-eqz v0, :cond_157

    .line 131
    invoke-static {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(J)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    .line 132
    nop

    :goto_14a
    array-length v0, p1

    if-ge v2, v0, :cond_156

    .line 133
    aget-object v0, p1, v2

    invoke-static {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->add(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_14a

    .line 135
    :cond_156
    return-object p0

    .line 137
    :cond_157
    const-string v0, "pow"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 138
    invoke-static {p1, v5}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 139
    aget-object p0, p1, v2

    aget-object p1, p1, v1

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->pow(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 141
    :cond_16b
    const-string v0, "sqrt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 142
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 143
    aget-object p0, p1, v2

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->sqrtVal(Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 145
    :cond_17d
    const-string v0, "cbrt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    .line 146
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 147
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 149
    :cond_197
    const-string v0, "hypot"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 150
    invoke-static {p1, v5}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 151
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide v2

    aget-object p0, p1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 153
    :cond_1b7
    const-string v0, "exp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c9

    .line 154
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 155
    aget-object p0, p1, v2

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->expVal(Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 157
    :cond_1c9
    const-string v0, "expm1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e3

    .line 158
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 159
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->expm1(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 161
    :cond_1e3
    const-string v0, "log"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20a

    .line 162
    array-length p0, p1

    if-ne p0, v1, :cond_1fa

    .line 163
    aget-object p0, p1, v2

    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    invoke-static {p0, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->logVal(Lage/of/civilizations2/jakowski/lukasz/CalcValue;D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 165
    :cond_1fa
    invoke-static {p1, v5}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 166
    aget-object p0, p1, v2

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->logVal(Lage/of/civilizations2/jakowski/lukasz/CalcValue;D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 168
    :cond_20a
    const-string v0, "log10"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21c

    .line 169
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 170
    aget-object p0, p1, v2

    invoke-static {p0, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->logVal(Lage/of/civilizations2/jakowski/lukasz/CalcValue;D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 172
    :cond_21c
    const-string v0, "log2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_230

    .line 173
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 174
    aget-object p0, p1, v2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p0, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->logVal(Lage/of/civilizations2/jakowski/lukasz/CalcValue;D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 176
    :cond_230
    const-string v0, "log1p"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    if-eqz v0, :cond_264

    .line 177
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 178
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    .line 179
    cmpg-double v0, p0, v3

    if-ltz v0, :cond_25c

    .line 182
    cmpl-double v0, p0, v3

    if-eqz v0, :cond_254

    .line 185
    invoke-static {p0, p1}, Ljava/lang/Math;->log1p(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 183
    :cond_254
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "log1p(-1)"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 180
    :cond_25c
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "log1p \u5b9a\u4e49\u57df [-1,+inf)"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 187
    :cond_264
    const-string v0, "sin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_276

    .line 188
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 189
    aget-object p0, p1, v2

    invoke-static {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->trig(Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 191
    :cond_276
    const-string v0, "cos"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_288

    .line 192
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 193
    aget-object p0, p1, v2

    invoke-static {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->trig(Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 195
    :cond_288
    const-string v0, "tan"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29a

    .line 196
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 197
    aget-object p0, p1, v2

    invoke-static {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->trig(Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 199
    :cond_29a
    const-string v0, "asin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_2c6

    .line 200
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 201
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    .line 202
    cmpg-double v0, p0, v3

    if-ltz v0, :cond_2be

    cmpl-double v0, p0, v10

    if-gtz v0, :cond_2be

    .line 205
    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 203
    :cond_2be
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "asin \u5b9a\u4e49\u57df [-1,1]"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 207
    :cond_2c6
    const-string v0, "acos"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f0

    .line 208
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 209
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    .line 210
    cmpg-double v0, p0, v3

    if-ltz v0, :cond_2e8

    cmpl-double v0, p0, v10

    if-gtz v0, :cond_2e8

    .line 213
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 211
    :cond_2e8
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "acos \u5b9a\u4e49\u57df [-1,1]"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 215
    :cond_2f0
    const-string v0, "atan"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30a

    .line 216
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 217
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 219
    :cond_30a
    const-string v0, "atan2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32a

    .line 220
    invoke-static {p1, v5}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 221
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide v2

    aget-object p0, p1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 223
    :cond_32a
    const-string v0, "sinh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_344

    .line 224
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 225
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sinh(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 227
    :cond_344
    const-string v0, "cosh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35e

    .line 228
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 229
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cosh(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 231
    :cond_35e
    const-string v0, "tanh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_378

    .line 232
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 233
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->tanh(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 235
    :cond_378
    const-string v0, "asinh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39a

    .line 236
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 237
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    .line 238
    mul-double v0, p0, p0

    add-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 240
    :cond_39a
    const-string v0, "acosh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c8

    .line 241
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 242
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    .line 243
    cmpg-double v0, p0, v10

    if-ltz v0, :cond_3c0

    .line 246
    mul-double v0, p0, p0

    sub-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 244
    :cond_3c0
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "acosh \u5b9a\u4e49\u57df [1,+inf)"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 248
    :cond_3c8
    const-string v0, "atanh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3fa

    .line 249
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 250
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    .line 251
    cmpl-double v0, p0, v3

    if-lez v0, :cond_3f2

    cmpg-double v0, p0, v10

    if-gez v0, :cond_3f2

    .line 254
    add-double v0, p0, v10

    sub-double/2addr v10, p0

    div-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 252
    :cond_3f2
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "atanh \u5b9a\u4e49\u57df (-1,1)"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 256
    :cond_3fa
    const-string v0, "degrees"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_414

    .line 257
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 258
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 260
    :cond_414
    const-string v0, "radians"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42e

    .line 261
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 262
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 264
    :cond_42e
    const-string v0, "clamp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_459

    .line 265
    const/4 p0, 0x3

    invoke-static {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 266
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide v2

    .line 267
    aget-object p0, p1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide v0

    .line 268
    aget-object p0, p1, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    .line 269
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 271
    :cond_459
    const-string v0, "sign"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_493

    .line 272
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 273
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->isInt()Z

    move-result p0

    if-eqz p0, :cond_47a

    .line 274
    aget-object p0, p1, v2

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->i:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(J)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 276
    :cond_47a
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    .line 277
    cmpg-double v0, p0, v6

    if-gez v0, :cond_487

    const-wide/16 p0, -0x1

    goto :goto_48e

    :cond_487
    cmpl-double v0, p0, v6

    if-lez v0, :cond_48c

    goto :goto_48d

    :cond_48c
    const/4 v1, 0x0

    :goto_48d
    int-to-long p0, v1

    :goto_48e
    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(J)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 279
    :cond_493
    const-string v0, "frac"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4ae

    .line 280
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 281
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    .line 282
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    sub-double/2addr p0, v0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 284
    :cond_4ae
    const-string v0, "complex"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e4

    .line 285
    array-length p0, p1

    if-nez p0, :cond_4be

    .line 286
    invoke-static {v6, v7, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofComplex(DD)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 288
    :cond_4be
    array-length p0, p1

    if-ne p0, v1, :cond_4d0

    .line 289
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    .line 290
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    iget-wide p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    invoke-static {v0, v1, p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofComplex(DD)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 292
    :cond_4d0
    invoke-static {p1, v5}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 293
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide v2

    aget-object p0, p1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofComplex(DD)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 295
    :cond_4e4
    const-string v0, "real"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4fc

    .line 296
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 297
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    .line 298
    iget-wide p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 300
    :cond_4fc
    const-string v0, "imag"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_514

    .line 301
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 302
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    .line 303
    iget-wide p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 305
    :cond_514
    const-string v0, "conj"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52f

    .line 306
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 307
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    .line 308
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    iget-wide p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    neg-double p0, p0

    invoke-static {v0, v1, p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofComplex(DD)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 310
    :cond_52f
    const-string v0, "phase"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54d

    .line 311
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 312
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    .line 313
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    iget-wide p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 315
    :cond_54d
    const-string v0, "polar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59e

    .line 316
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 317
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    .line 318
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 319
    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    iget-wide p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->formatDouble(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->formatDouble(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofStr(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 322
    :cond_59e
    const-string v0, "rect"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c6

    .line 323
    invoke-static {p1, v5}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 324
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide v2

    .line 325
    aget-object p0, p1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    .line 326
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v0, v0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double v2, v2, p0

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofComplex(DD)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 328
    :cond_5c6
    const-string v0, "int"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x24

    const-string v4, "\u8fdb\u5236\u987b\u5728 2..36"

    if-eqz v0, :cond_632

    .line 329
    array-length p0, p1

    if-ne p0, v1, :cond_5fa

    .line 330
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->isStr()Z

    move-result p0

    if-eqz p0, :cond_5ef

    .line 331
    new-instance p0, Ljava/math/BigInteger;

    aget-object p1, p1, v2

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->s:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 333
    :cond_5ef
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 335
    :cond_5fa
    invoke-static {p1, v5}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 336
    aget-object p0, p1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValueExact()I

    move-result p0

    .line 337
    if-lt p0, v5, :cond_62c

    if-gt p0, v3, :cond_62c

    .line 340
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->isStr()Z

    move-result v0

    if-eqz v0, :cond_61c

    aget-object p1, p1, v2

    iget-object p1, p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->s:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_622

    :cond_61c
    aget-object p1, p1, v2

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toDisplay()Ljava/lang/String;

    move-result-object p1

    .line 341
    :goto_622
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 338
    :cond_62c
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    invoke-direct {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 343
    :cond_632
    const-string v0, "float"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_661

    .line 344
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 345
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->isStr()Z

    move-result p0

    if-eqz p0, :cond_656

    .line 346
    aget-object p0, p1, v2

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->s:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 348
    :cond_656
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asReal()D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 350
    :cond_661
    const-string v0, "bool"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_677

    .line 351
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 352
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->truthy()Z

    move-result p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofBool(Z)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 354
    :cond_677
    const-string v0, "gcd"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_697

    .line 355
    invoke-static {p1, v5}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 356
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 358
    :cond_697
    const-string v0, "lcm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6dc

    .line 359
    invoke-static {p1, v5}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 360
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    .line 361
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    .line 362
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_6d7

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_6c3

    goto :goto_6d7

    .line 365
    :cond_6c3
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 366
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->guardBits(Ljava/math/BigInteger;)V

    .line 367
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 363
    :cond_6d7
    :goto_6d7
    invoke-static {v8, v9}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(J)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 369
    :cond_6dc
    const-string v0, "factorial"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_715

    .line 370
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 371
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValueExact()I

    move-result p0

    .line 372
    if-ltz p0, :cond_70d

    const/16 p1, 0xc8

    if-gt p0, p1, :cond_70d

    .line 375
    sget-object p1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 376
    nop

    :goto_6fa
    if-gt v5, p0, :cond_708

    .line 377
    int-to-long v0, v5

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 376
    add-int/lit8 v5, v5, 0x1

    goto :goto_6fa

    .line 379
    :cond_708
    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 373
    :cond_70d
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "factorial \u8303\u56f4 0..200"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 381
    :cond_715
    const-string v0, "comb"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73d

    .line 382
    invoke-static {p1, v5}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 383
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValueExact()I

    move-result p0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValueExact()I

    move-result p1

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->comb(II)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 385
    :cond_73d
    const-string v0, "perm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_786

    .line 386
    invoke-static {p1, v5}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 387
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValueExact()I

    move-result p0

    .line 388
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValueExact()I

    move-result p1

    .line 389
    if-ltz p0, :cond_77e

    if-ltz p1, :cond_77e

    if-gt p1, p0, :cond_77e

    const/16 v0, 0x3e8

    if-gt p0, v0, :cond_77e

    .line 392
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 393
    nop

    :goto_769
    if-ge v2, p1, :cond_779

    .line 394
    sub-int v1, p0, v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 393
    add-int/lit8 v2, v2, 0x1

    goto :goto_769

    .line 396
    :cond_779
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 390
    :cond_77e
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "perm \u53c2\u6570\u975e\u6cd5"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 398
    :cond_786
    const-string v0, "isqrt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7ae

    .line 399
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 400
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    .line 401
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p1

    if-ltz p1, :cond_7a6

    .line 404
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->sqrtBig(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(Ljava/math/BigInteger;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 402
    :cond_7a6
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "isqrt \u9700\u8981\u975e\u8d1f"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 406
    :cond_7ae
    const-string v0, "bit_length"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7cd

    .line 407
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 408
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(J)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 410
    :cond_7cd
    const-string v0, "bit_count"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e8

    .line 411
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 412
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitCount()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(J)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 414
    :cond_7e8
    const-string v0, "bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "-"

    const-string v7, ""

    if-eqz v0, :cond_829

    .line 415
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 416
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    .line 417
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p1

    if-gez p1, :cond_804

    goto :goto_805

    :cond_804
    move-object v6, v7

    .line 418
    :goto_805
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "0b"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofStr(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 420
    :cond_829
    const-string v0, "oct"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_868

    .line 421
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 422
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    .line 423
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p1

    if-gez p1, :cond_841

    goto :goto_842

    :cond_841
    move-object v6, v7

    .line 424
    :goto_842
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "0o"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofStr(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 426
    :cond_868
    const-string v0, "hex"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v8, 0x10

    const-string v9, "0x"

    if-eqz v0, :cond_8a7

    .line 427
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 428
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    .line 429
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p1

    if-gez p1, :cond_884

    goto :goto_885

    :cond_884
    move-object v6, v7

    .line 430
    :goto_885
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofStr(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 432
    :cond_8a7
    const-string v0, "tobase"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f2

    .line 433
    invoke-static {p1, v5}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 434
    aget-object p0, p1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValueExact()I

    move-result p0

    .line 435
    if-lt p0, v5, :cond_8ec

    if-gt p0, v3, :cond_8ec

    .line 438
    aget-object p1, p1, v2

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p1

    .line 439
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_8cd

    goto :goto_8ce

    :cond_8cd
    move-object v6, v7

    .line 440
    :goto_8ce
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofStr(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 436
    :cond_8ec
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    invoke-direct {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 442
    :cond_8f2
    const-string v0, "rand"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_908

    .line 443
    invoke-static {p1, v2}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 444
    sget-object p0, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->RNG:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 446
    :cond_908
    const-string v0, "randint"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_952

    .line 447
    invoke-static {p1, v5}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 448
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    .line 449
    aget-object p0, p1, v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    .line 450
    cmp-long v0, p0, v2

    if-gez v0, :cond_92e

    .line 451
    nop

    .line 452
    nop

    .line 453
    goto :goto_931

    .line 450
    :cond_92e
    move-wide v12, v2

    move-wide v2, p0

    move-wide p0, v12

    .line 455
    :goto_931
    sub-long/2addr v2, p0

    const-wide/32 v0, 0x7fffffff

    cmp-long v4, v2, v0

    if-gtz v4, :cond_94a

    .line 458
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    long-to-int v0, v2

    .line 459
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->RNG:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p0, v0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(J)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 456
    :cond_94a
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "randint \u533a\u95f4\u8fc7\u5927"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 461
    :cond_952
    const-string v0, "len"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97b

    .line 462
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 463
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->isStr()Z

    move-result p0

    if-eqz p0, :cond_973

    .line 466
    aget-object p0, p1, v2

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->s:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(J)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 464
    :cond_973
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "len \u9700\u8981\u5b57\u7b26\u4e32"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 468
    :cond_97b
    const-string v0, "ord"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9ae

    .line 469
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 470
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->isStr()Z

    move-result p0

    if-eqz p0, :cond_9a6

    aget-object p0, p1, v2

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->s:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p0, v1, :cond_9a6

    .line 473
    aget-object p0, p1, v2

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->s:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofInt(J)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 471
    :cond_9a6
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "ord \u9700\u8981\u5355\u5b57\u7b26"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 475
    :cond_9ae
    const-string v0, "chr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a02

    .line 476
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 477
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->asInt()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValueExact()I

    move-result p0

    .line 478
    if-ltz p0, :cond_9fa

    const p1, 0x10ffff

    if-gt p0, p1, :cond_9fa

    .line 481
    const p1, 0xffff

    if-gt p0, p1, :cond_9d9

    .line 482
    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofStr(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 484
    :cond_9d9
    const/high16 p1, 0x10000

    sub-int/2addr p0, p1

    .line 485
    shr-int/lit8 p1, p0, 0xa

    const v0, 0xd800

    add-int/2addr p1, v0

    int-to-char p1, p1

    .line 486
    and-int/lit16 p0, p0, 0x3ff

    const v0, 0xdc00

    add-int/2addr p0, v0

    int-to-char p0, p0

    .line 487
    new-instance v0, Ljava/lang/String;

    new-array v3, v5, [C

    aput-char p1, v3, v2

    aput-char p0, v3, v1

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofStr(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 479
    :cond_9fa
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "chr \u8d85\u51fa\u8303\u56f4"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 489
    :cond_a02
    const-string v0, "hexencode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a40

    .line 490
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 491
    aget-object p0, p1, v2

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->strBytes(Lage/of/civilizations2/jakowski/lukasz/CalcValue;)[B

    move-result-object p0

    .line 492
    new-instance p1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 493
    const/4 v0, 0x0

    :goto_a1c
    array-length v3, p0

    if-ge v0, v3, :cond_a37

    .line 494
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v3, "%02x"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_a1c

    .line 496
    :cond_a37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofStr(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 498
    :cond_a40
    const-string v0, "hexdecode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab5

    .line 499
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 500
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->isStr()Z

    move-result p0

    if-eqz p0, :cond_a58

    aget-object p0, p1, v2

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->s:Ljava/lang/String;

    goto :goto_a5e

    :cond_a58
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toDisplay()Ljava/lang/String;

    move-result-object p0

    .line 501
    :goto_a5e
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 502
    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a70

    const-string p1, "0X"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a74

    .line 503
    :cond_a70
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 505
    :cond_a74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    and-int/2addr p1, v1

    if-nez p1, :cond_aad

    .line 508
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    div-int/2addr p1, v5

    new-array v0, p1, [B

    .line 509
    nop

    :goto_a83
    if-ge v2, p1, :cond_aa1

    .line 510
    mul-int/lit8 v1, v2, 0x2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 512
    :try_start_a8d
    invoke-static {v1, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2
    :try_end_a94
    .catch Ljava/lang/NumberFormatException; {:try_start_a8d .. :try_end_a94} :catch_a98

    .line 515
    nop

    .line 509
    add-int/lit8 v2, v2, 0x1

    goto :goto_a83

    .line 513
    :catch_a98
    move-exception p0

    .line 514
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "\u574f\u7684 hex"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 517
    :cond_aa1
    new-instance p0, Ljava/lang/String;

    sget-object p1, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofStr(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 506
    :cond_aad
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "hex \u957f\u5ea6\u987b\u4e3a\u5076\u6570"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 519
    :cond_ab5
    const-string v0, "b64encode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_acf

    .line 520
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 521
    aget-object p0, p1, v2

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->strBytes(Lage/of/civilizations2/jakowski/lukasz/CalcValue;)[B

    move-result-object p0

    .line 522
    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->base64Encode([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofStr(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 524
    :cond_acf
    const-string v0, "b64decode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0c

    .line 525
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 526
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->isStr()Z

    move-result p0

    if-eqz p0, :cond_ae7

    aget-object p0, p1, v2

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->s:Ljava/lang/String;

    goto :goto_aed

    :cond_ae7
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toDisplay()Ljava/lang/String;

    move-result-object p0

    .line 527
    :goto_aed
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 528
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_afc

    .line 529
    invoke-static {v7}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofStr(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 531
    :cond_afc
    new-instance p1, Ljava/lang/String;

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->base64Decode(Ljava/lang/String;)[B

    move-result-object p0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofStr(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 533
    :cond_b0c
    const-string v0, "urlencode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "UTF-8"

    if-eqz v0, :cond_b3e

    .line 534
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 535
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->isStr()Z

    move-result p0

    if-eqz p0, :cond_b26

    aget-object p0, p1, v2

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->s:Ljava/lang/String;

    goto :goto_b2c

    :cond_b26
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toDisplay()Ljava/lang/String;

    move-result-object p0

    .line 537
    :goto_b2c
    :try_start_b2c
    invoke-static {p0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofStr(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0
    :try_end_b34
    .catch Ljava/lang/Exception; {:try_start_b2c .. :try_end_b34} :catch_b35

    return-object p0

    .line 538
    :catch_b35
    move-exception p0

    .line 539
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "urlencode \u5931\u8d25"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 542
    :cond_b3e
    const-string v0, "urldecode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6e

    .line 543
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 544
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->isStr()Z

    move-result p0

    if-eqz p0, :cond_b56

    aget-object p0, p1, v2

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->s:Ljava/lang/String;

    goto :goto_b5c

    :cond_b56
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toDisplay()Ljava/lang/String;

    move-result-object p0

    .line 546
    :goto_b5c
    :try_start_b5c
    invoke-static {p0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofStr(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0
    :try_end_b64
    .catch Ljava/lang/Exception; {:try_start_b5c .. :try_end_b64} :catch_b65

    return-object p0

    .line 547
    :catch_b65
    move-exception p0

    .line 548
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "urldecode \u5931\u8d25"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 551
    :cond_b6e
    const-string v0, "repr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b84

    .line 552
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 553
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toRepr()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofStr(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 555
    :cond_b84
    const-string v0, "str"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9a

    .line 556
    invoke-static {p1, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V

    .line 557
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toDisplay()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofStr(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 559
    :cond_b9a
    new-instance p1, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u672a\u77e5\u51fd\u6570: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static expVal(Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 580
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    .line 581
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    const-wide/16 v2, 0x0

    const-string v4, "\u7ed3\u679c\u6ea2\u51fa"

    const-wide v5, 0x4085e00000000000L    # 700.0

    cmpl-double v7, v0, v2

    if-nez v7, :cond_2a

    .line 582
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    cmpl-double v2, v0, v5

    if-gtz v2, :cond_24

    .line 585
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 583
    :cond_24
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    invoke-direct {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 587
    :cond_2a
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    cmpl-double v2, v0, v5

    if-gtz v2, :cond_4b

    .line 590
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    .line 591
    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v0, v0, v4

    invoke-static {v2, v3, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofComplex(DD)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 588
    :cond_4b
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    invoke-direct {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static logVal(Lage/of/civilizations2/jakowski/lukasz/CalcValue;D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 595
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-lez v2, :cond_57

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p1, v2

    if-eqz v4, :cond_57

    .line 598
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    .line 599
    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    cmpl-double v4, v2, v0

    if-nez v4, :cond_2c

    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    cmpl-double v4, v2, v0

    if-lez v4, :cond_2c

    .line 600
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 602
    :cond_2c
    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    .line 603
    cmpl-double v4, v2, v0

    if-eqz v4, :cond_4f

    .line 606
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 607
    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 608
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    .line 609
    div-double/2addr v0, p0

    div-double/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofComplex(DD)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 604
    :cond_4f
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "log(0)"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 596
    :cond_57
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    const-string p1, "\u975e\u6cd5\u5e95\u6570"

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static names()[Ljava/lang/String;
    .registers 2

    .line 42
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->HELP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->HELP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static need([Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 666
    array-length p0, p0

    if-ne p0, p1, :cond_4

    .line 669
    return-void

    .line 667
    :cond_4
    new-instance p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u6570\u4e2a\u6570\u5e94\u4e3a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static printHelp()V
    .registers 6

    .line 749
    const-string v0, "--- \u8ba1\u7b97\u51fd\u6570 ---"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 750
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->names()[Ljava/lang/String;

    move-result-object v0

    .line 751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 752
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    array-length v4, v0

    if-ge v3, v4, :cond_38

    .line 753
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1e

    .line 754
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 756
    :cond_1e
    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0x38

    if-le v4, v5, :cond_35

    .line 758
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 759
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 752
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 762
    :cond_38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_45

    .line 763
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/ConsoleOut;->usage(Ljava/lang/String;)V

    .line 765
    :cond_45
    return-void
.end method

.method private static sqrtBig(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4

    .line 652
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_9

    .line 653
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p0

    .line 655
    :cond_9
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 657
    :goto_15
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 658
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_38

    .line 661
    :cond_35
    nop

    .line 662
    move-object v0, v1

    goto :goto_15

    .line 659
    :cond_38
    :goto_38
    invoke-virtual {v1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-lez p0, :cond_48

    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :cond_48
    return-object v1
.end method

.method private static sqrtVal(Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 568
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    .line 569
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1d

    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1d

    .line 570
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 573
    :cond_1d
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 574
    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    iget-wide v4, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    .line 575
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 576
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-static {v4, v5, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofComplex(DD)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0
.end method

.method private static strBytes(Lage/of/civilizations2/jakowski/lukasz/CalcValue;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 563
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->isStr()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->s:Ljava/lang/String;

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toDisplay()Ljava/lang/String;

    move-result-object p0

    .line 564
    :goto_d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method private static trig(Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)Lage/of/civilizations2/jakowski/lukasz/CalcValue;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lage/of/civilizations2/jakowski/lukasz/CalcValue$CalcException;
        }
    .end annotation

    .line 613
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->toComplex()Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object v0

    .line 614
    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    cmpl-double v6, v1, v3

    if-nez v6, :cond_32

    .line 615
    if-nez p1, :cond_1a

    .line 616
    iget-wide p0, v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 618
    :cond_1a
    if-ne p1, v5, :cond_27

    .line 619
    iget-wide p0, v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 621
    :cond_27
    iget-wide p0, v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofReal(D)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 624
    :cond_32
    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->re:D

    .line 625
    iget-wide v3, v0, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->im:D

    .line 626
    if-nez p1, :cond_51

    .line 627
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    invoke-static {v3, v4}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v5

    mul-double p0, p0, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-static {p0, p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofComplex(DD)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 629
    :cond_51
    if-ne p1, v5, :cond_6d

    .line 630
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    invoke-static {v3, v4}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v5

    mul-double p0, p0, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-static {p0, p1, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->ofComplex(DD)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0

    .line 632
    :cond_6d
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->trig(Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p1

    .line 633
    invoke-static {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/CalcFns;->trig(Lage/of/civilizations2/jakowski/lukasz/CalcValue;I)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    .line 634
    invoke-static {p1, p0}, Lage/of/civilizations2/jakowski/lukasz/CalcValue;->div(Lage/of/civilizations2/jakowski/lukasz/CalcValue;Lage/of/civilizations2/jakowski/lukasz/CalcValue;)Lage/of/civilizations2/jakowski/lukasz/CalcValue;

    move-result-object p0

    return-object p0
.end method
