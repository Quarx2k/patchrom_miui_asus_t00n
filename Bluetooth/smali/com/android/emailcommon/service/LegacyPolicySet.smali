.class public Lcom/android/emailcommon/service/LegacyPolicySet;
.super Ljava/lang/Object;
.source "LegacyPolicySet.java"


# static fields
.field public static final PASSWORD_COMPLEX_CHARS_MASK:J = 0x1f00000000000L

.field public static final PASSWORD_COMPLEX_CHARS_MAX:I = 0x1f

.field public static final PASSWORD_COMPLEX_CHARS_SHIFT:I = 0x2c

.field public static final PASSWORD_EXPIRATION_MASK:J = 0xffc000000L

.field public static final PASSWORD_EXPIRATION_MAX:I = 0x3ff

.field public static final PASSWORD_EXPIRATION_SHIFT:I = 0x1a

.field public static final PASSWORD_HISTORY_MASK:J = 0xff000000000L

.field public static final PASSWORD_HISTORY_MAX:I = 0xff

.field public static final PASSWORD_HISTORY_SHIFT:I = 0x24

.field public static final PASSWORD_LENGTH_MASK:I = 0x1f

.field public static final PASSWORD_LENGTH_MAX:I = 0x1e

.field public static final PASSWORD_LENGTH_SHIFT:I = 0x0

.field public static final PASSWORD_MAX_FAILS_MASK:I = 0x3e00

.field public static final PASSWORD_MAX_FAILS_MAX:I = 0x1f

.field public static final PASSWORD_MAX_FAILS_SHIFT:I = 0x9

.field public static final PASSWORD_MODE_MASK:I = 0x1e0

.field public static final PASSWORD_MODE_NONE:I = 0x0

.field public static final PASSWORD_MODE_SHIFT:I = 0x5

.field public static final PASSWORD_MODE_SIMPLE:I = 0x20

.field public static final PASSWORD_MODE_STRONG:I = 0x40

.field public static final REQUIRE_ENCRYPTION:J = 0x2000000000000L

.field public static final REQUIRE_ENCRYPTION_EXTERNAL:J = 0x4000000000000L

.field public static final REQUIRE_REMOTE_WIPE:I = 0x2000000

.field public static final SCREEN_LOCK_TIME_MASK:I = 0x1ffc000

.field public static final SCREEN_LOCK_TIME_MAX:I = 0x7ff

.field public static final SCREEN_LOCK_TIME_SHIFT:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flagsToPolicy(J)Lcom/android/emailcommon/provider/Policy;
    .locals 8
    .param p0, "flags"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 69
    new-instance v0, Lcom/android/emailcommon/provider/Policy;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    .line 70
    .local v0, "policy":Lcom/android/emailcommon/provider/Policy;
    const-wide/16 v4, 0x1e0

    and-long/2addr v4, p0

    long-to-int v1, v4

    shr-int/lit8 v1, v1, 0x5

    iput v1, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 71
    const-wide/16 v4, 0x1f

    and-long/2addr v4, p0

    shr-long/2addr v4, v3

    long-to-int v1, v4

    iput v1, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 72
    const-wide/16 v4, 0x3e00

    and-long/2addr v4, p0

    const/16 v1, 0x9

    shr-long/2addr v4, v1

    long-to-int v1, v4

    iput v1, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 74
    const-wide v4, 0x1f00000000000L

    and-long/2addr v4, p0

    const/16 v1, 0x2c

    shr-long/2addr v4, v1

    long-to-int v1, v4

    iput v1, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 76
    const-wide v4, 0xff000000000L

    and-long/2addr v4, p0

    const/16 v1, 0x24

    shr-long/2addr v4, v1

    long-to-int v1, v4

    iput v1, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 77
    const-wide v4, 0xffc000000L

    and-long/2addr v4, p0

    const/16 v1, 0x1a

    shr-long/2addr v4, v1

    long-to-int v1, v4

    iput v1, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 79
    const-wide/32 v4, 0x1ffc000    # 1.65699973E-316

    and-long/2addr v4, p0

    const/16 v1, 0xe

    shr-long/2addr v4, v1

    long-to-int v1, v4

    iput v1, v0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 81
    const-wide/32 v4, 0x2000000

    and-long/2addr v4, p0

    cmp-long v1, v6, v4

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    .line 82
    const-wide/high16 v4, 0x2000000000000L

    and-long/2addr v4, p0

    cmp-long v1, v6, v4

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    .line 83
    const-wide/high16 v4, 0x4000000000000L

    and-long/2addr v4, p0

    cmp-long v1, v6, v4

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v2, v0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    .line 84
    return-object v0

    :cond_0
    move v1, v3

    .line 81
    goto :goto_0

    :cond_1
    move v1, v3

    .line 82
    goto :goto_1

    :cond_2
    move v2, v3

    .line 83
    goto :goto_2
.end method
