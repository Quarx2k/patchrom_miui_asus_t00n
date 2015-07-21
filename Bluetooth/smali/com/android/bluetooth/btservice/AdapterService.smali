.class public Lcom/android/bluetooth/btservice/AdapterService;
.super Landroid/app/Service;
.source "AdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;
    }
.end annotation


# static fields
.field public static final ACTION_LOAD_ADAPTER_PROPERTIES:Ljava/lang/String; = "com.android.bluetooth.btservice.action.LOAD_ADAPTER_PROPERTIES"

.field public static final ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String; = "com.android.bluetooth.btservice.action.STATE_CHANGED"

.field private static final ADAPTER_SERVICE_TYPE:I = 0x1

.field private static final AUTO_CONNECT_PROFILES_TIMEOUT:I = 0x1f4

.field static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final CONNECT_OTHER_PROFILES_TIMEOUT:I = 0x1770

.field private static final DBG:Z = true

.field public static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field private static final MESSAGE_AUTO_CONNECT_PROFILES:I = 0x32

.field private static final MESSAGE_CONNECT_OTHER_PROFILES:I = 0x1e

.field private static final MESSAGE_PROFILE_CONNECTION_STATE_CHANGED:I = 0x14

.field private static final MESSAGE_PROFILE_SERVICE_STATE_CHANGED:I = 0x1

.field public static final PROFILE_CONN_CONNECTED:I = 0x1

.field public static final PROFILE_CONN_REJECTED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapterService"

.field private static final TRACE_REF:Z = true

.field private static sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private static sRefCount:I


# instance fields
.field private mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

.field private mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

.field private mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

.field private mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCleaningUp:Z

.field private mCurrentRequestId:I

.field private mDisabledProfiles:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

.field private mNativeAvailable:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProfileServicesState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProfilesStarted:Z

.field private mQuietmode:Z

.field private mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput v0, Lcom/android/bluetooth/btservice/AdapterService;->sRefCount:I

    .line 99
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->classInitNative()V

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 153
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mQuietmode:Z

    .line 150
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDisabledProfiles:Ljava/util/HashSet;

    .line 424
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterService$1;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    .line 155
    const-class v1, Lcom/android/bluetooth/btservice/AdapterService;

    monitor-enter v1

    .line 156
    :try_start_0
    sget v0, Lcom/android/bluetooth/btservice/AdapterService;->sRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/bluetooth/btservice/AdapterService;->sRefCount:I

    .line 157
    const-string v0, "BluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REFCOUNT: CREATED. INSTANCE_COUNT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/bluetooth/btservice/AdapterService;->sRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

.method static synthetic access$000(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->processProfileServiceStateChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothDevice;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->processProfileStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->processConnectOtherProfiles(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterService;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->autoConnectProfilesDelayed()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/btservice/AdapterService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterService;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private adjustOtherHeadsetPriorities(Lcom/android/bluetooth/hfp/HeadsetService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "hsService"    # Lcom/android/bluetooth/hfp/HeadsetService;
    .param p2, "connectedDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1290
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .local v0, "arr$":[Landroid/bluetooth/BluetoothDevice;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1291
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_0

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1293
    const/16 v4, 0x64

    invoke-virtual {p1, v1, v4}, Lcom/android/bluetooth/hfp/HeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 1290
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1296
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    return-void
.end method

.method private adjustOtherSinkPriorities(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "a2dpService"    # Lcom/android/bluetooth/a2dp/A2dpService;
    .param p2, "connectedDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1300
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .local v0, "arr$":[Landroid/bluetooth/BluetoothDevice;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1301
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_0

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1303
    const/16 v4, 0x64

    invoke-virtual {p1, v1, v4}, Lcom/android/bluetooth/a2dp/A2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 1300
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1306
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    return-void
.end method

.method private autoConnectA2dp()V
    .locals 9

    .prologue
    .line 1207
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1208
    .local v0, "a2dpSservice":Lcom/android/bluetooth/a2dp/A2dpService;
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1209
    .local v2, "bondedDevices":[Landroid/bluetooth/BluetoothDevice;
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 1218
    :cond_0
    return-void

    .line 1212
    :cond_1
    move-object v1, v2

    .local v1, "arr$":[Landroid/bluetooth/BluetoothDevice;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v1, v4

    .line 1213
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_2

    .line 1214
    const-string v6, "BluetoothAdapterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Auto Connecting A2DP Profile with device "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    invoke-virtual {v0, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1212
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private autoConnectHeadset()V
    .locals 9

    .prologue
    .line 1192
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v3

    .line 1194
    .local v3, "hsService":Lcom/android/bluetooth/hfp/HeadsetService;
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1195
    .local v1, "bondedDevices":[Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    .line 1204
    :cond_0
    return-void

    .line 1198
    :cond_1
    move-object v0, v1

    .local v0, "arr$":[Landroid/bluetooth/BluetoothDevice;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 1199
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3, v2}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_2

    .line 1200
    const-string v6, "BluetoothAdapterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Auto Connecting Headset Profile with device "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-virtual {v3, v2}, Lcom/android/bluetooth/hfp/HeadsetService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1198
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private autoConnectProfilesDelayed()V
    .locals 2

    .prologue
    .line 1177
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 1178
    const-string v0, "BT is not ON. Exiting autoConnect"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    .line 1189
    :goto_0
    return-void

    .line 1181
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1182
    const-string v0, "Initiate auto connection on BT on..."

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 1183
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->autoConnectHeadset()V

    .line 1184
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->autoConnectA2dp()V

    goto :goto_0

    .line 1187
    :cond_1
    const-string v0, "BT is in Quiet mode. Not initiating  auto connections"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private native cancelDiscoveryNative()Z
.end method

.method private declared-synchronized checkHidState()V
    .locals 6

    .prologue
    .line 1609
    monitor-enter p0

    const/4 v3, 0x1

    :try_start_0
    new-array v1, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/android/bluetooth/hid/HidService;

    aput-object v4, v1, v3

    .line 1610
    .local v1, "hh":[Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/android/bluetooth/hid/HidDevService;

    aput-object v4, v0, v3

    .line 1612
    .local v0, "hd":[Ljava/lang/Class;
    const-string v3, "persist.service.bdroid.hid.dev"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1613
    .local v2, "isHidDev":Z
    const-string v3, "BluetoothAdapterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkHidState: isHidDev = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    if-eqz v2, :cond_1

    .line 1616
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDisabledProfiles:Ljava/util/HashSet;

    const-class v4, Lcom/android/bluetooth/hid/HidService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1617
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDisabledProfiles:Ljava/util/HashSet;

    const-class v4, Lcom/android/bluetooth/hid/HidDevService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1623
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v3}, Lcom/android/bluetooth/btservice/AdapterState;->isTurningOn()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v3}, Lcom/android/bluetooth/btservice/AdapterState;->isTurningOff()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1624
    :cond_0
    const-string v3, "BluetoothAdapterService"

    const-string v4, "checkHidState: returning"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1635
    :goto_1
    monitor-exit p0

    return-void

    .line 1619
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDisabledProfiles:Ljava/util/HashSet;

    const-class v4, Lcom/android/bluetooth/hid/HidService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1620
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDisabledProfiles:Ljava/util/HashSet;

    const-class v4, Lcom/android/bluetooth/hid/HidDevService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1609
    .end local v0    # "hd":[Ljava/lang/Class;
    .end local v1    # "hh":[Ljava/lang/Class;
    .end local v2    # "isHidDev":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1628
    .restart local v0    # "hd":[Ljava/lang/Class;
    .restart local v1    # "hh":[Ljava/lang/Class;
    .restart local v2    # "isHidDev":Z
    :cond_2
    if-eqz v2, :cond_3

    .line 1629
    const/16 v3, 0xa

    :try_start_2
    invoke-direct {p0, v1, v3}, Lcom/android/bluetooth/btservice/AdapterService;->setProfileServiceState([Ljava/lang/Class;I)V

    .line 1630
    const/16 v3, 0xc

    invoke-direct {p0, v0, v3}, Lcom/android/bluetooth/btservice/AdapterService;->setProfileServiceState([Ljava/lang/Class;I)V

    goto :goto_1

    .line 1632
    :cond_3
    const/16 v3, 0xa

    invoke-direct {p0, v0, v3}, Lcom/android/bluetooth/btservice/AdapterService;->setProfileServiceState([Ljava/lang/Class;I)V

    .line 1633
    const/16 v3, 0xc

    invoke-direct {p0, v1, v3}, Lcom/android/bluetooth/btservice/AdapterService;->setProfileServiceState([Ljava/lang/Class;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private static declared-synchronized clearAdapterService()V
    .locals 2

    .prologue
    .line 134
    const-class v0, Lcom/android/bluetooth/btservice/AdapterService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit v0

    return-void

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private native connectSocketNative([BI[BII)I
.end method

.method static convertScanModeFromHal(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 1536
    packed-switch p0, :pswitch_data_0

    .line 1545
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1538
    :pswitch_0
    const/16 v0, 0x14

    goto :goto_0

    .line 1540
    :pswitch_1
    const/16 v0, 0x15

    goto :goto_0

    .line 1542
    :pswitch_2
    const/16 v0, 0x17

    goto :goto_0

    .line 1536
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static convertScanModeToHal(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 1523
    packed-switch p0, :pswitch_data_0

    .line 1532
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1525
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1527
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1529
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 1523
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private native createSocketChannelNative(ILjava/lang/String;[BII)I
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothAdapterService("

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

    .line 1550
    return-void
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothAdapterService("

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

    .line 1554
    return-void
.end method

.method public static declared-synchronized getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;
    .locals 4

    .prologue
    .line 104
    const-class v1, Lcom/android/bluetooth/btservice/AdapterService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-boolean v0, v0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    if-nez v0, :cond_0

    .line 105
    const-string v0, "BluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdapterService(): returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :goto_0
    monitor-exit v1

    return-object v0

    .line 109
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v0, :cond_2

    .line 110
    const-string v0, "BluetoothAdapterService"

    const-string v2, "getAdapterService(): service not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :cond_2
    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-boolean v0, v0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    if-eqz v0, :cond_1

    .line 112
    const-string v0, "BluetoothAdapterService"

    const-string v2, "getAdapterService(): service is cleaning up"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native getSocketOptNative(III[B)I
.end method

.method private native initNative()Z
.end method

.method private isAvailable()Z
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native pinReplyNative([BZI[B)Z
.end method

.method private processConnectOtherProfiles(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 13
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "firstProfileStatus"    # I

    .prologue
    const/16 v12, 0x64

    const/4 v11, 0x1

    .line 1231
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v9

    const/16 v10, 0xc

    if-eq v9, v10, :cond_1

    .line 1286
    :cond_0
    :goto_0
    return-void

    .line 1234
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v7

    .line 1235
    .local v7, "hsService":Lcom/android/bluetooth/hfp/HeadsetService;
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v3

    .line 1237
    .local v3, "a2dpService":Lcom/android/bluetooth/a2dp/A2dpService;
    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    .line 1240
    const/4 v5, 0x0

    .line 1241
    .local v5, "hsConnected":Z
    const/4 v1, 0x0

    .line 1242
    .local v1, "a2dpConnected":Z
    invoke-virtual {v3}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 1243
    .local v0, "a2dpConnDevList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {v7}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectedDevices()Ljava/util/List;

    move-result-object v4

    .line 1249
    .local v4, "hfConnDevList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    if-eq v11, p2, :cond_0

    .line 1253
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1254
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 1256
    .local v2, "a2dpDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1258
    const/4 v1, 0x1

    goto :goto_1

    .line 1262
    .end local v2    # "a2dpDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1263
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 1265
    .local v6, "hsDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1267
    const/4 v5, 0x1

    goto :goto_2

    .line 1275
    .end local v6    # "hsDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v7, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    if-lt v9, v12, :cond_8

    if-nez v1, :cond_7

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    if-nez v9, :cond_8

    .line 1278
    :cond_7
    invoke-virtual {v7, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 1280
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    if-lt v9, v12, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getLastConnectedA2dpSepType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    if-eq v9, v11, :cond_0

    if-nez v5, :cond_9

    invoke-virtual {v7, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    if-nez v9, :cond_0

    .line 1284
    :cond_9
    invoke-virtual {v3, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto/16 :goto_0
.end method

.method private processProfileServiceStateChanged(Ljava/lang/String;I)V
    .locals 10
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 202
    .local v0, "doUpdate":Z
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    monitor-enter v7

    .line 203
    :try_start_0
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 204
    .local v5, "prevState":Ljava/lang/Integer;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, p2, :cond_0

    .line 205
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const/4 v0, 0x1

    .line 208
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    const-string v6, "BluetoothAdapterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onProfileServiceStateChange: serviceName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", doUpdate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    if-nez v0, :cond_2

    .line 258
    :cond_1
    :goto_0
    return-void

    .line 208
    .end local v5    # "prevState":Ljava/lang/Integer;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 215
    .restart local v5    # "prevState":Ljava/lang/Integer;
    :cond_2
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    monitor-enter v7

    .line 216
    :try_start_2
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v6}, Lcom/android/bluetooth/btservice/AdapterState;->isTurningOff()Z

    move-result v3

    .line 217
    .local v3, "isTurningOff":Z
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v6}, Lcom/android/bluetooth/btservice/AdapterState;->isTurningOn()Z

    move-result v4

    .line 218
    .local v4, "isTurningOn":Z
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 220
    if-eqz v3, :cond_5

    .line 224
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    monitor-enter v7

    .line 225
    :try_start_3
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 226
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 227
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 228
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v8, 0xa

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v8, v6, :cond_3

    .line 229
    const-string v8, "BluetoothAdapterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Profile still running: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    monitor-exit v7

    goto :goto_0

    .line 233
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 218
    .end local v3    # "isTurningOff":Z
    .end local v4    # "isTurningOn":Z
    :catchall_2
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v6

    .line 233
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v3    # "isTurningOff":Z
    .restart local v4    # "isTurningOn":Z
    :cond_4
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 234
    const-string v6, "BluetoothAdapterService"

    const-string v7, "All profile services stopped..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfilesStarted:Z

    .line 237
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v8, 0x19

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 238
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_5
    if-eqz v4, :cond_1

    .line 242
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    monitor-enter v7

    .line 243
    :try_start_6
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 244
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 245
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 246
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v8, 0xc

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v8, v6, :cond_6

    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDisabledProfiles:Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 248
    const-string v8, "BluetoothAdapterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Profile still not running:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    monitor-exit v7

    goto/16 :goto_0

    .line 252
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catchall_3
    move-exception v6

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v6

    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_7
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 253
    const-string v6, "BluetoothAdapterService"

    const-string v7, "All profile services started."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfilesStarted:Z

    .line 256
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method private processProfileStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profileId"    # I
    .param p3, "newState"    # I
    .param p4, "prevState"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 174
    if-eq p2, v2, :cond_0

    if-ne p2, v3, :cond_1

    :cond_0
    if-ne p3, v2, :cond_1

    .line 176
    const-string v2, "Profile connected. Schedule missing profile connection if any"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0, p1, v3}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setProfileAutoConnectionPriority(Landroid/bluetooth/BluetoothDevice;I)V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    .line 181
    .local v0, "binder":Landroid/bluetooth/IBluetooth$Stub;
    if-eqz v0, :cond_2

    .line 183
    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/bluetooth/IBluetooth$Stub;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_2
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapterService"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static declared-synchronized setAdapterService(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 4
    .param p0, "instance"    # Lcom/android/bluetooth/btservice/AdapterService;

    .prologue
    .line 119
    const-class v1, Lcom/android/bluetooth/btservice/AdapterService;

    monitor-enter v1

    if-eqz p0, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    if-nez v0, :cond_1

    .line 120
    const-string v0, "BluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAdapterService(): set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sput-object p0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 124
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v0, :cond_2

    .line 125
    const-string v0, "BluetoothAdapterService"

    const-string v2, "setAdapterService(): service not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 126
    :cond_2
    :try_start_2
    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-boolean v0, v0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "BluetoothAdapterService"

    const-string v2, "setAdapterService(): service is cleaning up"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private setProfileServiceState([Ljava/lang/Class;I)V
    .locals 11
    .param p1, "services"    # [Ljava/lang/Class;
    .param p2, "state"    # I

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0xa

    .line 456
    if-eq p2, v10, :cond_1

    if-eq p2, v9, :cond_1

    .line 457
    const-string v6, "BluetoothAdapterService"

    const-string v7, "setProfileServiceState(): invalid state...Leaving..."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    return-void

    .line 461
    :cond_1
    const/16 v0, 0xa

    .line 462
    .local v0, "expectedCurrentState":I
    const/16 v3, 0xb

    .line 463
    .local v3, "pendingState":I
    if-ne p2, v9, :cond_2

    .line 464
    const/16 v0, 0xc

    .line 465
    const/16 v3, 0xd

    .line 468
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_0

    .line 469
    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 470
    .local v4, "serviceName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 471
    .local v5, "serviceState":Ljava/lang/Integer;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v0, :cond_4

    .line 472
    const-string v7, "BluetoothAdapterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-ne p2, v9, :cond_3

    const-string v6, "start"

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " service "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ". Invalid state: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    :cond_3
    const-string v6, "stop"

    goto :goto_1

    .line 477
    :cond_4
    if-ne p2, v10, :cond_5

    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDisabledProfiles:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 478
    const-string v6, "BluetoothAdapterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "skipping "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (disabled)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 483
    :cond_5
    const-string v7, "BluetoothAdapterService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-ne p2, v9, :cond_6

    const-string v6, "Stopping"

    :goto_3
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " service "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    new-instance v2, Landroid/content/Intent;

    aget-object v6, p1, v1

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 489
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "action"

    const-string v7, "com.android.bluetooth.btservice.action.STATE_CHANGED"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v6, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 483
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v6, "Starting"

    goto :goto_3
.end method

.method private native setSocketOptNative(III[BI)I
.end method

.method private native sspReplyNative([BIZI)Z
.end method

.method private native startDiscoveryNative()Z
.end method


# virtual methods
.method public autoConnect()V
    .locals 4

    .prologue
    const/16 v2, 0x32

    .line 1168
    const-string v1, "delay auto connect by 500 ms"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 1169
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1171
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1172
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1174
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method native cancelBondNative([B)Z
.end method

.method cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1328
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    .line 1330
    .local v0, "addr":[B
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelBondNative([B)Z

    move-result v1

    return v1
.end method

.method cancelDiscovery()Z
    .locals 2

    .prologue
    .line 1112
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelDiscoveryNative()Z

    move-result v0

    return v0
.end method

.method cleanup()V
    .locals 2

    .prologue
    .line 358
    const-string v0, "cleanup()"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 359
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    if-eqz v0, :cond_0

    .line 360
    const-string v0, "BluetoothAdapterService"

    const-string v1, "*************service already starting to cleanup... Ignoring cleanup request........."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :goto_0
    return-void

    .line 364
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    .line 366
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterState;->doQuit()V

    .line 368
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterState;->cleanup()V

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->doQuit()V

    .line 373
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->cleanup()V

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    if-eqz v0, :cond_3

    .line 377
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->cleanup()V

    .line 380
    :cond_3
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mNativeAvailable:Z

    if-eqz v0, :cond_4

    .line 381
    const-string v0, "BluetoothAdapterService"

    const-string v1, "Cleaning up adapter native...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cleanupNative()V

    .line 383
    const-string v0, "BluetoothAdapterService"

    const-string v1, "Done cleaning up adapter native...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mNativeAvailable:Z

    .line 387
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    if-eqz v0, :cond_5

    .line 388
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->cleanup()V

    .line 391
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

    if-eqz v0, :cond_6

    .line 392
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/JniCallbacks;->cleanup()V

    .line 395
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    .line 396
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 399
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDisabledProfiles:Ljava/util/HashSet;

    if-eqz v0, :cond_8

    .line 400
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDisabledProfiles:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 403
    :cond_8
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->clearAdapterService()V

    .line 405
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    if-eqz v0, :cond_9

    .line 406
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->cleanup()Z

    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    .line 410
    :cond_9
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_a

    .line 411
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 414
    :cond_a
    const-string v0, "cleanup() done"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method configHciSnoopLog(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1510
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->configHciSnoopLogNative(Z)Z

    move-result v0

    return v0
.end method

.method native configHciSnoopLogNative(Z)Z
.end method

.method public connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "firstProfileStatus"    # I

    .prologue
    const/16 v2, 0x1e

    .line 1221
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1223
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1224
    .local v0, "m":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1225
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1226
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1228
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # I
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "port"    # I
    .param p5, "flag"    # I

    .prologue
    .line 1474
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p3}, Lcom/android/bluetooth/Utils;->uuidToByteArray(Landroid/os/ParcelUuid;)[B

    move-result-object v3

    move-object v0, p0

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/btservice/AdapterService;->connectSocketNative([BI[BII)I

    move-result v6

    .line 1477
    .local v6, "fd":I
    if-gez v6, :cond_0

    .line 1478
    const-string v0, "Failed to connect socket"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    .line 1479
    const/4 v0, 0x0

    .line 1481
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v6}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method createBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x1

    .line 1143
    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 1146
    .local v0, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    .line 1147
    const/4 v2, 0x0

    .line 1157
    :goto_0
    return v2

    .line 1152
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelDiscoveryNative()Z

    .line 1154
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1155
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1156
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method native createBondNative([B)Z
.end method

.method createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "type"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "port"    # I
    .param p5, "flag"    # I

    .prologue
    .line 1486
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    invoke-static {p3}, Lcom/android/bluetooth/Utils;->uuidToByteArray(Landroid/os/ParcelUuid;)[B

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/btservice/AdapterService;->createSocketChannelNative(ILjava/lang/String;[BII)I

    move-result v6

    .line 1489
    .local v6, "fd":I
    if-gez v6, :cond_0

    .line 1490
    const-string v0, "Failed to create socket channel"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    .line 1491
    const/4 v0, 0x0

    .line 1493
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v6}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method disable()Z
    .locals 3

    .prologue
    .line 1034
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-string v1, "disable() called..."

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 1038
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1040
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    .line 1041
    const/4 v1, 0x1

    return v1
.end method

.method native disableNative()Z
.end method

.method enable()Z
    .locals 1

    .prologue
    .line 1015
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->enable(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized enable(Z)Z
    .locals 4
    .param p1, "quietMode"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1023
    monitor-enter p0

    :try_start_0
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enable called with quiet mode status =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mQuietmode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 1026
    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mQuietmode:Z

    .line 1027
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1029
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    monitor-exit p0

    return v3

    .line 1023
    .end local v0    # "m":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method native enableNative()Z
.end method

.method public enableNoAutoConnect()Z
    .locals 1

    .prologue
    .line 1019
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->enable(Z)Z

    move-result v0

    return v0
.end method

.method fetchRemoteMasInstances(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1420
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->fetchMasInstances(Landroid/bluetooth/BluetoothDevice;)V

    .line 1422
    const/4 v0, 0x1

    return v0
.end method

.method fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1414
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->fetchUuids(Landroid/bluetooth/BluetoothDevice;)V

    .line 1416
    const/4 v0, 0x1

    return v0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cleanup()V

    .line 1600
    const-class v1, Lcom/android/bluetooth/btservice/AdapterService;

    monitor-enter v1

    .line 1601
    :try_start_0
    sget v0, Lcom/android/bluetooth/btservice/AdapterService;->sRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/bluetooth/btservice/AdapterService;->sRefCount:I

    .line 1602
    const-string v0, "BluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REFCOUNT: FINALIZED. INSTANCE_COUNT= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/bluetooth/btservice/AdapterService;->sRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    monitor-exit v1

    .line 1605
    return-void

    .line 1603
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getAdapterConnectionState()I
    .locals 2

    .prologue
    .line 1131
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getConnectionState()I

    move-result v0

    return v0
.end method

.method native getAdapterPropertiesNative()Z
.end method

.method native getAdapterPropertyNative(I)Z
.end method

.method getAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1045
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const/4 v0, 0x0

    .line 1048
    .local v0, "addrString":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->getAddress()[B

    move-result-object v1

    .line 1049
    .local v1, "address":[B
    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getBondState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1346
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 1348
    .local v0, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v0, :cond_0

    .line 1349
    const/16 v1, 0xa

    .line 1351
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v1

    goto :goto_0
.end method

.method getBondedDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .prologue
    .line 1125
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const-string v0, "Get Bonded Devices being called"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 1127
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method native getDevicePropertyNative([BI)Z
.end method

.method getDiscoverableTimeout()I
    .locals 2

    .prologue
    .line 1093
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getDiscoverableTimeout()I

    move-result v0

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1059
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1067
    :goto_0
    return-object v1

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "BluetoothAdapterService"

    const-string v2, "Unexpected exception while calling getName()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1067
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getProfileConnectionState(I)I
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 1137
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->getProfileConnectionState(I)I

    move-result v0

    return v0
.end method

.method getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1369
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 1371
    .local v0, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1372
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getAlias()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1399
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 1401
    .local v0, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1403
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBluetoothClass()I

    move-result v1

    goto :goto_0
.end method

.method native getRemoteMasInstancesNative([B)Z
.end method

.method getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1355
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 1357
    .local v0, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1358
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method native getRemoteServicesNative([B)Z
.end method

.method getRemoteTrust(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1384
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 1386
    .local v0, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1387
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getTrust()Z

    move-result v1

    goto :goto_0
.end method

.method getRemoteType(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1362
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 1364
    .local v0, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1365
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getDeviceType()I

    move-result v1

    goto :goto_0
.end method

.method getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1407
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 1409
    .local v0, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1410
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    goto :goto_0
.end method

.method getScanMode()I
    .locals 2

    .prologue
    .line 1078
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getScanMode()I

    move-result v0

    return v0
.end method

.method getSocketOpt(III[B)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "channel"    # I
    .param p3, "optionName"    # I
    .param p4, "optionVal"    # [B

    .prologue
    .line 1504
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->getSocketOptNative(III[B)I

    move-result v0

    return v0
.end method

.method getState()I
    .locals 2

    .prologue
    .line 1003
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    if-nez v0, :cond_0

    .line 1006
    const/16 v0, 0xa

    .line 1010
    :goto_0
    return v0

    .line 1009
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getState(): mAdapterProperties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 1010
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v0

    goto :goto_0
.end method

.method getUuids()[Landroid/os/ParcelUuid;
    .locals 2

    .prologue
    .line 1053
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method isDiscovering()Z
    .locals 2

    .prologue
    .line 1119
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method isEnabled()Z
    .locals 2

    .prologue
    .line 997
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuietModeEnabled()Z
    .locals 2

    .prologue
    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Quiet mode Enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mQuietmode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 1162
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mQuietmode:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 280
    const-string v0, "onBind"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 262
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 263
    const-string v0, "onCreate"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 264
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    .line 265
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterProperties;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    .line 266
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-static {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->make(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;)Lcom/android/bluetooth/btservice/AdapterState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    .line 267
    new-instance v0, Lcom/android/bluetooth/btservice/JniCallbacks;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/btservice/JniCallbacks;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterProperties;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

    .line 268
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPowerManager:Landroid/os/PowerManager;

    .line 269
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->initNative()Z

    .line 270
    iput-boolean v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mNativeAvailable:Z

    .line 271
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 273
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterPropertyNative(I)Z

    .line 274
    invoke-virtual {p0, v3}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterPropertyNative(I)Z

    .line 276
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 293
    const-string v0, "****onDestroy()********"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profileId"    # I
    .param p3, "newState"    # I
    .param p4, "prevState"    # I

    .prologue
    .line 163
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 164
    .local v1, "m":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 165
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 166
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 167
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 168
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "prevState"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 170
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 171
    return-void
.end method

.method public onProfileServiceStateChanged(Ljava/lang/String;I)V
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 192
    .local v0, "m":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 193
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 194
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 195
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 285
    const-string v0, "onUnbind, calling cleanup"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cleanup()V

    .line 287
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    .line 289
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method processStart()V
    .locals 5

    .prologue
    .line 297
    const-string v2, "processStart()"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/android/bluetooth/btservice/Config;->getSupportedProfiles()[Ljava/lang/Class;

    move-result-object v1

    .line 300
    .local v1, "supportedProfileServices":[Ljava/lang/Class;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_0
    new-instance v2, Lcom/android/bluetooth/btservice/RemoteDevices;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v2, v3, p0}, Lcom/android/bluetooth/btservice/RemoteDevices;-><init>(Landroid/os/PowerManager;Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    .line 304
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->init(Lcom/android/bluetooth/btservice/RemoteDevices;)V

    .line 306
    const-string v2, "processStart(): Make Bond State Machine"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {p0, v2, v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->make(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;Lcom/android/bluetooth/btservice/RemoteDevices;)Lcom/android/bluetooth/btservice/BondStateMachine;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    .line 309
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, v3, v4}, Lcom/android/bluetooth/btservice/JniCallbacks;->init(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/RemoteDevices;)V

    .line 312
    invoke-static {p0}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterService(Lcom/android/bluetooth/btservice/AdapterService;)V

    .line 314
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->checkHidState()V

    .line 317
    iget-boolean v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfilesStarted:Z

    if-nez v2, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 319
    const/16 v2, 0xc

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->setProfileServiceState([Ljava/lang/Class;I)V

    .line 324
    :goto_1
    return-void

    .line 321
    :cond_1
    const-string v2, "processStart(): Profile Services alreay started"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 322
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    goto :goto_1
.end method

.method registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothCallback;

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1516
    return-void
.end method

.method removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1334
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 1336
    .local v0, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    .line 1337
    :cond_0
    const/4 v2, 0x0

    .line 1342
    :goto_0
    return v2

    .line 1339
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1340
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1341
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1342
    const/4 v2, 0x1

    goto :goto_0
.end method

.method native removeBondNative([B)Z
.end method

.method sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "state"    # I
    .param p4, "prevState"    # I

    .prologue
    .line 1466
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1470
    :goto_0
    return-void

    .line 1468
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterProperties;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    goto :goto_0
.end method

.method native setAdapterPropertyNative(I)Z
.end method

.method native setAdapterPropertyNative(I[B)Z
.end method

.method native setDevicePropertyNative([BI[B)Z
.end method

.method setDiscoverableTimeout(I)Z
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 1099
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setDiscoverableTimeout(I)Z

    move-result v0

    return v0
.end method

.method setName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1071
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "accept"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1450
    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    .line 1453
    .local v1, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_1

    .line 1458
    :cond_0
    :goto_0
    return v2

    .line 1457
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    .line 1458
    .local v0, "addr":[B
    invoke-direct {p0, v0, v2, p2, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sspReplyNative([BIZI)Z

    move-result v2

    goto :goto_0
.end method

.method setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "accept"    # Z
    .param p3, "len"    # I
    .param p4, "passkey"    # [B

    .prologue
    .line 1438
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    .line 1440
    .local v1, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    .line 1441
    :cond_0
    const/4 v2, 0x0

    .line 1445
    :goto_0
    return v2

    .line 1444
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    .line 1445
    .local v0, "addr":[B
    const/4 v2, 0x1

    invoke-static {p4}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v3

    invoke-direct {p0, v0, v2, p2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->sspReplyNative([BIZI)Z

    move-result v2

    goto :goto_0
.end method

.method setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "accept"    # Z
    .param p3, "len"    # I
    .param p4, "pinCode"    # [B

    .prologue
    .line 1426
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    .line 1429
    .local v1, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    .line 1430
    :cond_0
    const/4 v2, 0x0

    .line 1434
    :goto_0
    return v2

    .line 1433
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    .line 1434
    .local v0, "addr":[B
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->pinReplyNative([BZI[B)Z

    move-result v2

    goto :goto_0
.end method

.method setProfileAutoConnectionPriority(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profileId"    # I

    .prologue
    const/16 v3, 0x3e8

    .line 1309
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 1310
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v1

    .line 1311
    .local v1, "hsService":Lcom/android/bluetooth/hfp/HeadsetService;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-eq v3, v2, :cond_0

    .line 1313
    invoke-direct {p0, v1, p1}, Lcom/android/bluetooth/btservice/AdapterService;->adjustOtherHeadsetPriorities(Lcom/android/bluetooth/hfp/HeadsetService;Landroid/bluetooth/BluetoothDevice;)V

    .line 1314
    invoke-virtual {v1, p1, v3}, Lcom/android/bluetooth/hfp/HeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 1325
    .end local v1    # "hsService":Lcom/android/bluetooth/hfp/HeadsetService;
    :cond_0
    :goto_0
    return-void

    .line 1317
    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 1318
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1319
    .local v0, "a2dpService":Lcom/android/bluetooth/a2dp/A2dpService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-eq v3, v2, :cond_0

    .line 1321
    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->adjustOtherSinkPriorities(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/bluetooth/BluetoothDevice;)V

    .line 1322
    invoke-virtual {v0, p1, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1376
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 1378
    .local v0, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1380
    :goto_0
    return v1

    .line 1379
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setAlias(Ljava/lang/String;)V

    .line 1380
    const/4 v1, 0x1

    goto :goto_0
.end method

.method setRemoteTrust(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "trustValue"    # Z

    .prologue
    .line 1391
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 1393
    .local v0, "deviceProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1395
    :goto_0
    return v1

    .line 1394
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setTrust(Z)V

    .line 1395
    const/4 v1, 0x1

    goto :goto_0
.end method

.method setScanMode(II)Z
    .locals 3
    .param p1, "mode"    # I
    .param p2, "duration"    # I

    .prologue
    .line 1084
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    invoke-virtual {p0, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setDiscoverableTimeout(I)Z

    .line 1088
    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterService;->convertScanModeToHal(I)I

    move-result v0

    .line 1089
    .local v0, "newMode":I
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    move-result v1

    return v1
.end method

.method setSocketOpt(III[BI)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "channel"    # I
    .param p3, "optionName"    # I
    .param p4, "optionVal"    # [B
    .param p5, "optionLen"    # I

    .prologue
    .line 1498
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    invoke-direct/range {p0 .. p5}, Lcom/android/bluetooth/btservice/AdapterService;->setSocketOptNative(III[BI)I

    move-result v0

    return v0
.end method

.method startBluetoothDisable()V
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    .line 328
    return-void
.end method

.method startDiscovery()Z
    .locals 2

    .prologue
    .line 1105
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->startDiscoveryNative()Z

    move-result v0

    return v0
.end method

.method stopProfileServices()Z
    .locals 4

    .prologue
    .line 331
    invoke-static {}, Lcom/android/bluetooth/btservice/Config;->getSupportedProfiles()[Ljava/lang/Class;

    move-result-object v0

    .line 332
    .local v0, "supportedProfileServices":[Ljava/lang/Class;
    const-string v1, "BluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mProfilesStarted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfilesStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " supportedProfileServices.length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfilesStarted:Z

    if-eqz v1, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 334
    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->setProfileServiceState([Ljava/lang/Class;I)V

    .line 335
    const/4 v1, 0x1

    .line 338
    :goto_0
    return v1

    .line 337
    :cond_0
    const-string v1, "stopProfileServices(): No profiles services to stop or already stopped."

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 338
    const/4 v1, 0x0

    goto :goto_0
.end method

.method unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothCallback;

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1520
    return-void
.end method

.method updateAdapterState(II)V
    .locals 6
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .prologue
    .line 343
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v3, :cond_1

    .line 344
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 345
    .local v2, "n":I
    const-string v3, "BluetoothAdapterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting updateAdapterState() to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 348
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v3, p1, p2}, Landroid/bluetooth/IBluetoothCallback;->onBluetoothStateChange(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothAdapterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothStateChange() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 353
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 355
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return-void
.end method
