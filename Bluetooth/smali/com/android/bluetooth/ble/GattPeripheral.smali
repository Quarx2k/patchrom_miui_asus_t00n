.class public Lcom/android/bluetooth/ble/GattPeripheral;
.super Lcom/android/bluetooth/ble/SynchronizedGattCallback;
.source "GattPeripheral.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/ble/GattPeripheral$OnConnectionListener;,
        Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;,
        Lcom/android/bluetooth/ble/GattPeripheral$STATE;
    }
.end annotation


# static fields
.field private static final CONNECT_RETRY_TIMES:I = 0x3

.field private static final DBG:Z = true

.field private static final ERROR_CLIENT_IF_UNKNOWN:I = -0x1

.field public static final FEATURE_FORCE_REFRESH:I = 0x1

.field public static final FEATURE_LOCK_SERVICE_DISCOVERY:I = 0x2

.field private static final SERVICE_TTL:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "GattPeripheral"

.field private static final TRANSPORT_AUTO:I

.field private static final UUID_DESCRIPTOR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

.field private static __feature__forceRefresh:Z

.field private static __feature__lockServiceDiscovery:Z

.field private static m_BTA:Landroid/bluetooth/BluetoothAdapter;


# instance fields
.field private __android_bug_FileLock:Ljava/nio/channels/FileLock;

.field private __android_bug_FileOutputStream:Ljava/io/FileOutputStream;

.field private mAutoReconnect:Z

.field private mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/ParcelUuid;",
            "Lmiui/bluetooth/ble/IBluetoothMiBleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionListener:Lcom/android/bluetooth/ble/GattPeripheral$OnConnectionListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsPrepared:Z

.field private mLastDiscoveredTimestamp:J

.field private mNotifyStateTask:Ljava/lang/Runnable;

.field private mProperties:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/bluetooth/ble/property/BleProperty;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryConnectTimes:I

.field private final m_Address:Ljava/lang/String;

.field private final m_ConnCBs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_Context:Landroid/content/Context;

.field private m_Device:Landroid/bluetooth/BluetoothDevice;

.field private m_Gatt:Landroid/bluetooth/BluetoothGatt;

.field private final m_NotifyCBs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

.field private final m_StateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/GattPeripheral;->UUID_DESCRIPTOR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    .line 52
    sput-boolean v1, Lcom/android/bluetooth/ble/GattPeripheral;->__feature__forceRefresh:Z

    .line 53
    sput-boolean v1, Lcom/android/bluetooth/ble/GattPeripheral;->__feature__lockServiceDiscovery:Z

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/ble/GattPeripheral;->m_BTA:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;-><init>()V

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_ConnCBs:Ljava/util/List;

    .line 61
    iput-object v2, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_NotifyCBs:Ljava/util/Map;

    .line 63
    sget-object v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->DISCONNECTED:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    iput-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mClients:Ljava/util/HashMap;

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mProperties:Landroid/util/SparseArray;

    .line 69
    iput-object v2, p0, Lcom/android/bluetooth/ble/GattPeripheral;->__android_bug_FileLock:Ljava/nio/channels/FileLock;

    .line 70
    iput-object v2, p0, Lcom/android/bluetooth/ble/GattPeripheral;->__android_bug_FileOutputStream:Ljava/io/FileOutputStream;

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mLastDiscoveredTimestamp:J

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mAutoReconnect:Z

    .line 81
    iput v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mRetryConnectTimes:I

    .line 82
    iput-boolean v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mIsPrepared:Z

    .line 442
    iput-object v2, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mNotifyStateTask:Ljava/lang/Runnable;

    .line 91
    iput-object p1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Context:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Address:Ljava/lang/String;

    .line 93
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/GattPeripheral;->m_BTA:Landroid/bluetooth/BluetoothAdapter;

    .line 97
    return-void
.end method

.method private GattCB_onConnected()V
    .locals 2

    .prologue
    .line 502
    const-string v0, "GattPeripheral"

    const-string v1, "GattCB_onConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 506
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->CONNECTED:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    iput-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    .line 507
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/ble/GattPeripheral;->notifyConnectionState(I)V

    .line 511
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mConnectionListener:Lcom/android/bluetooth/ble/GattPeripheral$OnConnectionListener;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mConnectionListener:Lcom/android/bluetooth/ble/GattPeripheral$OnConnectionListener;

    invoke-interface {v0, p0}, Lcom/android/bluetooth/ble/GattPeripheral$OnConnectionListener;->onConnected(Lcom/android/bluetooth/ble/GattPeripheral;)V

    .line 515
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mRetryConnectTimes:I

    .line 516
    return-void

    .line 507
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private GattCB_onConnectionFailed()V
    .locals 2

    .prologue
    .line 519
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 520
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->DISCONNECTED:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    iput-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    .line 521
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/ble/GattPeripheral;->notifyConnectionState(I)V

    .line 528
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mConnectionListener:Lcom/android/bluetooth/ble/GattPeripheral$OnConnectionListener;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mConnectionListener:Lcom/android/bluetooth/ble/GattPeripheral$OnConnectionListener;

    invoke-interface {v0, p0}, Lcom/android/bluetooth/ble/GattPeripheral$OnConnectionListener;->onConnectFailed(Lcom/android/bluetooth/ble/GattPeripheral;)V

    .line 532
    :cond_0
    return-void

    .line 521
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private GattCB_onDisconnected()V
    .locals 2

    .prologue
    .line 535
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 536
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->DISCONNECTED:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    iput-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    .line 537
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/ble/GattPeripheral;->notifyConnectionState(I)V

    .line 542
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mConnectionListener:Lcom/android/bluetooth/ble/GattPeripheral$OnConnectionListener;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mConnectionListener:Lcom/android/bluetooth/ble/GattPeripheral$OnConnectionListener;

    invoke-interface {v0, p0}, Lcom/android/bluetooth/ble/GattPeripheral$OnConnectionListener;->onDisconnected(Lcom/android/bluetooth/ble/GattPeripheral;)V

    .line 545
    :cond_0
    return-void

    .line 537
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private GattCB_onServiceDiscovered(Z)V
    .locals 2
    .param p1, "succeed"    # Z

    .prologue
    .line 549
    if-eqz p1, :cond_0

    .line 550
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 551
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->READY:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    iput-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    .line 552
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/ble/GattPeripheral;->notifyConnectionState(I)V

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mConnectionListener:Lcom/android/bluetooth/ble/GattPeripheral$OnConnectionListener;

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mConnectionListener:Lcom/android/bluetooth/ble/GattPeripheral$OnConnectionListener;

    invoke-interface {v0, p0, p1}, Lcom/android/bluetooth/ble/GattPeripheral$OnConnectionListener;->onServiceDiscovered(Lcom/android/bluetooth/ble/GattPeripheral;Z)V

    .line 559
    :cond_1
    return-void

    .line 552
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static __clientConnect(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 13
    .param p0, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 893
    :try_start_0
    const-class v9, Landroid/bluetooth/BluetoothGatt;

    const-string v10, "mService"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 894
    .local v4, "m_field_BluetoothGatt_mService":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 895
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 896
    .local v5, "service":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 898
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/android/bluetooth/ble/GattPeripheral;->__getClientIf(Landroid/bluetooth/BluetoothGatt;)I

    move-result v2

    .line 899
    .local v2, "clientIf":I
    if-gtz v2, :cond_0

    .line 914
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "clientIf":I
    .end local v4    # "m_field_BluetoothGatt_mService":Ljava/lang/reflect/Field;
    .end local v5    # "service":Ljava/lang/Object;
    :goto_0
    return v7

    .line 901
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "clientIf":I
    .restart local v4    # "m_field_BluetoothGatt_mService":Ljava/lang/reflect/Field;
    .restart local v5    # "service":Ljava/lang/Object;
    :cond_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_1

    .line 902
    const-string v9, "clientConnect"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 904
    .local v1, "clientConnect":Ljava/lang/reflect/Method;
    invoke-static {p0}, Lcom/android/bluetooth/ble/GattPeripheral;->__getTransport(Landroid/bluetooth/BluetoothGatt;)I

    move-result v6

    .line 905
    .local v6, "transport":I
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v1, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .end local v6    # "transport":I
    :goto_1
    move v7, v8

    .line 911
    goto :goto_0

    .line 907
    .end local v1    # "clientConnect":Ljava/lang/reflect/Method;
    :cond_1
    const-string v9, "clientConnect"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 909
    .restart local v1    # "clientConnect":Ljava/lang/reflect/Method;
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v1, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 912
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "clientConnect":Ljava/lang/reflect/Method;
    .end local v2    # "clientIf":I
    .end local v4    # "m_field_BluetoothGatt_mService":Ljava/lang/reflect/Field;
    .end local v5    # "service":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 913
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private static __forceRefresh(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 7
    .param p0, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 919
    sget-boolean v2, Lcom/android/bluetooth/ble/GattPeripheral;->__feature__forceRefresh:Z

    if-nez v2, :cond_0

    move v2, v3

    .line 930
    :goto_0
    return v2

    .line 922
    :cond_0
    if-nez p0, :cond_1

    move v2, v4

    .line 923
    goto :goto_0

    .line 925
    :cond_1
    :try_start_0
    const-class v5, Landroid/bluetooth/BluetoothGatt;

    const-string v6, "refresh"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 926
    .local v1, "refresh":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 927
    goto :goto_0

    .line 928
    .end local v1    # "refresh":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 929
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v4

    .line 930
    goto :goto_0
.end method

.method private static __getClientIf(Landroid/bluetooth/BluetoothGatt;)I
    .locals 5
    .param p0, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    const/4 v0, -0x1

    .line 949
    if-nez p0, :cond_0

    .line 959
    :goto_0
    return v0

    .line 952
    :cond_0
    :try_start_0
    const-class v3, Landroid/bluetooth/BluetoothGatt;

    const-string v4, "mClientIf"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 953
    .local v2, "m_field_BluetoothGatt_mClientIf":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 954
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 955
    .local v0, "clientIf":I
    goto :goto_0

    .line 956
    .end local v0    # "clientIf":I
    .end local v2    # "m_field_BluetoothGatt_mClientIf":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 957
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static __getTransport(Landroid/bluetooth/BluetoothGatt;)I
    .locals 5
    .param p0, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    const/4 v2, 0x0

    .line 935
    if-nez p0, :cond_0

    .line 945
    :goto_0
    return v2

    .line 938
    :cond_0
    :try_start_0
    const-class v3, Landroid/bluetooth/BluetoothGatt;

    const-string v4, "mTransport"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 939
    .local v1, "m_field_BluetoothGatt_mTransport":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 940
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 941
    .local v2, "transport":I
    goto :goto_0

    .line 942
    .end local v1    # "m_field_BluetoothGatt_mTransport":Ljava/lang/reflect/Field;
    .end local v2    # "transport":I
    :catch_0
    move-exception v0

    .line 943
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private __lockFile()V
    .locals 4

    .prologue
    .line 963
    sget-boolean v2, Lcom/android/bluetooth/ble/GattPeripheral;->__feature__lockServiceDiscovery:Z

    if-nez v2, :cond_0

    .line 976
    :goto_0
    return-void

    .line 967
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Android/.btlock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 968
    .local v0, "PATH":Ljava/lang/String;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/bluetooth/ble/GattPeripheral;->__android_bug_FileOutputStream:Ljava/io/FileOutputStream;

    .line 969
    iget-object v2, p0, Lcom/android/bluetooth/ble/GattPeripheral;->__android_bug_FileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/ble/GattPeripheral;->__android_bug_FileLock:Ljava/nio/channels/FileLock;

    .line 970
    iget-object v2, p0, Lcom/android/bluetooth/ble/GattPeripheral;->__android_bug_FileOutputStream:Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 971
    .end local v0    # "PATH":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 972
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 973
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 974
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private __releaseFile()V
    .locals 3

    .prologue
    .line 979
    sget-boolean v1, Lcom/android/bluetooth/ble/GattPeripheral;->__feature__lockServiceDiscovery:Z

    if-nez v1, :cond_1

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 982
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->__android_bug_FileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->__android_bug_FileLock:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_0

    .line 984
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->__android_bug_FileOutputStream:Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 985
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->__android_bug_FileLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 986
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->__android_bug_FileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 987
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->__android_bug_FileLock:Ljava/nio/channels/FileLock;

    .line 988
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->__android_bug_FileOutputStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 989
    :catch_0
    move-exception v0

    .line 990
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/bluetooth/ble/GattPeripheral;->GattCB_onConnectionFailed()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/bluetooth/ble/GattPeripheral;->GattCB_onConnected()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/ble/GattPeripheral;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/GattPeripheral;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/GattPeripheral;->GattCB_onServiceDiscovered(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/ble/GattPeripheral;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mClients:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/ble/GattPeripheral;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_ConnCBs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/ble/GattPeripheral;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public static final enableFeature(I)V
    .locals 3
    .param p0, "features"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    and-int/lit8 v0, p0, 0x1

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/bluetooth/ble/GattPeripheral;->__feature__forceRefresh:Z

    .line 86
    and-int/lit8 v0, p0, 0x2

    if-lez v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/bluetooth/ble/GattPeripheral;->__feature__lockServiceDiscovery:Z

    .line 87
    return-void

    :cond_0
    move v0, v2

    .line 85
    goto :goto_0

    :cond_1
    move v1, v2

    .line 86
    goto :goto_1
.end method

.method private enableNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 6
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 702
    const/4 v1, 0x0

    .line 705
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v4, :cond_1

    .line 706
    const/4 v1, 0x0

    .line 735
    :cond_0
    :goto_0
    return v1

    .line 710
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v4, p1, p2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v1

    .line 711
    if-eqz v1, :cond_0

    .line 715
    sget-object v4, Lcom/android/bluetooth/ble/GattPeripheral;->UUID_DESCRIPTOR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {p1, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 717
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v0, :cond_2

    .line 718
    const/4 v1, 0x0

    .line 719
    goto :goto_0

    .line 721
    :cond_2
    if-eqz p2, :cond_6

    .line 722
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-lez v4, :cond_4

    .line 723
    iget-object v4, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v5, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p0, v4, v0, v5}, Lcom/android/bluetooth/ble/GattPeripheral;->synchronizedWriteDescriptor(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;[B)I

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    .line 725
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    if-lez v4, :cond_0

    .line 726
    iget-object v4, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v5, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-virtual {p0, v4, v0, v5}, Lcom/android/bluetooth/ble/GattPeripheral;->synchronizedWriteDescriptor(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;[B)I

    move-result v4

    if-nez v4, :cond_5

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_2

    .line 729
    :cond_6
    iget-object v4, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v5, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p0, v4, v0, v5}, Lcom/android/bluetooth/ble/GattPeripheral;->synchronizedWriteDescriptor(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;[B)I

    move-result v4

    if-nez v4, :cond_7

    move v1, v2

    .line 733
    :goto_3
    goto :goto_0

    :cond_7
    move v1, v3

    .line 729
    goto :goto_3
.end method

.method private getCharacteristicUUIDKey(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;
    .locals 3
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 698
    new-instance v0, Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;-><init>(Ljava/util/UUID;Ljava/util/UUID;)V

    return-object v0
.end method

.method private getDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 2
    .param p1, "serviceUUID"    # Ljava/util/UUID;
    .param p2, "charactUUID"    # Ljava/util/UUID;
    .param p3, "descriptorUUID"    # Ljava/util/UUID;

    .prologue
    .line 582
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/ble/GattPeripheral;->getCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 583
    .local v0, "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_0

    .line 584
    const/4 v1, 0x0

    .line 586
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    goto :goto_0
.end method

.method private notifyConnectionState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 446
    const-string v0, "GattPeripheral"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyConnectionState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mNotifyStateTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mNotifyStateTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/ble/GattPeripheral;->removeTask(Ljava/lang/Runnable;)V

    .line 453
    :cond_0
    new-instance v0, Lcom/android/bluetooth/ble/GattPeripheral$7;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/ble/GattPeripheral$7;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;I)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mNotifyStateTask:Ljava/lang/Runnable;

    .line 485
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mNotifyStateTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/bluetooth/ble/GattPeripheral;->postDelayed(Ljava/lang/Runnable;J)V

    .line 486
    return-void
.end method

.method private restoreCharacteristicNotify()V
    .locals 6

    .prologue
    .line 810
    iget-object v4, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_NotifyCBs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;

    .line 811
    .local v2, "key":Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;
    iget-object v4, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v4, :cond_2

    .line 826
    .end local v2    # "key":Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;
    :cond_1
    return-void

    .line 815
    .restart local v2    # "key":Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v5, v2, Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;->service:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    .line 816
    .local v3, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v3, :cond_0

    .line 820
    iget-object v4, v2, Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;->characteristic:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 821
    .local v0, "charact":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v0, :cond_0

    .line 824
    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Lcom/android/bluetooth/ble/GattPeripheral;->enableNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    goto :goto_0
.end method


# virtual methods
.method cancelConnect()V
    .locals 2

    .prologue
    .line 339
    const-string v0, "GattPeripheral"

    const-string v1, "cancelConnect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->DISCONNECTED:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    iput-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    .line 342
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 344
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    .line 347
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/ble/GattPeripheral;->notifyConnectionState(I)V

    .line 351
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mConnectionListener:Lcom/android/bluetooth/ble/GattPeripheral$OnConnectionListener;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mConnectionListener:Lcom/android/bluetooth/ble/GattPeripheral$OnConnectionListener;

    invoke-interface {v0, p0}, Lcom/android/bluetooth/ble/GattPeripheral$OnConnectionListener;->onConnectFailed(Lcom/android/bluetooth/ble/GattPeripheral;)V

    .line 355
    :cond_1
    return-void

    .line 347
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected cleanup()V
    .locals 2

    .prologue
    .line 830
    invoke-super {p0}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->cleanup()V

    .line 831
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 832
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_ConnCBs:Ljava/util/List;

    monitor-enter v1

    .line 833
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_ConnCBs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 834
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mProperties:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 836
    return-void

    .line 834
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 841
    const-string v1, "GattPeripheral"

    const-string v2, "close()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-super {p0}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->close()V

    .line 844
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mHandler:Landroid/os/Handler;

    .line 845
    .local v0, "oldHandler":Landroid/os/Handler;
    sget-object v1, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->DISCONNECTED:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    invoke-virtual {v1}, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/ble/GattPeripheral;->notifyConnectionState(I)V

    .line 846
    iput-boolean v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mAutoReconnect:Z

    .line 847
    iget-object v2, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 848
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->DISCONNECTED:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    iput-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    .line 849
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_0

    .line 850
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 851
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 852
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    .line 854
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mIsPrepared:Z

    .line 855
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/GattPeripheral;->cleanup()V

    .line 859
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 860
    return-void

    .line 855
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public connect()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/ble/GattPeripheral;->connect(Z)Z

    move-result v0

    return v0
.end method

.method public connect(Z)Z
    .locals 7
    .param p1, "autoReconnect"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 229
    iget-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 230
    :try_start_0
    iget-boolean v4, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mIsPrepared:Z

    if-nez v4, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/GattPeripheral;->prepare()V

    .line 232
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mIsPrepared:Z

    .line 234
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    iget v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mRetryConnectTimes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mRetryConnectTimes:I

    .line 237
    iput-boolean p1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mAutoReconnect:Z

    .line 239
    const/4 v0, 0x0

    .line 242
    .local v0, "succeed":Z
    sget-object v3, Lcom/android/bluetooth/ble/GattPeripheral;->m_BTA:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    .line 243
    const-string v1, "GattPeripheral"

    const-string v2, "Bluetooth is off!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v1, Lcom/android/bluetooth/ble/GattPeripheral$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/ble/GattPeripheral$1;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;)V

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/ble/GattPeripheral;->post(Ljava/lang/Runnable;)V

    .line 320
    :goto_0
    return v0

    .line 234
    .end local v0    # "succeed":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 253
    .restart local v0    # "succeed":Z
    :cond_1
    sget-object v3, Lcom/android/bluetooth/ble/GattPeripheral;->m_BTA:Landroid/bluetooth/BluetoothAdapter;

    iget-object v4, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Device:Landroid/bluetooth/BluetoothDevice;

    .line 254
    iget-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Device:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_2

    .line 255
    const-string v1, "GattPeripheral"

    const-string v2, "BluetoothDevice is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v1, Lcom/android/bluetooth/ble/GattPeripheral$2;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/ble/GattPeripheral$2;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;)V

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/ble/GattPeripheral;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 265
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v3

    if-nez v3, :cond_3

    .line 266
    const-string v3, "GattPeripheral"

    const-string v4, "DEVICE TYPE: UNKNOWN (BLUETOOTH OFF?)"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_3
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/GattPeripheral;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 271
    const-string v1, "GattPeripheral"

    const-string v2, "Already connected, skip"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v0, 0x1

    .line 274
    new-instance v1, Lcom/android/bluetooth/ble/GattPeripheral$3;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/ble/GattPeripheral$3;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;)V

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/ble/GattPeripheral;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 283
    :cond_4
    iget-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 284
    :try_start_2
    iget-object v4, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    sget-object v5, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->DISCONNECTED:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    if-eq v4, v5, :cond_5

    .line 285
    const-string v4, "GattPeripheral"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CONNECTION ABORTED, REASON: ILLEGAL STATE ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_5
    sget-object v4, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->CONNECTING:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    iput-object v4, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    .line 290
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 292
    iget-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v3, :cond_8

    .line 293
    iget-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 294
    :try_start_3
    iget-object v4, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Device:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    .line 295
    iget-object v4, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v4, :cond_7

    move v0, v1

    .line 296
    :goto_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 297
    if-nez v0, :cond_6

    .line 299
    const-string v1, "GattPeripheral"

    const-string v2, "connectGatt() return error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Lcom/android/bluetooth/ble/GattPeripheral;->__forceRefresh(Landroid/bluetooth/BluetoothGatt;)Z

    goto/16 :goto_0

    .line 290
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_7
    move v0, v2

    .line 295
    goto :goto_1

    .line 296
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 303
    :cond_8
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1, v2}, Lcom/android/bluetooth/ble/GattPeripheral;->__clientConnect(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 304
    if-nez v0, :cond_6

    .line 306
    const-string v1, "GattPeripheral"

    const-string v2, "__clientConnect return false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v1, Lcom/android/bluetooth/ble/GattPeripheral$4;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/ble/GattPeripheral$4;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;)V

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/ble/GattPeripheral;->post(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 333
    :cond_0
    sget-object v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->DISCONNECTED:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    iput-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    .line 334
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/ble/GattPeripheral;->notifyConnectionState(I)V

    .line 336
    return-void

    .line 334
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method discoverServices()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 359
    const-string v4, "GattPeripheral"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "discoverServices()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/GattPeripheral;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mLastDiscoveredTimestamp:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    move v1, v2

    .line 364
    .local v1, "useCache":Z
    :goto_0
    const-string v4, "GattPeripheral"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "use cached services: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    if-eqz v1, :cond_2

    .line 368
    iget-object v2, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/bluetooth/ble/GattPeripheral$5;

    invoke-direct {v3, p0}, Lcom/android/bluetooth/ble/GattPeripheral$5;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    invoke-virtual {v2}, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->getValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/ble/GattPeripheral;->notifyConnectionState(I)V

    .line 393
    return-void

    .end local v1    # "useCache":Z
    :cond_1
    move v1, v3

    .line 362
    goto :goto_0

    .line 377
    .restart local v1    # "useCache":Z
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 378
    .local v0, "ret":Z
    :goto_2
    if-nez v0, :cond_0

    .line 380
    const-string v2, "GattPeripheral"

    const-string v3, "Gatt discoverServices() error!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v2, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/bluetooth/ble/GattPeripheral$6;

    invoke-direct {v3, p0}, Lcom/android/bluetooth/ble/GattPeripheral$6;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .end local v0    # "ret":Z
    :cond_3
    move v0, v3

    .line 377
    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1006
    instance-of v0, p1, Lcom/android/bluetooth/ble/GattPeripheral;

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Address:Ljava/lang/String;

    check-cast p1, Lcom/android/bluetooth/ble/GattPeripheral;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/bluetooth/ble/GattPeripheral;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1009
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 3
    .param p1, "serviceUUID"    # Ljava/util/UUID;
    .param p2, "charactUUID"    # Ljava/util/UUID;

    .prologue
    const/4 v1, 0x0

    .line 570
    iget-object v2, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v2, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-object v1

    .line 573
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 574
    .local v0, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method final getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public final getDeviceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Address:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Lcom/android/bluetooth/ble/property/BleProperty;
    .locals 2
    .param p1, "property"    # I

    .prologue
    .line 996
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mProperties:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/ble/property/BleProperty;

    .line 997
    .local v0, "prop":Lcom/android/bluetooth/ble/property/BleProperty;
    if-nez v0, :cond_0

    .line 998
    invoke-static {p0, p1}, Lcom/android/bluetooth/ble/property/BlePropertyFactory;->buildProperty(Lcom/android/bluetooth/ble/GattPeripheral;I)Lcom/android/bluetooth/ble/property/BleProperty;

    move-result-object v0

    .line 999
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mProperties:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1001
    :cond_0
    return-object v0
.end method

.method getRetryTimes()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mRetryConnectTimes:I

    return v0
.end method

.method protected final getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    return-object v0
.end method

.method protected getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Lcom/android/bluetooth/ble/GattPeripheral$STATE;
    .locals 2

    .prologue
    .line 870
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 871
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    monitor-exit v1

    return-object v0

    .line 872
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasClients()Z
    .locals 2

    .prologue
    .line 194
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mClients:Ljava/util/HashMap;

    monitor-enter v1

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mClients:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected init()Z
    .locals 1

    .prologue
    .line 805
    invoke-direct {p0}, Lcom/android/bluetooth/ble/GattPeripheral;->restoreCharacteristicNotify()V

    .line 806
    const/4 v0, 0x1

    return v0
.end method

.method public isAutoReconnect()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mAutoReconnect:Z

    return v0
.end method

.method protected isConnected()Z
    .locals 3

    .prologue
    .line 864
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 865
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    sget-object v2, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->CONNECTED:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    sget-object v2, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->READY:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 866
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method needRetryConnecting()Z
    .locals 2

    .prologue
    .line 489
    iget v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mRetryConnectTimes:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 8
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 675
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v4

    .line 676
    .local v4, "value":[B
    invoke-direct {p0, p2}, Lcom/android/bluetooth/ble/GattPeripheral;->getCharacteristicUUIDKey(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;

    move-result-object v1

    .line 678
    .local v1, "combinedUUID":Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;
    const-string v5, "GattPeripheral"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCharacteristicChanged: uuid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v5, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_NotifyCBs:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 680
    .local v3, "notifyCBs":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;>;"
    if-eqz v3, :cond_0

    .line 681
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;

    .line 682
    .local v0, "cb":Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;
    invoke-interface {v0, v4}, Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;->notify([B)V

    goto :goto_0

    .line 685
    .end local v0    # "cb":Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public final onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 398
    const-string v0, "GattPeripheral"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionStateChange: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 400
    :try_start_0
    iput-object p1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    .line 401
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    if-nez p2, :cond_0

    .line 404
    packed-switch p3, :pswitch_data_0

    .line 419
    :pswitch_0
    invoke-direct {p0}, Lcom/android/bluetooth/ble/GattPeripheral;->GattCB_onConnectionFailed()V

    .line 440
    :goto_0
    return-void

    .line 401
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 406
    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 407
    :try_start_2
    sget-object v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->CONNECTED:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    iput-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    .line 408
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 409
    invoke-direct {p0}, Lcom/android/bluetooth/ble/GattPeripheral;->GattCB_onConnected()V

    goto :goto_0

    .line 408
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 412
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    :try_start_4
    sget-object v0, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->DISCONNECTED:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    iput-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    .line 414
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 415
    invoke-direct {p0}, Lcom/android/bluetooth/ble/GattPeripheral;->GattCB_onDisconnected()V

    goto :goto_0

    .line 414
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 422
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 435
    const-string v0, "GattPeripheral"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connection state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :goto_1
    invoke-direct {p0}, Lcom/android/bluetooth/ble/GattPeripheral;->GattCB_onConnectionFailed()V

    goto :goto_0

    .line 424
    :sswitch_0
    const-string v0, "GattPeripheral"

    const-string v1, "connection state: 141"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 428
    :sswitch_1
    const-string v0, "GattPeripheral"

    const-string v1, "L2CAP - l2c_link_timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 431
    :sswitch_2
    const-string v0, "GattPeripheral"

    const-string v1, "connection state: 257 GATT stack failed?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 422
    :sswitch_data_0
    .sparse-switch
        0x85 -> :sswitch_1
        0x8d -> :sswitch_0
        0x101 -> :sswitch_2
    .end sparse-switch
.end method

.method public final onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 689
    return-void
.end method

.method public final onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 666
    if-nez p2, :cond_1

    const/4 v0, 0x1

    .line 667
    .local v0, "succeed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 668
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mLastDiscoveredTimestamp:J

    .line 670
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/bluetooth/ble/GattPeripheral;->GattCB_onServiceDiscovered(Z)V

    .line 671
    return-void

    .line 666
    .end local v0    # "succeed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 211
    return-void
.end method

.method protected prepare()V
    .locals 3

    .prologue
    .line 101
    invoke-super {p0}, Lcom/android/bluetooth/ble/SynchronizedGattCallback;->prepare()V

    .line 102
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GattPeripheral"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 104
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mHandler:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method public final read(Landroid/bluetooth/BluetoothGattCharacteristic;)[B
    .locals 5
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v1, 0x0

    .line 600
    const-string v2, "GattPeripheral"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read characteristic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    if-nez p1, :cond_0

    .line 602
    const-string v2, "GattPeripheral"

    const-string v3, "target characteristic is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :goto_0
    return-object v1

    .line 605
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 606
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    sget-object v4, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->READY:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    if-eq v3, v4, :cond_1

    .line 607
    const-string v3, "GattPeripheral"

    const-string v4, "device is not connected ready!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    monitor-exit v2

    goto :goto_0

    .line 610
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    iget-object v2, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, v2, p1}, Lcom/android/bluetooth/ble/GattPeripheral;->synchronizedReadCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)I

    move-result v0

    .line 612
    .local v0, "ret":I
    if-nez v0, :cond_2

    .line 613
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    goto :goto_0

    .line 615
    :cond_2
    const-string v2, "GattPeripheral"

    const-string v3, "read characteristic error"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final read(Ljava/util/UUID;Ljava/util/UUID;)[B
    .locals 4
    .param p1, "serviceUUID"    # Ljava/util/UUID;
    .param p2, "charactUUID"    # Ljava/util/UUID;

    .prologue
    .line 590
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/ble/GattPeripheral;->getCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 591
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_0

    .line 592
    const-string v1, "GattPeripheral"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such characteristic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v1, 0x0

    .line 595
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/ble/GattPeripheral;->read(Landroid/bluetooth/BluetoothGattCharacteristic;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public final readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)[B
    .locals 6
    .param p1, "serviceUUID"    # Ljava/util/UUID;
    .param p2, "charactUUID"    # Ljava/util/UUID;
    .param p3, "descriptorUUID"    # Ljava/util/UUID;

    .prologue
    const/4 v2, 0x0

    .line 655
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/ble/GattPeripheral;->getDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 656
    .local v0, "des":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v0, :cond_1

    .line 657
    const-string v3, "GattPeripheral"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read, no such descriptor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_0
    :goto_0
    return-object v2

    .line 660
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, v3, v0}, Lcom/android/bluetooth/ble/GattPeripheral;->synchronizedReadDescriptor(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;)I

    move-result v1

    .line 661
    .local v1, "ret":I
    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v2

    goto :goto_0
.end method

.method public final declared-synchronized readRemoteRSSI()I
    .locals 1

    .prologue
    .line 566
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/ble/GattPeripheral;->synchronizedReadRemoteRSSI(Landroid/bluetooth/BluetoothGatt;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerClient(Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBleCallback;)Z
    .locals 4
    .param p1, "clientId"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Lmiui/bluetooth/ble/IBluetoothMiBleCallback;

    .prologue
    .line 108
    iget-object v2, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mClients:Ljava/util/HashMap;

    monitor-enter v2

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    const-string v1, "GattPeripheral"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerClient: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    invoke-virtual {v1}, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->getValue()I

    move-result v1

    invoke-interface {p2, p1, v1}, Lmiui/bluetooth/ble/IBluetoothMiBleCallback;->onConnectionState(Landroid/os/ParcelUuid;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 110
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 118
    const-string v1, "GattPeripheral"

    const-string v2, "callback.onConnectionState() error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerConnectSateListener(Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_ConnCBs:Ljava/util/List;

    monitor-enter v4

    .line 157
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_ConnCBs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 158
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;>;>;"
    const/4 v0, 0x0

    .line 159
    .local v0, "alreadyAdded":Z
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;

    .line 161
    .local v1, "cb":Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;
    if-ne v1, p1, :cond_1

    .line 162
    const/4 v0, 0x1

    .line 167
    .end local v1    # "cb":Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;
    :cond_2
    if-nez v0, :cond_3

    .line 168
    iget-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_ConnCBs:Ljava/util/List;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iget-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Device:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    invoke-virtual {v4}, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->getValue()I

    move-result v4

    invoke-interface {p1, v3, v4}, Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;->onConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 170
    .end local v0    # "alreadyAdded":Z
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public final registerNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;)Z
    .locals 6
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "notifyCB"    # Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;

    .prologue
    .line 740
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 741
    :cond_0
    const/4 v2, 0x0

    .line 763
    :cond_1
    :goto_0
    return v2

    .line 744
    :cond_2
    const-string v3, "GattPeripheral"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerNotification():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_NotifyCBs:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 748
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;>;"
    if-nez v0, :cond_3

    .line 749
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 750
    .restart local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;>;"
    iget-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_NotifyCBs:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/GattPeripheral;->getCharacteristicUUIDKey(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/android/bluetooth/ble/GattPeripheral$CombinedUUID;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    .line 754
    .local v1, "empty":Z
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 755
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    :cond_4
    const/4 v2, 0x1

    .line 759
    .local v2, "ret":Z
    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    .line 760
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/bluetooth/ble/GattPeripheral;->enableNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v2

    goto :goto_0
.end method

.method public final registerNotification(Ljava/util/UUID;Ljava/util/UUID;Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;)Z
    .locals 2
    .param p1, "serviceUUID"    # Ljava/util/UUID;
    .param p2, "charactUUID"    # Ljava/util/UUID;
    .param p3, "callback"    # Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;

    .prologue
    .line 693
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/ble/GattPeripheral;->getCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 694
    .local v0, "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {p0, v0, p3}, Lcom/android/bluetooth/ble/GattPeripheral;->registerNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;)Z

    move-result v1

    return v1
.end method

.method public removeTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method

.method resetRetryTimes()V
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mRetryConnectTimes:I

    .line 498
    return-void
.end method

.method public setConnectionListener(Lcom/android/bluetooth/ble/GattPeripheral$OnConnectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/bluetooth/ble/GattPeripheral$OnConnectionListener;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mConnectionListener:Lcom/android/bluetooth/ble/GattPeripheral$OnConnectionListener;

    .line 149
    return-void
.end method

.method public unregisterClient(Landroid/os/ParcelUuid;)Z
    .locals 7
    .param p1, "clientId"    # Landroid/os/ParcelUuid;

    .prologue
    const/4 v6, 0x1

    .line 126
    const-string v3, "GattPeripheral"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterClient: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v4, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mClients:Ljava/util/HashMap;

    monitor-enter v4

    .line 129
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    monitor-exit v4

    .line 144
    :goto_0
    return v6

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mProperties:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 135
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 136
    iget-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mProperties:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/ble/property/BleProperty;

    .line 137
    .local v2, "prop":Lcom/android/bluetooth/ble/property/BleProperty;
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/ble/property/BleProperty;->removePropertyCallback(Landroid/os/ParcelUuid;)Z

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 140
    .end local v2    # "prop":Lcom/android/bluetooth/ble/property/BleProperty;
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/GattPeripheral;->close()V

    .line 143
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public unregisterConnectSateListener(Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 191
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_ConnCBs:Ljava/util/List;

    monitor-enter v3

    .line 181
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_ConnCBs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 182
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;>;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;

    .line 184
    .local v0, "cb":Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;
    if-ne v0, p1, :cond_1

    .line 185
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 189
    .end local v0    # "cb":Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final unregisterNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;)Z
    .locals 6
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "notifyCB"    # Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 775
    if-nez p1, :cond_1

    .line 801
    :cond_0
    :goto_0
    return v2

    .line 778
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_NotifyCBs:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 780
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move v2, v3

    .line 781
    goto :goto_0

    .line 784
    :cond_3
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 786
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    move v2, v3

    .line 787
    goto :goto_0

    .line 790
    :cond_4
    iget-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_NotifyCBs:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    iget-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 793
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    sget-object v5, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->READY:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    if-eq v4, v5, :cond_5

    .line 794
    monitor-exit v3

    goto :goto_0

    .line 796
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_5
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 798
    invoke-direct {p0, p1, v2}, Lcom/android/bluetooth/ble/GattPeripheral;->enableNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v1

    .line 799
    .local v1, "ret":Z
    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public final unregisterNotification(Ljava/util/UUID;Ljava/util/UUID;Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;)Z
    .locals 2
    .param p1, "serviceUUID"    # Ljava/util/UUID;
    .param p2, "charactUUID"    # Ljava/util/UUID;
    .param p3, "callback"    # Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;

    .prologue
    .line 769
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/ble/GattPeripheral;->getCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 770
    .local v0, "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {p0, v0, p3}, Lcom/android/bluetooth/ble/GattPeripheral;->unregisterNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/android/bluetooth/ble/IGattCallback$INotifyCallback;)Z

    move-result v1

    return v1
.end method

.method public final write(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Z
    .locals 5
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "value"    # [B

    .prologue
    const/4 v1, 0x0

    .line 632
    const-string v2, "GattPeripheral"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write characteristic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 641
    :cond_0
    :goto_0
    return v1

    .line 635
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_StateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 636
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_State:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    sget-object v4, Lcom/android/bluetooth/ble/GattPeripheral$STATE;->READY:Lcom/android/bluetooth/ble/GattPeripheral$STATE;

    if-eq v3, v4, :cond_2

    .line 637
    monitor-exit v2

    goto :goto_0

    .line 639
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 640
    iget-object v2, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/bluetooth/ble/GattPeripheral;->synchronizedWriteCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)I

    move-result v0

    .line 641
    .local v0, "ret":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final write(Ljava/util/UUID;Ljava/util/UUID;[B)Z
    .locals 4
    .param p1, "serviceUUID"    # Ljava/util/UUID;
    .param p2, "charactUUID"    # Ljava/util/UUID;
    .param p3, "value"    # [B

    .prologue
    .line 621
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/ble/GattPeripheral;->getCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 622
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_0

    .line 623
    const-string v1, "GattPeripheral"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no characteristic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v1, 0x0

    .line 627
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0, p3}, Lcom/android/bluetooth/ble/GattPeripheral;->write(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Z

    move-result v1

    goto :goto_0
.end method

.method public final writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z
    .locals 6
    .param p1, "serviceUUID"    # Ljava/util/UUID;
    .param p2, "charactUUID"    # Ljava/util/UUID;
    .param p3, "descriptorUUID"    # Ljava/util/UUID;
    .param p4, "value"    # [B

    .prologue
    const/4 v2, 0x0

    .line 645
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/ble/GattPeripheral;->getDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 646
    .local v0, "des":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v0, :cond_1

    .line 647
    const-string v3, "GattPeripheral"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read, no such descriptor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_0
    :goto_0
    return v2

    .line 650
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/ble/GattPeripheral;->m_Gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, v3, v0, p4}, Lcom/android/bluetooth/ble/GattPeripheral;->synchronizedWriteDescriptor(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;[B)I

    move-result v1

    .line 651
    .local v1, "ret":I
    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method
