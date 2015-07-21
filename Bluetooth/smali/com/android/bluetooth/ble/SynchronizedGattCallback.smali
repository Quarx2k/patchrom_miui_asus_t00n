.class abstract Lcom/android/bluetooth/ble/SynchronizedGattCallback;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "SynchronizedGattCallback.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String;

.field private static final ERROR_GATT_INVALID:I = 0xff01

.field private static final ERROR_GATT_NOT_CONNECTED:I = 0xff04

.field private static final ERROR_GATT_OPERATION_FAILED:I = 0xff02

.field private static final ERROR_GATT_OPERATION_TIMEOUT:I = 0xff03

.field protected static final ERROR_GATT_SUCCESS:I = 0x0

.field private static final ERROR_POST:I = 0xff05

.field private static final ERROR_UNKNOWN:I = 0xff00

.field private static final GATT_OPERATION_TIMEOUT:J = 0x7530L

.field private static final GATT_QUEUE_THREAD_NAME:Ljava/lang/String;

.field private static final INVALID_RSSI:I = 0x7fffffff


# instance fields
.field private final m_GattOperationLock:Ljava/lang/Object;

.field private m_GattOperationStatus:I

.field private m_GattQueue:Landroid/os/Handler;

.field private m_GattQueueThread:Landroid/os/HandlerThread;

.field private m_RSSI:I

.field private final m_RSSILock:Ljava/lang/Object;

.field private m_ReadRSSIStatus:I

.field private m_isGattOperationLocking:Z

.field private m_isRSSILocking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->CLASS_NAME:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->CLASS_NAME:Ljava/lang/String;

    sput-object v0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->GATT_QUEUE_THREAD_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const v2, 0xff00

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationLock:Ljava/lang/Object;

    .line 28
    iput-boolean v1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isGattOperationLocking:Z

    .line 29
    iput v2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationStatus:I

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_RSSILock:Ljava/lang/Object;

    .line 31
    iput-boolean v1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isRSSILocking:Z

    .line 32
    iput v2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_ReadRSSIStatus:I

    .line 33
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_RSSI:I

    .line 36
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->prepare()V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/ble/SynchronizedGattCallback;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/SynchronizedGattCallback;
    .param p1, "x1"    # I

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->notifyGattOperation(I)V

    return-void
.end method

.method private notifyGattOperation(I)V
    .locals 2
    .param p1, "ret"    # I

    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    iput p1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationStatus:I

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isGattOperationLocking:Z

    .line 243
    iget-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 244
    monitor-exit v1

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private waitGattOperation(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)I
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 248
    iget-object v3, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationLock:Ljava/lang/Object;

    monitor-enter v3

    .line 249
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isGattOperationLocking:Z

    .line 250
    iget-object v2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattQueue:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 251
    .local v1, "ret":Z
    if-nez v1, :cond_0

    .line 252
    const v2, 0xff05

    monitor-exit v3

    .line 269
    :goto_0
    return v2

    .line 253
    :cond_0
    iget-boolean v2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isGattOperationLocking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 254
    if-eqz p1, :cond_1

    .line 256
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationLock:Ljava/lang/Object;

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    :goto_1
    :try_start_2
    iget-boolean v2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isGattOperationLocking:Z

    if-eqz v2, :cond_0

    .line 261
    const v2, 0xff03

    iput v2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationStatus:I

    .line 268
    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    iget v2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationStatus:I

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 268
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "ret":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method


# virtual methods
.method protected cleanup()V
    .locals 2

    .prologue
    .line 59
    iget-object v1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isGattOperationLocking:Z

    .line 61
    const v0, 0xff00

    iput v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationStatus:I

    .line 62
    iget-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattOperationLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 63
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object v1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_RSSILock:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isRSSILocking:Z

    .line 66
    const v0, 0xff00

    iput v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_ReadRSSIStatus:I

    .line 67
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_RSSI:I

    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_RSSILock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 69
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    return-void

    .line 63
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 69
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method protected close()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattQueueThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 74
    return-void
.end method

.method protected isConnected()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public final onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 221
    invoke-direct {p0, p3}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->notifyGattOperation(I)V

    .line 222
    return-void
.end method

.method public final onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 226
    invoke-direct {p0, p3}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->notifyGattOperation(I)V

    .line 227
    return-void
.end method

.method public final onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 231
    invoke-direct {p0, p3}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->notifyGattOperation(I)V

    .line 232
    return-void
.end method

.method public final onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 236
    invoke-direct {p0, p3}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->notifyGattOperation(I)V

    .line 237
    return-void
.end method

.method public final onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_RSSILock:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    :try_start_0
    iput p2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_RSSI:I

    .line 213
    iput p3, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_ReadRSSIStatus:I

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isRSSILocking:Z

    .line 215
    iget-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_RSSILock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 216
    monitor-exit v1

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected prepare()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattQueueThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattQueueThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 45
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->GATT_QUEUE_THREAD_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattQueueThread:Landroid/os/HandlerThread;

    .line 46
    iget-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattQueueThread:Landroid/os/HandlerThread;

    new-instance v1, Lcom/android/bluetooth/ble/SynchronizedGattCallback$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/ble/SynchronizedGattCallback$1;-><init>(Lcom/android/bluetooth/ble/SynchronizedGattCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 54
    iget-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattQueueThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattQueueThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_GattQueue:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method final declared-synchronized synchronizedReadCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)I
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/bluetooth/ble/SynchronizedGattCallback$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/bluetooth/ble/SynchronizedGattCallback$2;-><init>(Lcom/android/bluetooth/ble/SynchronizedGattCallback;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 131
    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->waitGattOperation(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 111
    .end local v0    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method final declared-synchronized synchronizedReadDescriptor(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;)I
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/bluetooth/ble/SynchronizedGattCallback$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/bluetooth/ble/SynchronizedGattCallback$4;-><init>(Lcom/android/bluetooth/ble/SynchronizedGattCallback;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;)V

    .line 180
    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->waitGattOperation(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 162
    .end local v0    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method final synchronizedReadRemoteRSSI(Landroid/bluetooth/BluetoothGatt;)I
    .locals 7
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    const v2, 0x7fffffff

    .line 81
    if-nez p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v2

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_RSSILock:Ljava/lang/Object;

    monitor-enter v3

    .line 87
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isRSSILocking:Z

    .line 88
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    move-result v1

    .line 89
    .local v1, "ret":Z
    if-nez v1, :cond_2

    .line 90
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isRSSILocking:Z

    .line 91
    monitor-exit v3

    goto :goto_0

    .line 106
    .end local v1    # "ret":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 93
    .restart local v1    # "ret":Z
    :cond_2
    :try_start_1
    iget-boolean v4, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isRSSILocking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_3

    .line 95
    :try_start_2
    iget-object v4, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_RSSILock:Ljava/lang/Object;

    const-wide/16 v5, 0x7530

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :goto_1
    :try_start_3
    iget-boolean v4, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_isRSSILocking:Z

    if-eqz v4, :cond_2

    .line 103
    :cond_3
    iget v4, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_ReadRSSIStatus:I

    if-eqz v4, :cond_4

    .line 104
    monitor-exit v3

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 105
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    iget v2, p0, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->m_RSSI:I

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method final declared-synchronized synchronizedWriteCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)I
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "value"    # [B

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/bluetooth/ble/SynchronizedGattCallback$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/bluetooth/ble/SynchronizedGattCallback$3;-><init>(Lcom/android/bluetooth/ble/SynchronizedGattCallback;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 157
    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->waitGattOperation(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 136
    .end local v0    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method final declared-synchronized synchronizedWriteDescriptor(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;[B)I
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "value"    # [B

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/bluetooth/ble/SynchronizedGattCallback$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/bluetooth/ble/SynchronizedGattCallback$5;-><init>(Lcom/android/bluetooth/ble/SynchronizedGattCallback;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;[B)V

    .line 206
    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->waitGattOperation(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 185
    .end local v0    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
