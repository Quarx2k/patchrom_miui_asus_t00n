.class public Lcom/android/bluetooth/map/BluetoothMnsObexClient;
.super Ljava/lang/Object;
.source "BluetoothMnsObexClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMnsObexClient$1;,
        Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;
    }
.end annotation


# static fields
.field public static final BluetoothUuid_ObexMns:Landroid/os/ParcelUuid;

.field private static final D:Z = true

.field public static final MSG_MNS_NOTIFICATION_REGISTRATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothMnsObexClient"

.field private static final TYPE_EVENT:Ljava/lang/String; = "x-bt/MAP-event-report"

.field private static final V:Z = true


# instance fields
.field private hsConnect:Ljavax/obex/HeaderSet;

.field private mClientSession:Ljavax/obex/ClientSession;

.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private mEmailObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field private mEmailObserverRegistered:Z

.field public mHandler:Landroid/os/Handler;

.field private mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field private mObserverRegistered:Z

.field mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mTransport:Ljavax/obex/ObexTransport;

.field private volatile mWaitingForRemote:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "00001133-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->BluetoothUuid_ObexMns:Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    .line 61
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    .line 65
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserverRegistered:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserverRegistered:Z

    .line 67
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 210
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->hsConnect:Ljavax/obex/HeaderSet;

    .line 78
    if-nez p2, :cond_0

    .line 79
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Obex transport is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BluetoothMnsObexClient"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 83
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 84
    .local v0, "looper":Landroid/os/Looper;
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;-><init>(Lcom/android/bluetooth/map/BluetoothMnsObexClient;Landroid/os/Looper;Lcom/android/bluetooth/map/BluetoothMnsObexClient$1;)V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    .line 85
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 87
    return-void
.end method

.method private acquireMnsLock()V
    .locals 3

    .prologue
    .line 444
    const-string v1, "BluetoothMnsObexClient"

    const-string v2, "About to acquire Mns:mWakeLock"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 447
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "MnsPartialWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 448
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 449
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 450
    const-string v1, "BluetoothMnsObexClient"

    const-string v2, "Mns:mWakeLock acquired"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .end local v0    # "pm":Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 453
    :cond_0
    const-string v1, "BluetoothMnsObexClient"

    const-string v2, "Mns:mWakeLock already acquired"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSendException(Ljava/lang/String;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/String;

    .prologue
    .line 440
    const-string v0, "BluetoothMnsObexClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when sending event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void
.end method

.method private releaseMnsLock()V
    .locals 2

    .prologue
    .line 458
    const-string v0, "BluetoothMnsObexClient"

    const-string v1, "About to release Mns:mWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 462
    const-string v0, "BluetoothMnsObexClient"

    const-string v1, "Mns:mWakeLock released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 468
    :cond_0
    return-void

    .line 464
    :cond_1
    const-string v0, "BluetoothMnsObexClient"

    const-string v1, "Mns:mWakeLock already released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public connect()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 250
    const-string v5, "BluetoothMnsObexClient"

    const-string v6, "handleRegistration: connect2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->acquireMnsLock()V

    .line 253
    const/4 v0, 0x0

    .line 255
    .local v0, "btSocket":Landroid/bluetooth/BluetoothSocket;
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->BluetoothUuid_ObexMns:Landroid/os/ParcelUuid;

    invoke-virtual {v6}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    new-instance v5, Lcom/android/bluetooth/map/BluetoothMnsRfcommTransport;

    invoke-direct {v5, v0}, Lcom/android/bluetooth/map/BluetoothMnsRfcommTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mTransport:Ljavax/obex/ObexTransport;

    .line 267
    :try_start_1
    new-instance v5, Ljavax/obex/ClientSession;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mTransport:Ljavax/obex/ObexTransport;

    invoke-direct {v5, v6}, Ljavax/obex/ClientSession;-><init>(Ljavax/obex/ObexTransport;)V

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    .line 268
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    :goto_0
    iget-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    if-eqz v5, :cond_0

    .line 273
    iput-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    .line 274
    new-instance v3, Ljavax/obex/HeaderSet;

    invoke-direct {v3}, Ljavax/obex/HeaderSet;-><init>()V

    .line 276
    .local v3, "hs":Ljavax/obex/HeaderSet;
    const/16 v5, 0x10

    new-array v4, v5, [B

    fill-array-data v4, :array_0

    .line 280
    .local v4, "mnsTarget":[B
    const/16 v5, 0x46

    invoke-virtual {v3, v5, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 282
    monitor-enter p0

    .line 283
    const/4 v5, 0x1

    :try_start_2
    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWaitingForRemote:Z

    .line 284
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    :try_start_3
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    invoke-virtual {v5, v3}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->hsConnect:Ljavax/obex/HeaderSet;

    .line 287
    const-string v5, "BluetoothMnsObexClient"

    const-string v6, "OBEX session created"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 293
    .end local v3    # "hs":Ljavax/obex/HeaderSet;
    .end local v4    # "mnsTarget":[B
    :cond_0
    :goto_1
    monitor-enter p0

    .line 294
    const/4 v5, 0x0

    :try_start_4
    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWaitingForRemote:Z

    .line 295
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 296
    const-string v5, "BluetoothMnsObexClient"

    const-string v6, "Exiting from connect"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->releaseMnsLock()V

    .line 298
    :goto_2
    return-void

    .line 258
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "BluetoothMnsObexClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BtSocket Connect error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 269
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 270
    .local v2, "e1":Ljava/io/IOException;
    const-string v5, "BluetoothMnsObexClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OBEX session create error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    .end local v2    # "e1":Ljava/io/IOException;
    .restart local v3    # "hs":Ljavax/obex/HeaderSet;
    .restart local v4    # "mnsTarget":[B
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    .line 289
    :catch_2
    move-exception v1

    .line 290
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v5, "BluetoothMnsObexClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OBEX session connect error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 295
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "hs":Ljavax/obex/HeaderSet;
    .end local v4    # "mnsTarget":[B
    :catchall_1
    move-exception v5

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v5

    .line 276
    :array_0
    .array-data 1
        -0x45t
        0x58t
        0x2bt
        0x41t
        0x42t
        0xct
        0x11t
        -0x25t
        -0x50t
        -0x22t
        0x8t
        0x0t
        0x20t
        0xct
        -0x66t
        0x66t
    .end array-data
.end method

.method public deinitObserver(I)V
    .locals 3
    .param p1, "masInstanceId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 310
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 311
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unregisterObserver()V

    .line 313
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserverRegistered:Z

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deinit()V

    .line 317
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 329
    :cond_1
    :goto_0
    return-void

    .line 320
    :cond_2
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserverRegistered:Z

    if-eqz v0, :cond_3

    .line 321
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unregisterObserver()V

    .line 322
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserverRegistered:Z

    .line 324
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deinit()V

    .line 326
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    goto :goto_0
.end method

.method public disconnect()V
    .locals 4

    .prologue
    .line 126
    const-string v1, "BluetoothMnsObexClient"

    const-string v2, "BluetoothMnsObexClient: disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 130
    const-string v1, "BluetoothMnsObexClient"

    const-string v2, "OBEX session disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_1

    .line 137
    const-string v1, "BluetoothMnsObexClient"

    const-string v2, "OBEX session close mClientSession"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    invoke-virtual {v1}, Ljavax/obex/ClientSession;->close()V

    .line 139
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    .line 140
    const-string v1, "BluetoothMnsObexClient"

    const-string v2, "OBEX session closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mTransport:Ljavax/obex/ObexTransport;

    if-eqz v1, :cond_2

    .line 147
    :try_start_2
    const-string v1, "BluetoothMnsObexClient"

    const-string v2, "Close Obex Transport"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mTransport:Ljavax/obex/ObexTransport;

    invoke-interface {v1}, Ljavax/obex/ObexTransport;->close()V

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mTransport:Ljavax/obex/ObexTransport;

    .line 150
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    .line 151
    const-string v1, "BluetoothMnsObexClient"

    const-string v2, "Obex Transport Closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 156
    :cond_2
    :goto_2
    const-string v1, "BluetoothMnsObexClient"

    const-string v2, "BluetoothMnsObexClient: exiting from disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BluetoothMnsObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session disconnect error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 143
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "BluetoothMnsObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session close error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 152
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 153
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "BluetoothMnsObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTransport.close error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getContentObserver(I)Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    .locals 1
    .param p1, "masInstanceId"    # I

    .prologue
    .line 94
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 97
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    goto :goto_0
.end method

.method public getMessageHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleRegistration(II)V
    .locals 4
    .param p1, "masId"    # I
    .param p2, "notificationStatus"    # I

    .prologue
    const/4 v3, 0x1

    .line 213
    const-string v0, "BluetoothMnsObexClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRegistration( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    monitor-enter p0

    .line 216
    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserverRegistered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserverRegistered:Z

    if-nez v0, :cond_0

    if-ne p2, v3, :cond_0

    .line 218
    const-string v0, "BluetoothMnsObexClient"

    const-string v1, "handleRegistration: connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->connect()V

    .line 222
    :cond_0
    if-nez p2, :cond_4

    .line 223
    if-ne p1, v3, :cond_3

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserverRegistered:Z

    if-eqz v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unregisterObserver()V

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserverRegistered:Z

    .line 230
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserverRegistered:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserverRegistered:Z

    if-nez v0, :cond_2

    .line 231
    const-string v0, "BluetoothMnsObexClient"

    const-string v1, "handleRegistration: disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->disconnect()V

    .line 246
    :cond_2
    :goto_1
    monitor-exit p0

    .line 247
    return-void

    .line 226
    :cond_3
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserverRegistered:Z

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unregisterObserver()V

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserverRegistered:Z

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 234
    :cond_4
    if-ne p2, v3, :cond_2

    .line 238
    if-ne p1, v3, :cond_5

    :try_start_1
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserverRegistered:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v0, :cond_5

    .line 239
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v0, p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->registerObserver(Lcom/android/bluetooth/map/BluetoothMnsObexClient;I)V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserverRegistered:Z

    goto :goto_1

    .line 241
    :cond_5
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserverRegistered:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v0, p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->registerObserver(Lcom/android/bluetooth/map/BluetoothMnsObexClient;I)V

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserverRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public initObserver(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "masInstanceId"    # I

    .prologue
    .line 301
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 302
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 303
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->init()V

    .line 308
    :goto_0
    return-void

    .line 305
    :cond_0
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 306
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->init()V

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    return v0
.end method

.method public sendEvent([BI)I
    .locals 16
    .param p1, "eventBytes"    # [B
    .param p2, "masInstanceId"    # I

    .prologue
    .line 333
    const-string v11, "BluetoothMnsObexClient"

    const-string v12, "BluetoothMnsObexClient: sendEvent"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->acquireMnsLock()V

    .line 335
    const/4 v5, 0x0

    .line 336
    .local v5, "error":Z
    const/4 v10, -0x1

    .line 338
    .local v10, "responseCode":I
    const/4 v3, 0x0

    .line 339
    .local v3, "bytesWritten":I
    new-instance v9, Ljavax/obex/HeaderSet;

    invoke-direct {v9}, Ljavax/obex/HeaderSet;-><init>()V

    .line 340
    .local v9, "request":Ljavax/obex/HeaderSet;
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 341
    .local v1, "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMasInstanceId(I)V

    .line 343
    const/4 v8, 0x0

    .line 344
    .local v8, "putOperation":Ljavax/obex/ClientOperation;
    const/4 v7, 0x0

    .line 347
    .local v7, "outputStream":Ljava/io/OutputStream;
    const/16 v11, 0x42

    :try_start_0
    const-string v12, "x-bt/MAP-event-report"

    invoke-virtual {v9, v11, v12}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 348
    const/16 v11, 0x4c

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->EncodeParams()[B

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->hsConnect:Ljavax/obex/HeaderSet;

    iget-object v11, v11, Ljavax/obex/HeaderSet;->mConnectionID:[B

    if-eqz v11, :cond_1

    .line 351
    const/4 v11, 0x4

    new-array v11, v11, [B

    iput-object v11, v9, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 352
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->hsConnect:Ljavax/obex/HeaderSet;

    iget-object v11, v11, Ljavax/obex/HeaderSet;->mConnectionID:[B

    const/4 v12, 0x0

    iget-object v13, v9, Ljavax/obex/HeaderSet;->mConnectionID:[B

    const/4 v14, 0x0

    const/4 v15, 0x4

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    :goto_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 358
    const/4 v11, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWaitingForRemote:Z

    .line 359
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    :try_start_2
    const-string v11, "BluetoothMnsObexClient"

    const-string v12, "Send headerset Event "

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    invoke-virtual {v11, v9}, Ljavax/obex/ClientSession;->put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljavax/obex/ClientOperation;

    move-object v8, v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 370
    :goto_1
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 371
    const/4 v11, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWaitingForRemote:Z

    .line 372
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 373
    if-nez v5, :cond_0

    .line 375
    :try_start_5
    const-string v11, "BluetoothMnsObexClient"

    const-string v12, "Send headerset Event "

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {v8}, Ljavax/obex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v7

    .line 383
    :cond_0
    :goto_2
    if-nez v5, :cond_8

    .line 385
    :try_start_6
    invoke-virtual {v8}, Ljavax/obex/ClientOperation;->getMaxPacketSize()I

    move-result v6

    .line 387
    .local v6, "maxChunkSize":I
    :goto_3
    move-object/from16 v0, p1

    array-length v11, v0

    if-ge v3, v11, :cond_7

    .line 388
    move-object/from16 v0, p1

    array-length v11, v0

    sub-int/2addr v11, v3

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 389
    .local v2, "bytesToWrite":I
    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 390
    add-int/2addr v3, v2

    goto :goto_3

    .line 354
    .end local v2    # "bytesToWrite":I
    .end local v6    # "maxChunkSize":I
    :cond_1
    const-string v11, "BluetoothMnsObexClient"

    const-string v12, "sendEvent: no connection ID"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    .line 406
    :catch_0
    move-exception v4

    .line 407
    .local v4, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->handleSendException(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 408
    const/4 v5, 0x1

    .line 413
    const-string v11, "BluetoothMnsObexClient"

    const-string v12, "finally"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    if-nez v5, :cond_2

    .line 416
    :try_start_8
    const-string v11, "BluetoothMnsObexClient"

    const-string v12, "Getting response Code"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {v8}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v10

    .line 418
    const-string v11, "BluetoothMnsObexClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "response code is"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 420
    const-string v11, "BluetoothMnsObexClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Put response code "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/16 v11, 0xa0

    if-eq v10, v11, :cond_2

    .line 422
    const-string v11, "BluetoothMnsObexClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Response error code is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_2
    if-eqz v8, :cond_3

    .line 427
    const-string v11, "BluetoothMnsObexClient"

    const-string v12, "Closing putOperation"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v8}, Ljavax/obex/ClientOperation;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 434
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    const-string v11, "BluetoothMnsObexClient"

    const-string v12, "BluetoothMnsObexClient: Exiting sendEvent"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->releaseMnsLock()V

    .line 436
    return v10

    .line 359
    :catchall_0
    move-exception v11

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v11
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 409
    :catch_1
    move-exception v4

    .line 410
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_b
    invoke-virtual {v4}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->handleSendException(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 411
    const/4 v5, 0x1

    .line 413
    const-string v11, "BluetoothMnsObexClient"

    const-string v12, "finally"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    if-nez v5, :cond_4

    .line 416
    :try_start_c
    const-string v11, "BluetoothMnsObexClient"

    const-string v12, "Getting response Code"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {v8}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v10

    .line 418
    const-string v11, "BluetoothMnsObexClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "response code is"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    .line 420
    const-string v11, "BluetoothMnsObexClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Put response code "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/16 v11, 0xa0

    if-eq v10, v11, :cond_4

    .line 422
    const-string v11, "BluetoothMnsObexClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Response error code is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_4
    if-eqz v8, :cond_3

    .line 427
    const-string v11, "BluetoothMnsObexClient"

    const-string v12, "Closing putOperation"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v8}, Ljavax/obex/ClientOperation;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_4

    .line 430
    :catch_2
    move-exception v4

    .line 431
    .local v4, "e":Ljava/io/IOException;
    const-string v11, "BluetoothMnsObexClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error when closing stream after send "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_5
    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 366
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 367
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_d
    const-string v11, "BluetoothMnsObexClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error when put HeaderSet "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 368
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 372
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v11

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw v11
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 413
    :catchall_2
    move-exception v11

    const-string v12, "BluetoothMnsObexClient"

    const-string v13, "finally"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    if-nez v5, :cond_5

    .line 416
    :try_start_10
    const-string v12, "BluetoothMnsObexClient"

    const-string v13, "Getting response Code"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {v8}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v10

    .line 418
    const-string v12, "BluetoothMnsObexClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "response code is"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v12, -0x1

    if-eq v10, v12, :cond_5

    .line 420
    const-string v12, "BluetoothMnsObexClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Put response code "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/16 v12, 0xa0

    if-eq v10, v12, :cond_5

    .line 422
    const-string v12, "BluetoothMnsObexClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Response error code is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_5
    if-eqz v8, :cond_6

    .line 427
    const-string v12, "BluetoothMnsObexClient"

    const-string v13, "Closing putOperation"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v8}, Ljavax/obex/ClientOperation;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    .line 413
    :cond_6
    :goto_6
    throw v11

    .line 377
    :catch_4
    move-exception v4

    .line 378
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_11
    const-string v11, "BluetoothMnsObexClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error when opening OutputStream "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 393
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "maxChunkSize":I
    :cond_7
    move-object/from16 v0, p1

    array-length v11, v0

    if-ne v3, v11, :cond_a

    .line 394
    const-string v11, "BluetoothMnsObexClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SendEvent finished send length"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    array-length v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    if-eqz v7, :cond_8

    .line 396
    const-string v11, "BluetoothMnsObexClient"

    const-string v12, "Closing outputStream"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 413
    .end local v6    # "maxChunkSize":I
    :cond_8
    :goto_7
    const-string v11, "BluetoothMnsObexClient"

    const-string v12, "finally"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    if-nez v5, :cond_9

    .line 416
    :try_start_12
    const-string v11, "BluetoothMnsObexClient"

    const-string v12, "Getting response Code"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {v8}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v10

    .line 418
    const-string v11, "BluetoothMnsObexClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "response code is"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v11, -0x1

    if-eq v10, v11, :cond_9

    .line 420
    const-string v11, "BluetoothMnsObexClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Put response code "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/16 v11, 0xa0

    if-eq v10, v11, :cond_9

    .line 422
    const-string v11, "BluetoothMnsObexClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Response error code is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_9
    if-eqz v8, :cond_3

    .line 427
    const-string v11, "BluetoothMnsObexClient"

    const-string v12, "Closing putOperation"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v8}, Ljavax/obex/ClientOperation;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_4

    .line 430
    :catch_5
    move-exception v4

    .line 431
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v11, "BluetoothMnsObexClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error when closing stream after send "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5

    .line 400
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "maxChunkSize":I
    :cond_a
    const/4 v5, 0x1

    .line 401
    :try_start_13
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 402
    invoke-virtual {v8}, Ljavax/obex/ClientOperation;->abort()V

    .line 403
    const-string v11, "BluetoothMnsObexClient"

    const-string v12, "SendEvent interrupted"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto/16 :goto_7

    .line 430
    .end local v6    # "maxChunkSize":I
    :catch_6
    move-exception v4

    .line 431
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v12, "BluetoothMnsObexClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error when closing stream after send "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 430
    :catch_7
    move-exception v4

    .line 431
    const-string v11, "BluetoothMnsObexClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error when closing stream after send "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5
.end method

.method public declared-synchronized shutdown()V
    .locals 3

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothMnsObexClient"

    const-string v2, "BluetoothMnsObexClient: shutdown"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->acquireMnsLock()V

    .line 168
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 171
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 172
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 175
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    .line 179
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->disconnect()V

    .line 181
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserverRegistered:Z

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unregisterObserver()V

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserverRegistered:Z

    .line 185
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v1, :cond_3

    .line 186
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deinit()V

    .line 187
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mEmailObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 189
    :cond_3
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserverRegistered:Z

    if-eqz v1, :cond_4

    .line 190
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unregisterObserver()V

    .line 191
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserverRegistered:Z

    .line 193
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v1, :cond_5

    .line 194
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deinit()V

    .line 195
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 197
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_7

    .line 199
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 200
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 201
    .restart local v0    # "looper":Landroid/os/Looper;
    if-eqz v0, :cond_6

    .line 202
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 204
    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    .line 206
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_7
    const-string v1, "BluetoothMnsObexClient"

    const-string v2, "BluetoothMnsObexClient: exiting from shutdown"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->releaseMnsLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
