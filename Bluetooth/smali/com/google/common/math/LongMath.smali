.class public final Lcom/google/common/math/LongMath;
.super Ljava/lang/Object;
.source "LongMath.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/LongMath$1;
    }
.end annotation


# static fields
.field static final BIGGEST_BINOMIALS:[I

.field static final BIGGEST_SIMPLE_BINOMIALS:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final FACTORIALS:[J

.field static final FLOOR_SQRT_MAX_LONG:J = 0xb504f333L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final HALF_POWERS_OF_10:[J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:J = -0x4afb0ccc06219b7cL
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final POWERS_OF_10:[J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x13

    .line 149
    new-array v0, v1, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/LongMath;->POWERS_OF_10:[J

    .line 173
    new-array v0, v1, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/common/math/LongMath;->HALF_POWERS_OF_10:[J

    .line 540
    const/16 v0, 0x15

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/common/math/LongMath;->FACTORIALS:[J

    .line 603
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/common/math/LongMath;->BIGGEST_BINOMIALS:[I

    .line 612
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/common/math/LongMath;->BIGGEST_SIMPLE_BINOMIALS:[I

    return-void

    .line 149
    :array_0
    .array-data 8
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
        0x174876e800L
        0xe8d4a51000L
        0x9184e72a000L
        0x5af3107a4000L
        0x38d7ea4c68000L
        0x2386f26fc10000L
        0x16345785d8a0000L
        0xde0b6b3a7640000L
    .end array-data

    .line 173
    :array_1
    .array-data 8
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0xbc7c871cL
        0x75cdd4719L
        0x49a0a4c700L
        0x2e0466fc608L
        0x1cc2c05dbc53L
        0x11f9b83a95b45L
        0xb3c13249d90bbL
        0x7058bf6e27a751L
        0x463777a4d8c892dL
        0x2be2aac7077d5bc3L    # 2.731041190138108E-97
    .end array-data

    .line 540
    :array_2
    .array-data 8
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
        0x17328cc00L
        0x144c3b2800L
        0x13077775800L
        0x130777758000L
        0x1437eeecd8000L
        0x16beecca730000L
        0x1b02b9306890000L
        0x21c3677c82b40000L
    .end array-data

    .line 603
    :array_3
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x3a25db
        0x1dc79
        0x3f2f
        0x10f1
        0x6c5
        0x377
        0x216
        0x169
        0x109
        0xce
        0xa9
        0x8f
        0x7d
        0x6f
        0x65
        0x5e
        0x58
        0x53
        0x4f
        0x4c
        0x4a
        0x48
        0x46
        0x45
        0x44
        0x43
        0x43
        0x42
        0x42
        0x42
        0x42
    .end array-data

    .line 612
    :array_4
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x285146
        0x150eb
        0x2dcc
        0xc92
        0x521
        0x2ac
        0x1a3
        0x11f
        0xd6
        0xa9
        0x8b
        0x77
        0x69
        0x5f
        0x57
        0x51
        0x4c
        0x49
        0x46
        0x44
        0x42
        0x40
        0x3f
        0x3e
        0x3e
        0x3d
        0x3d
        0x3d
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)J
    .locals 10
    .param p0, "n"    # I
    .param p1, "k"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 571
    const-string v4, "n"

    invoke-static {v4, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 572
    const-string v4, "k"

    invoke-static {v4, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 573
    if-gt p1, p0, :cond_3

    move v4, v5

    :goto_0
    const-string v7, "k (%s) > n (%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-static {v4, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 574
    shr-int/lit8 v4, p0, 0x1

    if-le p1, v4, :cond_0

    .line 575
    sub-int p1, p0, p1

    .line 577
    :cond_0
    sget-object v4, Lcom/google/common/math/LongMath;->BIGGEST_BINOMIALS:[I

    array-length v4, v4

    if-ge p1, v4, :cond_1

    sget-object v4, Lcom/google/common/math/LongMath;->BIGGEST_BINOMIALS:[I

    aget v4, v4, p1

    if-le p0, v4, :cond_4

    .line 578
    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    .line 596
    :cond_2
    return-wide v2

    :cond_3
    move v4, v6

    .line 573
    goto :goto_0

    .line 580
    :cond_4
    const-wide/16 v2, 0x1

    .line 581
    .local v2, "result":J
    sget-object v4, Lcom/google/common/math/LongMath;->BIGGEST_SIMPLE_BINOMIALS:[I

    array-length v4, v4

    if-ge p1, v4, :cond_5

    sget-object v4, Lcom/google/common/math/LongMath;->BIGGEST_SIMPLE_BINOMIALS:[I

    aget v4, v4, p1

    if-gt p0, v4, :cond_5

    .line 583
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 584
    sub-int v4, p0, v1

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 585
    add-int/lit8 v4, v1, 0x1

    int-to-long v4, v4

    div-long/2addr v2, v4

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 590
    .end local v1    # "i":I
    :cond_5
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_2
    if-gt v1, p1, :cond_2

    .line 591
    invoke-static {p0, v1}, Lcom/google/common/math/IntMath;->gcd(II)I

    move-result v0

    .line 592
    .local v0, "d":I
    div-int v4, v1, v0

    int-to-long v4, v4

    div-long/2addr v2, v4

    .line 593
    div-int v4, p0, v0

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 590
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p0, p0, -0x1

    goto :goto_2
.end method

.method public static checkedAdd(JJ)J
    .locals 9
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    const-wide/16 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 437
    add-long v0, p0, p2

    .line 438
    .local v0, "result":J
    xor-long v4, p0, p2

    cmp-long v4, v4, v7

    if-gez v4, :cond_0

    move v4, v2

    :goto_0
    xor-long v5, p0, v0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    :goto_1
    or-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 439
    return-wide v0

    :cond_0
    move v4, v3

    .line 438
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static checkedMultiply(JJ)J
    .locals 12
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 460
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    xor-long v6, p0, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v6

    add-int/2addr v3, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v6

    add-int/2addr v3, v6

    xor-long v6, p2, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v6

    add-int v0, v3, v6

    .line 472
    .local v0, "leadingZeros":I
    const/16 v3, 0x41

    if-le v0, v3, :cond_0

    .line 473
    mul-long v1, p0, p2

    .line 479
    :goto_0
    return-wide v1

    .line 475
    :cond_0
    const/16 v3, 0x40

    if-lt v0, v3, :cond_3

    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 476
    cmp-long v3, p0, v10

    if-ltz v3, :cond_4

    move v6, v4

    :goto_2
    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v3, p2, v7

    if-eqz v3, :cond_5

    move v3, v4

    :goto_3
    or-int/2addr v3, v6

    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 477
    mul-long v1, p0, p2

    .line 478
    .local v1, "result":J
    cmp-long v3, p0, v10

    if-eqz v3, :cond_1

    div-long v6, v1, p0

    cmp-long v3, v6, p2

    if-nez v3, :cond_2

    :cond_1
    move v5, v4

    :cond_2
    invoke-static {v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    goto :goto_0

    .end local v1    # "result":J
    :cond_3
    move v3, v5

    .line 475
    goto :goto_1

    :cond_4
    move v6, v5

    .line 476
    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_3
.end method

.method public static checkedPow(JI)J
    .locals 12
    .param p0, "b"    # J
    .param p2, "k"    # I

    .prologue
    const-wide/16 v4, -0x1

    const-wide/16 v2, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 489
    const-string v8, "exponent"

    invoke-static {v8, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 490
    const-wide/16 v8, -0x2

    cmp-long v8, p0, v8

    if-ltz v8, :cond_3

    move v9, v6

    :goto_0
    const-wide/16 v10, 0x2

    cmp-long v8, p0, v10

    if-gtz v8, :cond_4

    move v8, v6

    :goto_1
    and-int/2addr v8, v9

    if-eqz v8, :cond_0

    .line 491
    long-to-int v8, p0

    packed-switch v8, :pswitch_data_0

    .line 506
    :cond_0
    const-wide/16 v0, 0x1

    .line 508
    .local v0, "accum":J
    :cond_1
    :goto_2
    packed-switch p2, :pswitch_data_1

    .line 514
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_2

    .line 515
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v0

    .line 517
    :cond_2
    shr-int/lit8 p2, p2, 0x1

    .line 518
    if-lez p2, :cond_1

    .line 519
    const-wide v2, 0xb504f333L

    cmp-long v2, p0, v2

    if-gtz v2, :cond_a

    move v2, v6

    :goto_3
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 520
    mul-long/2addr p0, p0

    goto :goto_2

    .end local v0    # "accum":J
    :cond_3
    move v9, v7

    .line 490
    goto :goto_0

    :cond_4
    move v8, v7

    goto :goto_1

    .line 493
    :pswitch_0
    if-nez p2, :cond_6

    .line 512
    :cond_5
    :goto_4
    :pswitch_1
    return-wide v2

    .line 493
    :cond_6
    const-wide/16 v2, 0x0

    goto :goto_4

    .line 497
    :pswitch_2
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_5

    move-wide v2, v4

    goto :goto_4

    .line 499
    :pswitch_3
    const/16 v4, 0x3f

    if-ge p2, v4, :cond_7

    move v4, v6

    :goto_5
    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 500
    shl-long/2addr v2, p2

    goto :goto_4

    :cond_7
    move v4, v7

    .line 499
    goto :goto_5

    .line 502
    :pswitch_4
    const/16 v8, 0x40

    if-ge p2, v8, :cond_8

    :goto_6
    invoke-static {v6}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 503
    and-int/lit8 v6, p2, 0x1

    if-nez v6, :cond_9

    shl-long/2addr v2, p2

    goto :goto_4

    :cond_8
    move v6, v7

    .line 502
    goto :goto_6

    .line 503
    :cond_9
    shl-long v2, v4, p2

    goto :goto_4

    .restart local v0    # "accum":J
    :pswitch_5
    move-wide v2, v0

    .line 510
    goto :goto_4

    .line 512
    :pswitch_6
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v2

    goto :goto_4

    :cond_a
    move v2, v7

    .line 519
    goto :goto_3

    .line 491
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 508
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static checkedSubtract(JJ)J
    .locals 9
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    const-wide/16 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 448
    sub-long v0, p0, p2

    .line 449
    .local v0, "result":J
    xor-long v4, p0, p2

    cmp-long v4, v4, v7

    if-ltz v4, :cond_0

    move v4, v2

    :goto_0
    xor-long v5, p0, v0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    :goto_1
    or-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 450
    return-wide v0

    :cond_0
    move v4, v3

    .line 449
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static divide(JJLjava/math/RoundingMode;)J
    .locals 18
    .param p0, "p"    # J
    .param p2, "q"    # J
    .param p4, "mode"    # Ljava/math/RoundingMode;

    .prologue
    .line 297
    invoke-static/range {p4 .. p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    div-long v5, p0, p2

    .line 299
    .local v5, "div":J
    mul-long v11, p2, v5

    sub-long v8, p0, v11

    .line 301
    .local v8, "rem":J
    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    if-nez v11, :cond_1

    .line 346
    .end local v5    # "div":J
    :cond_0
    :goto_0
    return-wide v5

    .line 312
    .restart local v5    # "div":J
    :cond_1
    xor-long v11, p0, p2

    const/16 v13, 0x3f

    shr-long/2addr v11, v13

    long-to-int v11, v11

    or-int/lit8 v10, v11, 0x1

    .line 314
    .local v10, "signum":I
    sget-object v11, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual/range {p4 .. p4}, Ljava/math/RoundingMode;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 344
    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 316
    :pswitch_0
    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    if-nez v11, :cond_2

    const/4 v11, 0x1

    :goto_1
    invoke-static {v11}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 319
    :pswitch_1
    const/4 v7, 0x0

    .line 346
    .local v7, "increment":Z
    :goto_2
    if-eqz v7, :cond_0

    int-to-long v11, v10

    add-long/2addr v5, v11

    goto :goto_0

    .line 316
    .end local v7    # "increment":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 322
    :pswitch_2
    const/4 v7, 0x1

    .line 323
    .restart local v7    # "increment":Z
    goto :goto_2

    .line 325
    .end local v7    # "increment":Z
    :pswitch_3
    if-lez v10, :cond_3

    const/4 v7, 0x1

    .line 326
    .restart local v7    # "increment":Z
    :goto_3
    goto :goto_2

    .line 325
    .end local v7    # "increment":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    .line 328
    :pswitch_4
    if-gez v10, :cond_4

    const/4 v7, 0x1

    .line 329
    .restart local v7    # "increment":Z
    :goto_4
    goto :goto_2

    .line 328
    .end local v7    # "increment":Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    .line 333
    :pswitch_5
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 334
    .local v1, "absRem":J
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    sub-long/2addr v11, v1

    sub-long v3, v1, v11

    .line 337
    .local v3, "cmpRemToHalfDivisor":J
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-nez v11, :cond_8

    .line 338
    sget-object v11, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    move-object/from16 v0, p4

    if-ne v0, v11, :cond_5

    const/4 v11, 0x1

    :goto_5
    sget-object v12, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_6

    const/4 v12, 0x1

    move v13, v12

    :goto_6
    const-wide/16 v14, 0x1

    and-long/2addr v14, v5

    const-wide/16 v16, 0x0

    cmp-long v12, v14, v16

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    :goto_7
    and-int/2addr v12, v13

    or-int v7, v11, v12

    .restart local v7    # "increment":Z
    goto :goto_2

    .end local v7    # "increment":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    move v13, v12

    goto :goto_6

    :cond_7
    const/4 v12, 0x0

    goto :goto_7

    .line 340
    :cond_8
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-lez v11, :cond_9

    const/4 v7, 0x1

    .line 342
    .restart local v7    # "increment":Z
    :goto_8
    goto :goto_2

    .line 340
    .end local v7    # "increment":Z
    :cond_9
    const/4 v7, 0x0

    goto :goto_8

    .line 314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static factorial(I)J
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 536
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 537
    sget-object v0, Lcom/google/common/math/LongMath;->FACTORIALS:[J

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/common/math/LongMath;->FACTORIALS:[J

    aget-wide v0, v0, p0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method static fitsInInt(J)Z
    .locals 2
    .param p0, "x"    # J

    .prologue
    .line 620
    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static gcd(JJ)J
    .locals 9
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    const-wide/16 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 406
    const-string v6, "a"

    invoke-static {v6, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 407
    const-string v6, "b"

    invoke-static {v6, p2, p3}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 408
    cmp-long v6, p0, v7

    if-nez v6, :cond_0

    move v6, v4

    :goto_0
    cmp-long v7, p2, v7

    if-nez v7, :cond_1

    :goto_1
    or-int/2addr v4, v6

    if-eqz v4, :cond_2

    .line 409
    or-long v4, p0, p2

    .line 428
    :goto_2
    return-wide v4

    :cond_0
    move v6, v5

    .line 408
    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    .line 415
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    .line 416
    .local v0, "aTwos":I
    shr-long/2addr p0, v0

    .line 417
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    .line 418
    .local v1, "bTwos":I
    shr-long/2addr p2, v1

    .line 419
    :goto_3
    cmp-long v4, p0, p2

    if-eqz v4, :cond_4

    .line 420
    cmp-long v4, p0, p2

    if-gez v4, :cond_3

    .line 421
    move-wide v2, p2

    .line 422
    .local v2, "t":J
    move-wide p2, p0

    .line 423
    move-wide p0, v2

    .line 425
    .end local v2    # "t":J
    :cond_3
    sub-long/2addr p0, p2

    .line 426
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    shr-long/2addr p0, v4

    goto :goto_3

    .line 428
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    shl-long v4, p0, v4

    goto :goto_2
.end method

.method public static isPowerOfTwo(J)Z
    .locals 7
    .param p0, "x"    # J

    .prologue
    const-wide/16 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    cmp-long v2, p0, v5

    if-lez v2, :cond_0

    move v2, v0

    :goto_0
    const-wide/16 v3, 0x1

    sub-long v3, p0, v3

    and-long/2addr v3, p0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    :goto_1
    and-int/2addr v0, v2

    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static log10(JLjava/math/RoundingMode;)I
    .locals 5
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .prologue
    .line 113
    const-string v3, "x"

    invoke-static {v3, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 114
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->fitsInInt(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    long-to-int v3, p0

    invoke-static {v3, p2}, Lcom/google/common/math/IntMath;->log10(ILjava/math/RoundingMode;)I

    move-result v2

    .line 133
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 117
    :cond_1
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->log10Floor(J)I

    move-result v2

    .line 118
    .local v2, "logFloor":I
    sget-object v3, Lcom/google/common/math/LongMath;->POWERS_OF_10:[J

    aget-wide v0, v3, v2

    .line 119
    .local v0, "floorPow":J
    sget-object v3, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 135
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 121
    :pswitch_1
    cmp-long v3, p0, v0

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 128
    :pswitch_2
    cmp-long v3, p0, v0

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :pswitch_3
    sget-object v3, Lcom/google/common/math/LongMath;->HALF_POWERS_OF_10:[J

    aget-wide v3, v3, v2

    cmp-long v3, p0, v3

    if-lez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method static log10Floor(J)I
    .locals 3
    .param p0, "x"    # J

    .prologue
    .line 140
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/google/common/math/LongMath;->POWERS_OF_10:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 141
    sget-object v1, Lcom/google/common/math/LongMath;->POWERS_OF_10:[J

    aget-wide v1, v1, v0

    cmp-long v1, p0, v1

    if-gez v1, :cond_0

    .line 142
    add-int/lit8 v1, v0, -0x1

    .line 145
    :goto_1
    return v1

    .line 140
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    sget-object v1, Lcom/google/common/math/LongMath;->POWERS_OF_10:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static log2(JLjava/math/RoundingMode;)I
    .locals 6
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .prologue
    .line 73
    const-string v4, "x"

    invoke-static {v4, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 74
    sget-object v4, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 97
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "impossible"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 76
    :pswitch_0
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 80
    :pswitch_1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    rsub-int/lit8 v3, v4, 0x3f

    .line 94
    :cond_0
    :goto_0
    return v3

    .line 84
    :pswitch_2
    const-wide/16 v4, 0x1

    sub-long v4, p0, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    rsub-int/lit8 v3, v4, 0x40

    goto :goto_0

    .line 90
    :pswitch_3
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    .line 91
    .local v2, "leadingZeros":I
    const-wide v4, -0x4afb0ccc06219b7cL    # -2.734104117489491E-53

    ushr-long v0, v4, v2

    .line 93
    .local v0, "cmp":J
    rsub-int/lit8 v3, v2, 0x3f

    .line 94
    .local v3, "logFloor":I
    cmp-long v4, p0, v0

    if-lez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static mod(JI)I
    .locals 2
    .param p0, "x"    # J
    .param p2, "m"    # I

    .prologue
    .line 367
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/math/LongMath;->mod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static mod(JJ)J
    .locals 5
    .param p0, "x"    # J
    .param p2, "m"    # J

    .prologue
    const-wide/16 v3, 0x0

    .line 387
    cmp-long v2, p2, v3

    if-gtz v2, :cond_0

    .line 388
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Modulus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must be > 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 390
    :cond_0
    rem-long v0, p0, p2

    .line 391
    .local v0, "result":J
    cmp-long v2, v0, v3

    if-ltz v2, :cond_1

    .end local v0    # "result":J
    :goto_0
    return-wide v0

    .restart local v0    # "result":J
    :cond_1
    add-long/2addr v0, p2

    goto :goto_0
.end method

.method public static pow(JI)J
    .locals 9
    .param p0, "b"    # J
    .param p2, "k"    # I

    .prologue
    const/16 v8, 0x40

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x1

    .line 203
    const-string v6, "exponent"

    invoke-static {v6, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 204
    const-wide/16 v6, -0x2

    cmp-long v6, v6, p0

    if-gtz v6, :cond_0

    const-wide/16 v6, 0x2

    cmp-long v6, p0, v6

    if-gtz v6, :cond_0

    .line 205
    long-to-int v6, p0

    packed-switch v6, :pswitch_data_0

    .line 222
    :cond_0
    const-wide/16 v0, 0x1

    .line 223
    .local v0, "accum":J
    :goto_0
    packed-switch p2, :pswitch_data_1

    .line 229
    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_6

    move-wide v4, v2

    :goto_1
    mul-long/2addr v0, v4

    .line 230
    mul-long/2addr p0, p0

    .line 222
    shr-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "accum":J
    :pswitch_0
    if-nez p2, :cond_2

    .line 227
    :cond_1
    :goto_2
    :pswitch_1
    return-wide v2

    :cond_2
    move-wide v2, v4

    .line 207
    goto :goto_2

    .line 211
    :pswitch_2
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_1

    const-wide/16 v2, -0x1

    goto :goto_2

    .line 213
    :pswitch_3
    if-ge p2, v8, :cond_3

    shl-long v4, v2, p2

    :cond_3
    move-wide v2, v4

    goto :goto_2

    .line 215
    :pswitch_4
    if-ge p2, v8, :cond_5

    .line 216
    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_4

    shl-long/2addr v2, p2

    goto :goto_2

    :cond_4
    shl-long/2addr v2, p2

    neg-long v2, v2

    goto :goto_2

    :cond_5
    move-wide v2, v4

    .line 218
    goto :goto_2

    .restart local v0    # "accum":J
    :pswitch_5
    move-wide v2, v0

    .line 225
    goto :goto_2

    .line 227
    :pswitch_6
    mul-long v2, v0, p0

    goto :goto_2

    :cond_6
    move-wide v4, p0

    .line 229
    goto :goto_1

    .line 205
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 223
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static sqrt(JLjava/math/RoundingMode;)J
    .locals 11
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .prologue
    const-wide/16 v9, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 244
    const-string v6, "x"

    invoke-static {v6, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 245
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->fitsInInt(J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 246
    long-to-int v4, p0

    invoke-static {v4, p2}, Lcom/google/common/math/IntMath;->sqrt(ILjava/math/RoundingMode;)I

    move-result v4

    int-to-long v2, v4

    .line 267
    :cond_0
    :goto_0
    :pswitch_0
    return-wide v2

    .line 248
    :cond_1
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->sqrtFloor(J)J

    move-result-wide v2

    .line 249
    .local v2, "sqrtFloor":J
    sget-object v6, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 269
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 251
    :pswitch_1
    mul-long v6, v2, v2

    cmp-long v6, v6, p0

    if-nez v6, :cond_2

    :goto_1
    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 257
    :pswitch_2
    mul-long v4, v2, v2

    cmp-long v4, v4, p0

    if-eqz v4, :cond_0

    add-long/2addr v2, v9

    goto :goto_0

    .line 261
    :pswitch_3
    mul-long v6, v2, v2

    add-long v0, v6, v2

    .line 267
    .local v0, "halfSquare":J
    cmp-long v6, v0, p0

    if-ltz v6, :cond_3

    move v6, v4

    :goto_2
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-gez v7, :cond_4

    :goto_3
    or-int/2addr v4, v6

    if-nez v4, :cond_0

    add-long/2addr v2, v9

    goto :goto_0

    :cond_3
    move v6, v5

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static sqrtFloor(J)J
    .locals 9
    .param p0, "x"    # J

    .prologue
    const/4 v8, 0x1

    .line 275
    long-to-double v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-long v0, v6

    .line 277
    .local v0, "sqrt0":J
    div-long v6, p0, v0

    add-long/2addr v6, v0

    shr-long v4, v6, v8

    .line 278
    .local v4, "sqrt1":J
    cmp-long v6, v4, v0

    if-nez v6, :cond_0

    move-wide v2, v0

    .line 285
    .end local v0    # "sqrt0":J
    .local v2, "sqrt0":J
    :goto_0
    return-wide v2

    .line 282
    .end local v2    # "sqrt0":J
    .restart local v0    # "sqrt0":J
    :cond_0
    move-wide v0, v4

    .line 283
    div-long v6, p0, v0

    add-long/2addr v6, v0

    shr-long v4, v6, v8

    .line 284
    cmp-long v6, v4, v0

    if-ltz v6, :cond_0

    move-wide v2, v0

    .line 285
    .end local v0    # "sqrt0":J
    .restart local v2    # "sqrt0":J
    goto :goto_0
.end method
