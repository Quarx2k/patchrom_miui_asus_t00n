.class public Lcom/android/bluetooth/btservice/QAdapterService;
.super Landroid/app/Service;
.source "QAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;,
        Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;
    }
.end annotation


# static fields
.field static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = false

.field private static final LE_EXTENDED_SCAN_TOKEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "QBluetoothAdapterService"

.field private static final TRACE_REF:Z = true

.field private static mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private static mQAdapterService:Lcom/android/bluetooth/btservice/QAdapterService;

.field private static sRefCount:I


# instance fields
.field private mAdapterProperties:Lcom/android/bluetooth/btservice/QAdapterProperties;

.field private mCleaningUp:Z

.field private mJniCallbacks:Lcom/android/bluetooth/btservice/QJniCallbacks;

.field private mLeExtendedScanSession:Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;

.field private final mLeLppMonitorClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/IQBluetoothAdapterCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeAvailable:Z

.field private mQBinder:Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;

.field private mScanLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    sput v0, Lcom/android/bluetooth/btservice/QAdapterService;->sRefCount:I

    .line 104
    invoke-static {}, Lcom/android/bluetooth/btservice/QAdapterService;->classInitNative()V

    .line 105
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 153
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeExtendedScanSession:Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    .line 151
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mScanLock:Ljava/lang/Object;

    .line 155
    const-class v1, Lcom/android/bluetooth/btservice/QAdapterService;

    monitor-enter v1

    .line 156
    :try_start_0
    sget v0, Lcom/android/bluetooth/btservice/QAdapterService;->sRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/bluetooth/btservice/QAdapterService;->sRefCount:I

    .line 157
    const-string v0, "QBluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REFCOUNT: CREATED. INSTANCE_COUNT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/bluetooth/btservice/QAdapterService;->sRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    monitor-exit v1

    .line 160
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/bluetooth/btservice/QAdapterService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/QAdapterService;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/QAdapterService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private native btLeExtendedScanNative([Landroid/bluetooth/BluetoothLEServiceUuid;Z)V
.end method

.method private native btLeLppEnableRssiMonitorNative(Ljava/lang/String;Z)V
.end method

.method private native btLeLppReadRssiThresholdNative(Ljava/lang/String;)V
.end method

.method private native btLeLppWriteRssiThresholdNative(Ljava/lang/String;BB)V
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private static declared-synchronized clearAdapterService()V
    .locals 2

    .prologue
    .line 143
    const-class v0, Lcom/android/bluetooth/btservice/QAdapterService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/btservice/QAdapterService;->mQAdapterService:Lcom/android/bluetooth/btservice/QAdapterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit v0

    return-void

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static convertAdvModeFromHal(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 536
    packed-switch p0, :pswitch_data_0

    .line 546
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 538
    :pswitch_0
    const/16 v0, 0x18

    goto :goto_0

    .line 540
    :pswitch_1
    const/16 v0, 0x19

    goto :goto_0

    .line 542
    :pswitch_2
    const/16 v0, 0x1a

    goto :goto_0

    .line 544
    :pswitch_3
    const/16 v0, 0x1b

    goto :goto_0

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static convertAdvModeToHal(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 522
    packed-switch p0, :pswitch_data_0

    .line 532
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 524
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 526
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 528
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 530
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 522
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QBluetoothAdapterService("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return-void
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QBluetoothAdapterService("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return-void
.end method

.method public static declared-synchronized getAdapterService()Lcom/android/bluetooth/btservice/QAdapterService;
    .locals 2

    .prologue
    .line 114
    const-class v1, Lcom/android/bluetooth/btservice/QAdapterService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/bluetooth/btservice/QAdapterService;->mQAdapterService:Lcom/android/bluetooth/btservice/QAdapterService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/btservice/QAdapterService;->mQAdapterService:Lcom/android/bluetooth/btservice/QAdapterService;

    iget-boolean v0, v0, Lcom/android/bluetooth/btservice/QAdapterService;->mCleaningUp:Z

    if-nez v0, :cond_0

    .line 115
    sget-object v0, Lcom/android/bluetooth/btservice/QAdapterService;->mQAdapterService:Lcom/android/bluetooth/btservice/QAdapterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native initNative()Z
.end method

.method private isAvailable()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mCleaningUp:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized setAdapterService(Lcom/android/bluetooth/btservice/QAdapterService;)V
    .locals 2
    .param p0, "instance"    # Lcom/android/bluetooth/btservice/QAdapterService;

    .prologue
    .line 128
    const-class v1, Lcom/android/bluetooth/btservice/QAdapterService;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mCleaningUp:Z

    if-nez v0, :cond_0

    .line 130
    sput-object p0, Lcom/android/bluetooth/btservice/QAdapterService;->mQAdapterService:Lcom/android/bluetooth/btservice/QAdapterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_0
    monitor-exit v1

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native setLEAdvParamsNative(II[BI)Z
.end method

.method private native setLEManuDataNative([B)Z
.end method

.method private native setLEServiceDataNative([B)Z
.end method

.method private native setLEadvMaskNative(I)Z
.end method

.method private native setLEscanRespMaskNative(I)Z
.end method


# virtual methods
.method cleanup()V
    .locals 2

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mCleaningUp:Z

    if-eqz v0, :cond_1

    .line 277
    const-string v0, "QBluetoothAdapterService"

    const-string v1, "*************service already starting to cleanup... Ignoring cleanup request........."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mCleaningUp:Z

    .line 283
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mNativeAvailable:Z

    if-eqz v0, :cond_2

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mNativeAvailable:Z

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/QAdapterProperties;

    if-eqz v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/QAdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/QAdapterProperties;->cleanup()V

    .line 291
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mJniCallbacks:Lcom/android/bluetooth/btservice/QJniCallbacks;

    if-eqz v0, :cond_4

    .line 292
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mJniCallbacks:Lcom/android/bluetooth/btservice/QJniCallbacks;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/QJniCallbacks;->cleanup()V

    .line 295
    :cond_4
    invoke-static {}, Lcom/android/bluetooth/btservice/QAdapterService;->clearAdapterService()V

    .line 297
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mQBinder:Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mQBinder:Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;->cleanup()Z

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mQBinder:Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;

    goto :goto_0
.end method

.method enableRssiMonitor(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 624
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/QAdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v1, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    monitor-enter v1

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/QAdapterService;->btLeLppEnableRssiMonitorNative(Ljava/lang/String;Z)V

    .line 629
    :cond_0
    monitor-exit v1

    .line 630
    return-void

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/QAdapterService;->cleanup()V

    .line 684
    const-class v1, Lcom/android/bluetooth/btservice/AdapterService;

    monitor-enter v1

    .line 685
    :try_start_0
    sget v0, Lcom/android/bluetooth/btservice/QAdapterService;->sRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/bluetooth/btservice/QAdapterService;->sRefCount:I

    .line 686
    const-string v0, "QBluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REFCOUNT: FINALIZED. INSTANCE_COUNT= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/bluetooth/btservice/QAdapterService;->sRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    monitor-exit v1

    .line 689
    return-void

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getLEAdvMode()I
    .locals 2

    .prologue
    .line 456
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/QAdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/QAdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/QAdapterProperties;->getLEAdvMode()I

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mQBinder:Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 165
    new-instance v0, Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;-><init>(Lcom/android/bluetooth/btservice/QAdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mQBinder:Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;

    .line 166
    new-instance v0, Lcom/android/bluetooth/btservice/QAdapterProperties;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/QAdapterProperties;-><init>(Lcom/android/bluetooth/btservice/QAdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/QAdapterProperties;

    .line 167
    new-instance v0, Lcom/android/bluetooth/btservice/QJniCallbacks;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/QAdapterProperties;

    invoke-direct {v0, v1, p0}, Lcom/android/bluetooth/btservice/QJniCallbacks;-><init>(Lcom/android/bluetooth/btservice/QAdapterProperties;Lcom/android/bluetooth/btservice/QAdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mJniCallbacks:Lcom/android/bluetooth/btservice/QJniCallbacks;

    .line 169
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/QAdapterService;->initNative()Z

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mNativeAvailable:Z

    .line 171
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public onLeExtendedScanResult(Ljava/lang/String;I[B)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "advData"    # [B

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "client":Landroid/bluetooth/IQBluetoothAdapterCallback;
    iget-object v3, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mScanLock:Ljava/lang/Object;

    monitor-enter v3

    .line 188
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeExtendedScanSession:Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeExtendedScanSession:Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;

    iget-object v0, v2, Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;->mClient:Landroid/bluetooth/IQBluetoothAdapterCallback;

    .line 191
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    if-eqz v0, :cond_1

    .line 194
    :try_start_1
    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/IQBluetoothAdapterCallback;->onScanResult(Ljava/lang/String;I[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 191
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeExtendedScanSession:Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;

    iget v2, v2, Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;->mScanToken:I

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/QAdapterService;->stopLeExtendedScan(I)V

    .line 197
    const-string v2, "QBluetoothAdapterService"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onLeLppEnableRssiMonitor(Ljava/lang/String;II)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "enable"    # I
    .param p3, "status"    # I

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, "client":Landroid/bluetooth/IQBluetoothAdapterCallback;
    iget-object v4, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    monitor-enter v4

    .line 242
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/bluetooth/IQBluetoothAdapterCallback;

    move-object v1, v0

    .line 243
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    if-eqz v1, :cond_0

    .line 247
    :try_start_1
    invoke-interface {v1, p1, p2, p3}, Landroid/bluetooth/IQBluetoothAdapterCallback;->onEnableRssiMonitor(Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 243
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 248
    :catch_0
    move-exception v2

    .line 249
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "QBluetoothAdapterService"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    iget-object v4, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    monitor-enter v4

    .line 251
    :try_start_3
    iget-object v3, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method onLeLppReadRssiThreshold(Ljava/lang/String;IIII)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "low"    # I
    .param p3, "upper"    # I
    .param p4, "alert"    # I
    .param p5, "status"    # I

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "client":Landroid/bluetooth/IQBluetoothAdapterCallback;
    iget-object v3, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    monitor-enter v3

    .line 224
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/bluetooth/IQBluetoothAdapterCallback;

    move-object v1, v0

    .line 225
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    if-eqz v1, :cond_0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 229
    :try_start_1
    invoke-interface/range {v1 .. v6}, Landroid/bluetooth/IQBluetoothAdapterCallback;->onReadRssiThreshold(Ljava/lang/String;IIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 225
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 230
    :catch_0
    move-exception v7

    .line 231
    .local v7, "e":Landroid/os/RemoteException;
    const-string v2, "QBluetoothAdapterService"

    const-string v3, ""

    invoke-static {v2, v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    iget-object v3, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    monitor-enter v3

    .line 233
    :try_start_3
    iget-object v2, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method onLeLppRssiThresholdEvent(Ljava/lang/String;II)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "evtType"    # I
    .param p3, "rssi"    # I

    .prologue
    .line 258
    const/4 v1, 0x0

    .line 259
    .local v1, "client":Landroid/bluetooth/IQBluetoothAdapterCallback;
    iget-object v4, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    monitor-enter v4

    .line 260
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/bluetooth/IQBluetoothAdapterCallback;

    move-object v1, v0

    .line 261
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    if-eqz v1, :cond_0

    .line 265
    :try_start_1
    invoke-interface {v1, p1, p2, p3}, Landroid/bluetooth/IQBluetoothAdapterCallback;->onRssiThresholdEvent(Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 261
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 266
    :catch_0
    move-exception v2

    .line 267
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "QBluetoothAdapterService"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    iget-object v4, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    monitor-enter v4

    .line 269
    :try_start_3
    iget-object v3, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method onLeLppWriteRssiThreshold(Ljava/lang/String;I)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "client":Landroid/bluetooth/IQBluetoothAdapterCallback;
    iget-object v4, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    monitor-enter v4

    .line 205
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/bluetooth/IQBluetoothAdapterCallback;

    move-object v1, v0

    .line 206
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    if-eqz v1, :cond_0

    .line 210
    :try_start_1
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IQBluetoothAdapterCallback;->onWriteRssiThreshold(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 206
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 211
    :catch_0
    move-exception v2

    .line 212
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "QBluetoothAdapterService"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    iget-object v4, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    monitor-enter v4

    .line 214
    :try_start_3
    iget-object v3, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/QAdapterService;->cleanup()V

    .line 179
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method readRssiThreshold(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 633
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/QAdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v1, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    monitor-enter v1

    .line 635
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/QAdapterService;->btLeLppReadRssiThresholdNative(Ljava/lang/String;)V

    .line 638
    :cond_0
    monitor-exit v1

    .line 639
    return-void

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registerRssiMonitorClient(Ljava/lang/String;Landroid/bluetooth/IQBluetoothAdapterCallback;Z)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "client"    # Landroid/bluetooth/IQBluetoothAdapterCallback;
    .param p3, "add"    # Z

    .prologue
    const/4 v2, 0x1

    .line 582
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/btservice/QAdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v3, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    monitor-enter v3

    .line 584
    if-eqz p3, :cond_4

    .line 585
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 586
    iget-object v4, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/IQBluetoothAdapterCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    .local v1, "savedClient":Landroid/bluetooth/IQBluetoothAdapterCallback;
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/bluetooth/IQBluetoothAdapterCallback;->onUpdateLease()Z

    move-result v4

    if-nez v4, :cond_1

    .line 590
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 597
    .end local v1    # "savedClient":Landroid/bluetooth/IQBluetoothAdapterCallback;
    :cond_1
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez p2, :cond_3

    .line 599
    :cond_2
    const/4 v2, 0x0

    monitor-exit v3

    .line 607
    :goto_1
    return v2

    .line 592
    .restart local v1    # "savedClient":Landroid/bluetooth/IQBluetoothAdapterCallback;
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 610
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "savedClient":Landroid/bluetooth/IQBluetoothAdapterCallback;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 601
    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    monitor-exit v3

    goto :goto_1

    .line 604
    :cond_4
    iget-object v4, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/IQBluetoothAdapterCallback;

    .line 606
    .restart local v1    # "savedClient":Landroid/bluetooth/IQBluetoothAdapterCallback;
    iget-object v4, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method setLEAdvMask(ZZZZZ)Z
    .locals 3
    .param p1, "bLocalName"    # Z
    .param p2, "bServices"    # Z
    .param p3, "bTxPower"    # Z
    .param p4, "bManuData"    # Z
    .param p5, "ServiceData"    # Z

    .prologue
    .line 490
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/QAdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, "dMask":I
    if-eqz p1, :cond_0

    .line 493
    or-int/lit8 v0, v0, 0x1

    .line 494
    :cond_0
    if-eqz p2, :cond_1

    .line 495
    or-int/lit8 v0, v0, 0x40

    .line 496
    :cond_1
    if-eqz p3, :cond_2

    .line 497
    or-int/lit8 v0, v0, 0x8

    .line 498
    :cond_2
    if-eqz p4, :cond_3

    .line 499
    or-int/lit8 v0, v0, 0x4

    .line 500
    :cond_3
    if-eqz p5, :cond_4

    .line 501
    or-int/lit16 v0, v0, 0x100

    .line 502
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in AdapterService, calling the native fn for adv data mask"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/QAdapterService;->debugLog(Ljava/lang/String;)V

    .line 503
    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/QAdapterService;->setLEadvMaskNative(I)Z

    move-result v1

    return v1
.end method

.method setLEAdvMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 469
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/QAdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-static {p1}, Lcom/android/bluetooth/btservice/QAdapterService;->convertAdvModeToHal(I)I

    move-result v0

    .line 472
    .local v0, "newMode":I
    iget-object v1, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/QAdapterProperties;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/QAdapterProperties;->setLEAdvMode(I)Z

    move-result v1

    return v1
.end method

.method native setLEAdvModeNative(I[B)Z
.end method

.method setLEAdvParams(IILjava/lang/String;I)Z
    .locals 3
    .param p1, "min_int"    # I
    .param p2, "max_int"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "ad_type"    # I

    .prologue
    .line 462
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/QAdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-static {p3}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    .line 465
    .local v0, "addr":[B
    const-string v1, "in QAdapterService, calling the native fn"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/QAdapterService;->debugLog(Ljava/lang/String;)V

    .line 466
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/bluetooth/btservice/QAdapterService;->setLEAdvParamsNative(II[BI)Z

    move-result v1

    return v1
.end method

.method setLEManuData([B)Z
    .locals 2
    .param p1, "manuData"    # [B

    .prologue
    .line 476
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/QAdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v0, "in AdapterService, calling the native fn for manudata"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/QAdapterService;->debugLog(Ljava/lang/String;)V

    .line 479
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/QAdapterService;->setLEManuDataNative([B)Z

    move-result v0

    return v0
.end method

.method setLEScanRespMask(ZZZZ)Z
    .locals 3
    .param p1, "bLocalName"    # Z
    .param p2, "bServices"    # Z
    .param p3, "bTxPower"    # Z
    .param p4, "bManuData"    # Z

    .prologue
    .line 507
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/QAdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const/4 v0, 0x0

    .line 509
    .local v0, "dMask":I
    if-eqz p1, :cond_0

    .line 510
    or-int/lit8 v0, v0, 0x1

    .line 511
    :cond_0
    if-eqz p2, :cond_1

    .line 512
    or-int/lit8 v0, v0, 0x40

    .line 513
    :cond_1
    if-eqz p3, :cond_2

    .line 514
    or-int/lit8 v0, v0, 0x8

    .line 515
    :cond_2
    if-eqz p4, :cond_3

    .line 516
    or-int/lit8 v0, v0, 0x4

    .line 517
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in AdapterService, calling the native fn for scan resp mask"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/QAdapterService;->debugLog(Ljava/lang/String;)V

    .line 518
    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/QAdapterService;->setLEscanRespMaskNative(I)Z

    move-result v1

    return v1
.end method

.method setLEServiceData([B)Z
    .locals 2
    .param p1, "serviceData"    # [B

    .prologue
    .line 483
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/QAdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v0, "in AdapterService, calling the native fn for serviceData"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/QAdapterService;->debugLog(Ljava/lang/String;)V

    .line 486
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/QAdapterService;->setLEServiceDataNative([B)Z

    move-result v0

    return v0
.end method

.method startLeExtendedScan([Landroid/bluetooth/BluetoothLEServiceUuid;Landroid/bluetooth/IQBluetoothAdapterCallback;)I
    .locals 4
    .param p1, "services"    # [Landroid/bluetooth/BluetoothLEServiceUuid;
    .param p2, "callback"    # Landroid/bluetooth/IQBluetoothAdapterCallback;

    .prologue
    .line 550
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/QAdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const/4 v0, -0x1

    .line 553
    .local v0, "scanToken":I
    iget-object v2, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mScanLock:Ljava/lang/Object;

    monitor-enter v2

    .line 554
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeExtendedScanSession:Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/bluetooth/LeScanRequestArbitrator;->instance()Lcom/android/bluetooth/LeScanRequestArbitrator;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/LeScanRequestArbitrator;->RequestLeScan(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    new-instance v1, Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;

    const/4 v3, 0x1

    invoke-direct {v1, v3, p1, p2}, Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;-><init>(I[Landroid/bluetooth/BluetoothLEServiceUuid;Landroid/bluetooth/IQBluetoothAdapterCallback;)V

    iput-object v1, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeExtendedScanSession:Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;

    .line 557
    iget-object v1, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeExtendedScanSession:Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;

    if-eqz v1, :cond_1

    .line 558
    iget-object v1, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeExtendedScanSession:Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;

    iget-object v1, v1, Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;->mServiceList:[Landroid/bluetooth/BluetoothLEServiceUuid;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/bluetooth/btservice/QAdapterService;->btLeExtendedScanNative([Landroid/bluetooth/BluetoothLEServiceUuid;Z)V

    .line 559
    iget-object v1, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeExtendedScanSession:Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;

    iget v0, v1, Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;->mScanToken:I

    .line 565
    :cond_0
    :goto_0
    monitor-exit v2

    .line 566
    return v0

    .line 561
    :cond_1
    const-string v1, "QBluetoothAdapterService"

    const-string v3, "No Resource"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-static {}, Lcom/android/bluetooth/LeScanRequestArbitrator;->instance()Lcom/android/bluetooth/LeScanRequestArbitrator;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/LeScanRequestArbitrator;->StopLeScan(I)V

    goto :goto_0

    .line 565
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method stopLeExtendedScan(I)V
    .locals 3
    .param p1, "token"    # I

    .prologue
    .line 570
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/QAdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v1, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mScanLock:Ljava/lang/Object;

    monitor-enter v1

    .line 572
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeExtendedScanSession:Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeExtendedScanSession:Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;

    iget v0, v0, Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;->mScanToken:I

    if-ne v0, p1, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeExtendedScanSession:Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;

    iget-object v0, v0, Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;->mServiceList:[Landroid/bluetooth/BluetoothLEServiceUuid;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/bluetooth/btservice/QAdapterService;->btLeExtendedScanNative([Landroid/bluetooth/BluetoothLEServiceUuid;Z)V

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeExtendedScanSession:Lcom/android/bluetooth/btservice/QAdapterService$LeExtendedScanSession;

    .line 576
    invoke-static {}, Lcom/android/bluetooth/LeScanRequestArbitrator;->instance()Lcom/android/bluetooth/LeScanRequestArbitrator;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/LeScanRequestArbitrator;->StopLeScan(I)V

    .line 578
    :cond_0
    monitor-exit v1

    .line 579
    return-void

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method writeRssiThreshold(Ljava/lang/String;BB)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "min"    # B
    .param p3, "max"    # B

    .prologue
    .line 615
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/QAdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v1, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    monitor-enter v1

    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService;->mLeLppMonitorClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/btservice/QAdapterService;->btLeLppWriteRssiThresholdNative(Ljava/lang/String;BB)V

    .line 620
    :cond_0
    monitor-exit v1

    .line 621
    return-void

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
