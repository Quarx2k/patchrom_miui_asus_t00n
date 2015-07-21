.class public final Lcom/android/bluetooth/LeScanRequestArbitrator;
.super Ljava/lang/Object;
.source "LeScanRequestArbitrator.java"


# static fields
.field private static final DBG:Z = false

.field public static final LE_EXTENDED_SCAN_TYPE:I = 0x2

.field public static final LE_NORMAL_SCAN_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LeScanRequestArbitrator"

.field private static mLock:Ljava/lang/Object;

.field private static volatile sArbitrator:Lcom/android/bluetooth/LeScanRequestArbitrator;


# instance fields
.field private mExtendedScanClient:I

.field private mNormalScanClient:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/bluetooth/LeScanRequestArbitrator;->mLock:Ljava/lang/Object;

    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/LeScanRequestArbitrator;->sArbitrator:Lcom/android/bluetooth/LeScanRequestArbitrator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput v0, p0, Lcom/android/bluetooth/LeScanRequestArbitrator;->mNormalScanClient:I

    .line 92
    iput v0, p0, Lcom/android/bluetooth/LeScanRequestArbitrator;->mExtendedScanClient:I

    .line 53
    iput v0, p0, Lcom/android/bluetooth/LeScanRequestArbitrator;->mNormalScanClient:I

    .line 54
    iput v0, p0, Lcom/android/bluetooth/LeScanRequestArbitrator;->mExtendedScanClient:I

    .line 55
    return-void
.end method

.method public static instance()Lcom/android/bluetooth/LeScanRequestArbitrator;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/android/bluetooth/LeScanRequestArbitrator;->sArbitrator:Lcom/android/bluetooth/LeScanRequestArbitrator;

    if-nez v0, :cond_1

    .line 43
    sget-object v1, Lcom/android/bluetooth/LeScanRequestArbitrator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/LeScanRequestArbitrator;->sArbitrator:Lcom/android/bluetooth/LeScanRequestArbitrator;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/android/bluetooth/LeScanRequestArbitrator;

    invoke-direct {v0}, Lcom/android/bluetooth/LeScanRequestArbitrator;-><init>()V

    sput-object v0, Lcom/android/bluetooth/LeScanRequestArbitrator;->sArbitrator:Lcom/android/bluetooth/LeScanRequestArbitrator;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Lcom/android/bluetooth/LeScanRequestArbitrator;->sArbitrator:Lcom/android/bluetooth/LeScanRequestArbitrator;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public RequestLeScan(I)Z
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    sget-object v2, Lcom/android/bluetooth/LeScanRequestArbitrator;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 59
    if-ne v0, p1, :cond_1

    .line 61
    :try_start_0
    iget v3, p0, Lcom/android/bluetooth/LeScanRequestArbitrator;->mExtendedScanClient:I

    if-nez v3, :cond_0

    .line 62
    iget v1, p0, Lcom/android/bluetooth/LeScanRequestArbitrator;->mNormalScanClient:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/bluetooth/LeScanRequestArbitrator;->mNormalScanClient:I

    .line 63
    monitor-exit v2

    .line 76
    :goto_0
    return v0

    .line 65
    :cond_0
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 67
    :cond_1
    const/4 v3, 0x2

    if-ne v3, p1, :cond_3

    .line 69
    iget v3, p0, Lcom/android/bluetooth/LeScanRequestArbitrator;->mNormalScanClient:I

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/bluetooth/LeScanRequestArbitrator;->mExtendedScanClient:I

    if-nez v3, :cond_2

    .line 70
    iget v1, p0, Lcom/android/bluetooth/LeScanRequestArbitrator;->mExtendedScanClient:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/bluetooth/LeScanRequestArbitrator;->mExtendedScanClient:I

    .line 71
    monitor-exit v2

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 73
    :cond_2
    :try_start_1
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 76
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method public StopLeScan(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 82
    sget-object v1, Lcom/android/bluetooth/LeScanRequestArbitrator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 84
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/LeScanRequestArbitrator;->mNormalScanClient:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/LeScanRequestArbitrator;->mNormalScanClient:I

    .line 88
    :cond_0
    :goto_0
    monitor-exit v1

    .line 89
    return-void

    .line 85
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 86
    iget v0, p0, Lcom/android/bluetooth/LeScanRequestArbitrator;->mExtendedScanClient:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/LeScanRequestArbitrator;->mExtendedScanClient:I

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
