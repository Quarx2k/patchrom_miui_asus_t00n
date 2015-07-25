.class public Lcom/android/bluetooth/ble/PeripheralConnectionManager;
.super Ljava/lang/Object;
.source "PeripheralConnectionManager.java"

# interfaces
.implements Lcom/android/bluetooth/ble/GattPeripheral$OnConnectionListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field static final RECONNECT_ACTION:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final TRY_CONNECT_TIME:J = 0x9c40L

.field private static final TRY_DISCOVER_SERVICES_TIME:J = 0x7530L

.field private static final WAKEUP_INTERVAL:J = 0x927c0L


# instance fields
.field private mCancelConnectRunnable:Ljava/lang/Runnable;

.field private mCancelDiscoveryRunnable:Ljava/lang/Runnable;

.field private mConnectTask:Ljava/lang/Runnable;

.field private final mConnectingLock:Ljava/lang/Object;

.field private volatile mConnectingPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

.field private mContext:Landroid/content/Context;

.field private mGattPeripherals:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/ble/GattPeripheral;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mPeddingPeripherals:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/android/bluetooth/ble/GattPeripheral;",
            ">;"
        }
    .end annotation
.end field

.field private mRunning:Z

.field private volatile mScreenOn:Z

.field private mScreenOnOffListner:Landroid/content/BroadcastReceiver;

.field private mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".RECONNECTION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->RECONNECT_ACTION:Ljava/lang/String;

    .line 34
    const-class v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mGattPeripherals:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingLock:Ljava/lang/Object;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    .line 46
    iput-boolean v1, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mRunning:Z

    .line 47
    iput-boolean v1, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mScreenOn:Z

    .line 52
    sget-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->IDLE:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    iput-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    .line 64
    new-instance v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager$1;-><init>(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mCancelConnectRunnable:Ljava/lang/Runnable;

    .line 76
    new-instance v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager$2;-><init>(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mCancelDiscoveryRunnable:Ljava/lang/Runnable;

    .line 114
    new-instance v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager$4;-><init>(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectTask:Ljava/lang/Runnable;

    .line 182
    new-instance v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$5;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager$5;-><init>(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mScreenOnOffListner:Landroid/content/BroadcastReceiver;

    .line 88
    iput-object p1, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0x14

    new-instance v2, Lcom/android/bluetooth/ble/PeripheralConnectionManager$3;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager$3;-><init>(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)V

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mPeddingPeripherals:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->cancelNextWakeUpToRetryConnect()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/bluetooth/ble/PeripheralConnectionManager;Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;)Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/PeripheralConnectionManager;
    .param p1, "x1"    # Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mCancelDiscoveryRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mCancelConnectRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Lcom/android/bluetooth/ble/GattPeripheral;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/ble/PeripheralConnectionManager;Lcom/android/bluetooth/ble/GattPeripheral;)Lcom/android/bluetooth/ble/GattPeripheral;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/PeripheralConnectionManager;
    .param p1, "x1"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mRunning:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/ble/PeripheralConnectionManager;)Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/PeripheralConnectionManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mPeddingPeripherals:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/ble/PeripheralConnectionManager;Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/PeripheralConnectionManager;
    .param p1, "x1"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->connectDevice(Lcom/android/bluetooth/ble/GattPeripheral;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/ble/PeripheralConnectionManager;Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/PeripheralConnectionManager;
    .param p1, "x1"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->discoverServices(Lcom/android/bluetooth/ble/GattPeripheral;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/bluetooth/ble/PeripheralConnectionManager;Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/PeripheralConnectionManager;
    .param p1, "x1"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->disconnectDevice(Lcom/android/bluetooth/ble/GattPeripheral;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/bluetooth/ble/PeripheralConnectionManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/PeripheralConnectionManager;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mScreenOn:Z

    return p1
.end method

.method private cancelNextWakeUpToRetryConnect()V
    .locals 4

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->getWakeUpPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 423
    .local v1, "pi":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 424
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 425
    return-void
.end method

.method private connectDevice(Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 2
    .param p1, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    .line 236
    new-instance v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$7;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/ble/PeripheralConnectionManager$7;-><init>(Lcom/android/bluetooth/ble/PeripheralConnectionManager;Lcom/android/bluetooth/ble/GattPeripheral;)V

    .line 252
    .local v0, "task":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    return-void
.end method

.method private connectFinish(Lcom/android/bluetooth/ble/GattPeripheral;Z)V
    .locals 4
    .param p1, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;
    .param p2, "succeed"    # Z

    .prologue
    .line 366
    iget-object v1, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    if-ne p1, v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mCancelConnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 369
    sget-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current connect finish: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    if-eqz p2, :cond_1

    sget-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->CONNECTED:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    :goto_0
    iput-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    .line 371
    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 378
    :cond_0
    :goto_1
    monitor-exit v1

    .line 379
    return-void

    .line 370
    :cond_1
    sget-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->CONNECTFAILED:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    goto :goto_0

    .line 374
    :cond_2
    if-nez p2, :cond_0

    .line 375
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->requireConnect(Lcom/android/bluetooth/ble/GattPeripheral;)V

    goto :goto_1

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private disconnectDevice(Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 2
    .param p1, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    .line 256
    new-instance v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$8;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/ble/PeripheralConnectionManager$8;-><init>(Lcom/android/bluetooth/ble/PeripheralConnectionManager;Lcom/android/bluetooth/ble/GattPeripheral;)V

    .line 265
    .local v0, "task":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    return-void
.end method

.method private discoverServices(Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 2
    .param p1, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    .line 218
    new-instance v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$6;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/ble/PeripheralConnectionManager$6;-><init>(Lcom/android/bluetooth/ble/PeripheralConnectionManager;Lcom/android/bluetooth/ble/GattPeripheral;)V

    .line 232
    .local v0, "task":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void
.end method

.method private scheduleNextWakeUpToRetryConnect()V
    .locals 7

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->getWakeUpPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 430
    .local v1, "pi":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 431
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 433
    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x927c0

    add-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 434
    return-void
.end method


# virtual methods
.method public getConnectedDevices()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    iget-object v5, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mGattPeripherals:Ljava/util/HashMap;

    monitor-enter v5

    .line 353
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v1, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v4, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mGattPeripherals:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/ble/GattPeripheral;

    .line 355
    .local v3, "per":Lcom/android/bluetooth/ble/GattPeripheral;
    invoke-virtual {v3}, Lcom/android/bluetooth/ble/GattPeripheral;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 356
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Lcom/android/bluetooth/ble/GattPeripheral;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 357
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 361
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "per":Lcom/android/bluetooth/ble/GattPeripheral;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 360
    .restart local v1    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public getGattPeripheral(Ljava/lang/String;)Lcom/android/bluetooth/ble/GattPeripheral;
    .locals 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mGattPeripherals:Ljava/util/HashMap;

    monitor-enter v2

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mGattPeripherals:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/ble/GattPeripheral;

    .line 336
    .local v0, "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lcom/android/bluetooth/ble/GattPeripheral;

    .end local v0    # "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    iget-object v1, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/bluetooth/ble/GattPeripheral;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    .restart local v0    # "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    invoke-virtual {v0, p0}, Lcom/android/bluetooth/ble/GattPeripheral;->setConnectionListener(Lcom/android/bluetooth/ble/GattPeripheral$OnConnectionListener;)V

    .line 339
    iget-object v1, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mGattPeripherals:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_0
    monitor-exit v2

    return-object v0

    .line 342
    .end local v0    # "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getWakeUpPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 416
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/bluetooth/ble/BluetoothMiBleService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 417
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->RECONNECT_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    iget-object v1, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public onConnectFailed(Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 3
    .param p1, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    .line 395
    sget-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectFailed() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/ble/GattPeripheral;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->connectFinish(Lcom/android/bluetooth/ble/GattPeripheral;Z)V

    .line 397
    return-void
.end method

.method public onConnected(Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 3
    .param p1, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    .line 383
    sget-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/ble/GattPeripheral;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->connectFinish(Lcom/android/bluetooth/ble/GattPeripheral;Z)V

    .line 385
    return-void
.end method

.method public onDisconnected(Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 3
    .param p1, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    .line 389
    sget-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnected() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/ble/GattPeripheral;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->connectFinish(Lcom/android/bluetooth/ble/GattPeripheral;Z)V

    .line 391
    return-void
.end method

.method public onServiceDiscovered(Lcom/android/bluetooth/ble/GattPeripheral;Z)V
    .locals 4
    .param p1, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;
    .param p2, "succeed"    # Z

    .prologue
    .line 401
    sget-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDiscovered() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/ble/GattPeripheral;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " succeed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v1, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    if-ne p1, v0, :cond_0

    .line 405
    sget-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current connect finish: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    sget-object v2, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->DISCOVERING:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    if-ne v0, v2, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mCancelDiscoveryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 408
    if-eqz p2, :cond_1

    sget-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->READY:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    :goto_0
    iput-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    .line 409
    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 412
    :cond_0
    monitor-exit v1

    .line 413
    return-void

    .line 408
    :cond_1
    sget-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->DISCOVERFAILED:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method reconnectAllIfNecessary(Z)V
    .locals 4
    .param p1, "reset"    # Z

    .prologue
    .line 288
    sget-object v2, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;

    const-string v3, "reconnectAllIfNecessary()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-boolean v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mRunning:Z

    if-nez v2, :cond_0

    .line 291
    sget-object v2, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;

    const-string v3, "Manager not running yet!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mPeddingPeripherals:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    .line 296
    iget-object v3, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mGattPeripherals:Ljava/util/HashMap;

    monitor-enter v3

    .line 297
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mGattPeripherals:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/ble/GattPeripheral;

    .line 298
    .local v1, "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    if-eqz p1, :cond_2

    .line 299
    invoke-virtual {v1}, Lcom/android/bluetooth/ble/GattPeripheral;->resetRetryTimes()V

    .line 301
    :cond_2
    invoke-virtual {v1}, Lcom/android/bluetooth/ble/GattPeripheral;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mPeddingPeripherals:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mPeddingPeripherals:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_1

    .line 306
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeGattPeripheral(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 346
    iget-object v1, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mGattPeripherals:Ljava/util/HashMap;

    monitor-enter v1

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mGattPeripherals:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    monitor-exit v1

    .line 349
    return-void

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requireConnect(Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 3
    .param p1, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mPeddingPeripherals:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mScreenOn:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/bluetooth/ble/GattPeripheral;->needRetryConnecting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mPeddingPeripherals:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->put(Ljava/lang/Object;)V

    .line 207
    sget-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requireConnect() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/ble/GattPeripheral;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mPeddingPeripherals:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    invoke-direct {p0}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->scheduleNextWakeUpToRetryConnect()V

    .line 212
    :cond_3
    sget-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "try connect enough times, don\'t try any more"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 270
    iget-boolean v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mRunning:Z

    if-nez v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 272
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mScreenOn:Z

    .line 274
    iput-boolean v4, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mRunning:Z

    .line 275
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectTask:Ljava/lang/Runnable;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 277
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 278
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mScreenOnOffListner:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 283
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->reconnectAllIfNecessary(Z)V

    .line 285
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 311
    iget-boolean v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mRunning:Z

    if-eqz v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mScreenOnOffListner:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 315
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mRunning:Z

    .line 316
    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mPeddingPeripherals:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    .line 317
    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 319
    iget-object v3, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingLock:Ljava/lang/Object;

    monitor-enter v3

    .line 320
    :try_start_0
    sget-object v2, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->IDLE:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    iput-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mState:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    .line 321
    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mConnectingLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 322
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mGattPeripherals:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/ble/GattPeripheral;

    .line 325
    .local v1, "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    invoke-virtual {v1}, Lcom/android/bluetooth/ble/GattPeripheral;->close()V

    goto :goto_0

    .line 322
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 328
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/ble/PeripheralConnectionManager;->mGattPeripherals:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 329
    return-void
.end method
