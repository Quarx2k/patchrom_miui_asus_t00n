.class final Lcom/android/bluetooth/btservice/RemoteDevices;
.super Ljava/lang/Object;
.source "RemoteDevices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MAS_INSTANCE_INTENT_DELAY:I = 0x1770

.field private static final MESSAGE_MAS_INSTANCE_INTENT:I = 0x2

.field private static final MESSAGE_UUID_INTENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothRemoteDevices"

.field private static final UUID_INTENT_DELAY:I = 0x1770

.field private static mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private static mSdpMasTracker:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static mSdpTracker:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mObject:Ljava/lang/Object;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLock_stack:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 3
    .param p1, "pm"    # Landroid/os/PowerManager;
    .param p2, "service"    # Lcom/android/bluetooth/btservice/AdapterService;

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;

    .line 598
    new-instance v0, Lcom/android/bluetooth/btservice/RemoteDevices$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/RemoteDevices$1;-><init>(Lcom/android/bluetooth/btservice/RemoteDevices;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mHandler:Landroid/os/Handler;

    .line 64
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 65
    sput-object p2, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpMasTracker:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    .line 71
    const v0, 0x3000001a

    const-string v1, "BluetoothRemoteDevices"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 73
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 75
    const v0, 0x30000001

    const-string v1, "BluetoothRemoteDevices"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mWakeLock_stack:Landroid/os/PowerManager$WakeLock;

    .line 77
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mWakeLock_stack:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/btservice/RemoteDevices;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->sendUuidIntent(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/btservice/RemoteDevices;Landroid/bluetooth/BluetoothDevice;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/RemoteDevices;->sendMasInstanceIntent(Landroid/bluetooth/BluetoothDevice;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200()Lcom/android/bluetooth/btservice/AdapterService;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/btservice/RemoteDevices;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 624
    return-void
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 619
    const-string v0, "BluetoothRemoteDevices"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return-void
.end method

.method private infoLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 628
    return-void
.end method

.method private sendDisplayPinIntent([BI)V
    .locals 3
    .param p1, "address"    # [B
    .param p2, "pin"    # I

    .prologue
    .line 305
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 306
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 308
    const-string v1, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    const-string v1, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 313
    sget-object v1, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 316
    return-void
.end method

.method private sendMasInstanceIntent(Landroid/bluetooth/BluetoothDevice;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothMasInstance;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p2, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothMasInstance;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.bluetooth.device.action.MAS_INSTANCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 296
    if-eqz p2, :cond_0

    const-string v1, "org.codeaurora.bluetooth.device.extra.MAS_INSTANCE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 297
    :cond_0
    sget-object v1, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 300
    sget-object v1, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpMasTracker:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 301
    return-void
.end method

.method private sendUuidIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    .line 282
    .local v1, "prop":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.UUID"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 284
    const-string v3, "android.bluetooth.device.extra.UUID"

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 285
    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v0, v3}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 288
    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 289
    return-void

    .line 284
    :cond_0
    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$400(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)[Landroid/os/ParcelUuid;

    move-result-object v2

    goto :goto_0
.end method

.method private warnLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 631
    const-string v0, "BluetoothRemoteDevices"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    return-void
.end method


# virtual methods
.method public Clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method aclStateChangeCallback(I[BI)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "address"    # [B
    .param p3, "newState"    # I

    .prologue
    .line 511
    invoke-virtual {p0, p2}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 513
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 514
    const-string v2, "aclStateChangeCallback: Device is NULL"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    .line 535
    :goto_0
    return-void

    .line 518
    :cond_0
    const/4 v1, 0x0

    .line 519
    .local v1, "intent":Landroid/content/Intent;
    if-nez p3, :cond_1

    .line 520
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 521
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aclStateChangeCallback: State:Connected to Device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 532
    :goto_1
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 533
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 534
    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v3, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v1, v3}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 523
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    .line 525
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 527
    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v3, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 529
    :cond_2
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 530
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aclStateChangeCallback: State:DisConnected to Device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .locals 5
    .param p1, "address"    # [B

    .prologue
    .line 120
    iget-object v3, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    monitor-enter v3

    .line 121
    :try_start_0
    new-instance v1, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;-><init>(Lcom/android/bluetooth/btservice/RemoteDevices;)V

    .line 122
    .local v1, "prop":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 124
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    # setter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B
    invoke-static {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$002(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[B)[B

    .line 125
    iget-object v2, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    monitor-exit v3

    return-object v1

    .line 127
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "prop":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method cleanup()V
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 86
    :cond_0
    sget-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpMasTracker:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 87
    sget-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpMasTracker:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mWakeLock_stack:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mWakeLock_stack:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 94
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mWakeLock_stack:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mWakeLock_stack:Landroid/os/PowerManager$WakeLock;

    .line 98
    :cond_3
    return-void
.end method

.method deviceFoundCallback([B)V
    .locals 6
    .param p1, "address"    # [B

    .prologue
    .line 402
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 403
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceFoundCallback: Remote Address is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    .line 405
    .local v1, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v1, :cond_0

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device Properties is null for Device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    .line 418
    :goto_0
    return-void

    .line 410
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.FOUND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 412
    const-string v3, "android.bluetooth.device.extra.CLASS"

    new-instance v4, Landroid/bluetooth/BluetoothClass;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$700(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 414
    const-string v3, "android.bluetooth.device.extra.RSSI"

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRssi:S
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$1100(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)S

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 415
    const-string v3, "android.bluetooth.device.extra.NAME"

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$500(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    sget-object v3, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v4, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method deviceMasInstancesFoundCallback(I[B[Ljava/lang/String;[I[I[I)V
    .locals 8
    .param p1, "status"    # I
    .param p2, "address"    # [B
    .param p3, "name"    # [Ljava/lang/String;
    .param p4, "scn"    # [I
    .param p5, "id"    # [I
    .param p6, "msgtype"    # [I

    .prologue
    .line 539
    invoke-virtual {p0, p2}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 541
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 542
    const-string v4, "deviceMasInstancesFoundCallback: Device is NULL"

    invoke-direct {p0, v4}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    .line 560
    :goto_0
    return-void

    .line 546
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceMasInstancesFoundCallback: found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instances"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 548
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v3, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothMasInstance;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p3

    if-ge v1, v4, :cond_1

    .line 551
    new-instance v2, Landroid/bluetooth/BluetoothMasInstance;

    aget v4, p5, v1

    aget-object v5, p3, v1

    aget v6, p4, v1

    aget v7, p6, v1

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/bluetooth/BluetoothMasInstance;-><init>(ILjava/lang/String;II)V

    .line 554
    .local v2, "inst":Landroid/bluetooth/BluetoothMasInstance;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothMasInstance;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 559
    .end local v2    # "inst":Landroid/bluetooth/BluetoothMasInstance;
    :cond_1
    invoke-direct {p0, v0, v3}, Lcom/android/bluetooth/btservice/RemoteDevices;->sendMasInstanceIntent(Landroid/bluetooth/BluetoothDevice;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method devicePropertyChangedCallback([B[I[[B)V
    .locals 12
    .param p1, "address"    # [B
    .param p2, "types"    # [I
    .param p3, "values"    # [[B

    .prologue
    const/4 v11, 0x1

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 324
    .local v0, "bdDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 325
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    .line 326
    .local v1, "device":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 331
    :goto_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v7, p2

    if-ge v3, v7, :cond_3

    .line 332
    aget v5, p2, v3

    .line 333
    .local v5, "type":I
    aget-object v6, p3, v3

    .line 334
    .local v6, "val":[B
    array-length v7, v6

    if-gtz v7, :cond_1

    .line 335
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "devicePropertyChangedCallback: bdDevice: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value is empty for type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    .line 331
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 328
    .end local v1    # "device":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .end local v3    # "j":I
    .end local v5    # "type":I
    .end local v6    # "val":[B
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    .restart local v1    # "device":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    goto :goto_0

    .line 337
    .restart local v3    # "j":I
    .restart local v5    # "type":I
    .restart local v6    # "val":[B
    :cond_1
    iget-object v8, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;

    monitor-enter v8

    .line 338
    packed-switch v5, :pswitch_data_0

    .line 394
    :goto_3
    :pswitch_0
    :try_start_0
    monitor-exit v8

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 340
    :pswitch_1
    :try_start_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    # setter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;
    invoke-static {v1, v7}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$502(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 343
    const-string v7, "android.bluetooth.device.extra.NAME"

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$500(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const/high16 v7, 0x4000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 345
    sget-object v7, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v9, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v9, "android.permission.BLUETOOTH"

    invoke-virtual {v7, v2, v9}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 346
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Remote Device name is: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$500(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    goto :goto_3

    .line 349
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    # setter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;
    invoke-static {v1, v7}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$602(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 352
    const-string v7, "android.bluetooth.device.extra.NAME"

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$500(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const/high16 v7, 0x4000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 354
    sget-object v7, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v9, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v9, "android.permission.BLUETOOTH"

    invoke-virtual {v7, v2, v9}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 355
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Remote Device alias is: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$600(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 358
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_3
    # setter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B
    invoke-static {v1, v6}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$002(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[B)[B

    .line 359
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Remote Address is:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 362
    :pswitch_4
    invoke-static {v6}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v7

    # setter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I
    invoke-static {v1, v7}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$702(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I

    .line 363
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.bluetooth.device.action.CLASS_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 365
    const-string v7, "android.bluetooth.device.extra.CLASS"

    new-instance v9, Landroid/bluetooth/BluetoothClass;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$700(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 367
    const/high16 v7, 0x4000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 368
    sget-object v7, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v9, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v9, "android.permission.BLUETOOTH"

    invoke-virtual {v7, v2, v9}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 369
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Remote class is:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$700(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 372
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_5
    array-length v7, v6

    div-int/lit8 v4, v7, 0x10

    .line 373
    .local v4, "numUuids":I
    invoke-static {v6}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v7

    # setter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;
    invoke-static {v1, v7}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$402(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[Landroid/os/ParcelUuid;)[Landroid/os/ParcelUuid;

    .line 374
    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->sendUuidIntent(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_3

    .line 379
    .end local v4    # "numUuids":I
    :pswitch_6
    invoke-static {v6}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v7

    # setter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mDeviceType:I
    invoke-static {v1, v7}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$802(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I

    goto/16 :goto_3

    .line 383
    :pswitch_7
    invoke-static {v6}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v7

    # setter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->retValue:I
    invoke-static {v1, v7}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$902(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I

    .line 384
    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->retValue:I
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$900(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v7

    if-ne v7, v11, :cond_2

    .line 385
    const/4 v7, 0x1

    # setter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mTrustValue:Z
    invoke-static {v1, v7}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$1002(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Z)Z

    goto/16 :goto_3

    .line 387
    :cond_2
    const/4 v7, 0x0

    # setter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mTrustValue:Z
    invoke-static {v1, v7}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$1002(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Z)Z

    goto/16 :goto_3

    .line 391
    :pswitch_8
    const/4 v7, 0x0

    aget-byte v7, v6, v7

    int-to-short v7, v7

    # setter for: Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRssi:S
    invoke-static {v1, v7}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$1102(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;S)S
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 397
    .end local v5    # "type":I
    .end local v6    # "val":[B
    :cond_3
    return-void

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method fetchMasInstances(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 588
    sget-object v1, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpMasTracker:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    :goto_0
    return-void

    .line 589
    :cond_0
    sget-object v1, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpMasTracker:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 592
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 593
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 595
    sget-object v1, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteMasInstancesNative([B)Z

    goto :goto_0
.end method

.method fetchUuids(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 576
    sget-object v1, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    :goto_0
    return-void

    .line 577
    :cond_0
    sget-object v1, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 580
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 581
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 584
    sget-object v1, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteServicesNative([B)Z

    goto :goto_0
.end method

.method getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 4
    .param p1, "address"    # [B

    .prologue
    .line 111
    iget-object v2, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 112
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    .end local v0    # "dev":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    monitor-exit v1

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method pinRequestCallback([B[BIZ)V
    .locals 9
    .param p1, "address"    # [B
    .param p2, "name"    # [B
    .param p3, "cod"    # I
    .param p4, "secure"    # Z

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 423
    .local v0, "bdDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 424
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .line 426
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 427
    .local v1, "btClass":Landroid/bluetooth/BluetoothClass;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    .line 428
    .local v2, "btDeviceClass":I
    const/16 v5, 0x540

    if-eq v2, v5, :cond_1

    const/16 v5, 0x5c0

    if-ne v2, v5, :cond_2

    .line 440
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide v7, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 441
    .local v4, "pin":I
    invoke-direct {p0, p1, v4}, Lcom/android/bluetooth/btservice/RemoteDevices;->sendDisplayPinIntent([BI)V

    .line 458
    .end local v4    # "pin":I
    :goto_0
    return-void

    .line 444
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pinRequestCallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cod:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "secure"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/RemoteDevices;->infoLog(Ljava/lang/String;)V

    .line 447
    iget-object v5, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 448
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 450
    const-string v5, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    const-string v5, "codeaurora.bluetooth.device.extra.SECURE"

    invoke-virtual {v3, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 454
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 455
    sget-object v5, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v6, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v6, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v5, v3, v6}, Lcom/android/bluetooth/btservice/AdapterService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 457
    iget-object v5, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method sspRequestCallback([B[BIII)V
    .locals 7
    .param p1, "address"    # [B
    .param p2, "name"    # [B
    .param p3, "cod"    # I
    .param p4, "pairingVariant"    # I
    .param p5, "passkey"    # I

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 465
    .local v0, "bdDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 466
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .line 469
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sspRequestCallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cod: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pairingVariant "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " passkey: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/RemoteDevices;->infoLog(Ljava/lang/String;)V

    .line 472
    const/4 v2, 0x0

    .line 473
    .local v2, "displayPasskey":Z
    if-nez p4, :cond_3

    .line 474
    const/4 v4, 0x2

    .line 475
    .local v4, "variant":I
    const/4 v2, 0x1

    .line 487
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 488
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v1, :cond_1

    .line 489
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device is not known for:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/RemoteDevices;->warnLog(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .line 491
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 494
    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 496
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 499
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 500
    if-eqz v2, :cond_2

    .line 501
    const-string v5, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v3, v5, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    :cond_2
    const-string v5, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    sget-object v5, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v6, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v6, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v5, v3, v6}, Lcom/android/bluetooth/btservice/AdapterService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 506
    iget-object v5, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 508
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "variant":I
    :goto_1
    return-void

    .line 476
    :cond_3
    const/4 v5, 0x2

    if-ne p4, v5, :cond_4

    .line 477
    const/4 v4, 0x3

    .restart local v4    # "variant":I
    goto :goto_0

    .line 478
    .end local v4    # "variant":I
    :cond_4
    const/4 v5, 0x1

    if-ne p4, v5, :cond_5

    .line 479
    const/4 v4, 0x1

    .restart local v4    # "variant":I
    goto :goto_0

    .line 480
    .end local v4    # "variant":I
    :cond_5
    const/4 v5, 0x3

    if-ne p4, v5, :cond_6

    .line 481
    const/4 v4, 0x4

    .line 482
    .restart local v4    # "variant":I
    const/4 v2, 0x1

    goto :goto_0

    .line 484
    .end local v4    # "variant":I
    :cond_6
    const-string v5, "SSP Pairing variant not present"

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method wakeStateChangeCallback(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 562
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mWakeLock_stack:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 565
    const-string v0, "Wake lock Aquired"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 573
    :goto_0
    return-void

    .line 566
    :cond_0
    if-nez p1, :cond_1

    .line 568
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mWakeLock_stack:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 569
    const-string v0, "Wake lock released"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 571
    :cond_1
    const-string v0, "Wake lock WRONG STATE ***** "

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    goto :goto_0
.end method
