.class public Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;
.super Landroid/app/Service;
.source "MiBleDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;,
        Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$WrapScanDeviceCallback;,
        Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$ScanDeathRecipient;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MATCHED_BLUETOOTH_DEVICE_ADDRESS_TO_UNLOCK:Ljava/lang/String; = "bluetooth_address_to_unlock"

.field private static final MATCHED_BLUETOOTH_UNLOCK_STATUS:Ljava/lang/String; = "bluetooth_unlock_status"

.field private static final PERM_ACCESS_BLE_SETTINGS:Ljava/lang/String; = "miui.permission.ACCESS_BLE_SETTINGS"

.field private static final SERVICE_VERSION:I = 0x6

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppService:Lcom/android/bluetooth/ble/app/IAppService;

.field private mAppServiceConnection:Landroid/content/ServiceConnection;

.field private mBinder:Landroid/os/Binder;

.field private mBleSettings:Lcom/android/bluetooth/ble/app/BleSettings;

.field private mBluetoothAdatper:Landroid/bluetooth/BluetoothAdapter;

.field private mScanCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$WrapScanDeviceCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mScanCallbacks:Ljava/util/Map;

    .line 56
    new-instance v0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$1;-><init>(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mAppServiceConnection:Landroid/content/ServiceConnection;

    .line 339
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->deleteSettings(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Lcom/android/bluetooth/ble/app/IAppService;)Lcom/android/bluetooth/ble/app/IAppService;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;
    .param p1, "x1"    # Lcom/android/bluetooth/ble/app/IAppService;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mAppService:Lcom/android/bluetooth/ble/app/IAppService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Landroid/os/IBinder;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IScanDeviceCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/os/ParcelUuid;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lmiui/bluetooth/ble/IScanDeviceCallback;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->startScanDevice(Landroid/os/IBinder;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IScanDeviceCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Landroid/os/ParcelUuid;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;
    .param p1, "x1"    # Landroid/os/ParcelUuid;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->stopScanDevice(Landroid/os/ParcelUuid;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lmiui/bluetooth/ble/IBleEventCallback;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->registerBleEventCallback(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lmiui/bluetooth/ble/IBleEventCallback;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->unregisterBleEventCallback(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->registerAppForBleEvent(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->unregisterAppForBleEvent(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->getRegisterAppForBleEvent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mScanCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBluetoothAdatper:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->getBoundDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->setSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->getSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->setSettingInteger(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->getSettingInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->getDeviceSettings(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private deleteSettings(Ljava/lang/String;)Z
    .locals 4
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->isInPermissionWhiteList()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const-string v1, "miui.permission.ACCESS_BLE_SETTINGS"

    const-string v2, "permission error: must have permission miui.permission.ACCESS_BLE_SETTINGS"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBleSettings:Lcom/android/bluetooth/ble/app/BleSettings;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/ble/app/BleSettings;->deleteSettings(Ljava/lang/String;)Z

    move-result v0

    .line 178
    .local v0, "ret":Z
    if-nez v0, :cond_1

    .line 179
    sget-object v1, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteSettings failed, device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_1
    return v0
.end method

.method private getBoundDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v3, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBleSettings:Lcom/android/bluetooth/ble/app/BleSettings;

    invoke-virtual {v3}, Lcom/android/bluetooth/ble/app/BleSettings;->getAllSettedDevices()Ljava/util/List;

    move-result-object v0

    .line 116
    .local v0, "devics":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bluetooth_unlock_status"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 117
    .local v2, "unlockEnabled":Z
    :cond_0
    if-eqz v2, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bluetooth_address_to_unlock"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "unlockDevice":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 121
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v1    # "unlockDevice":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private getCallingPackageName()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 249
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "pkgs":[Ljava/lang/String;
    array-length v6, v3

    if-lez v6, :cond_2

    .line 251
    array-length v6, v3

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 252
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 253
    .local v2, "pid":I
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 254
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 255
    .local v5, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 256
    .local v4, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v2, :cond_0

    .line 257
    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 261
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pid":I
    .end local v4    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :goto_0
    return-object v6

    :cond_1
    aget-object v6, v3, v8

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    goto :goto_0

    .line 265
    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Get calling package name failed"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private getDeviceSettings(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->isInPermissionWhiteList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "miui.permission.ACCESS_BLE_SETTINGS"

    const-string v1, "permission error: must have permission miui.permission.ACCESS_BLE_SETTINGS"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBleSettings:Lcom/android/bluetooth/ble/app/BleSettings;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/ble/app/BleSettings;->getDeviceSettings(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getRegisterAppForBleEvent(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBleSettings:Lcom/android/bluetooth/ble/app/BleSettings;

    invoke-static {p2}, Lcom/android/bluetooth/ble/app/BleSettings;->getBleEventSettingKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/ble/app/BleSettings;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSettingInteger(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->isInPermissionWhiteList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    const-string v0, "miui.permission.ACCESS_BLE_SETTINGS"

    const-string v1, "permission error: must have permission miui.permission.ACCESS_BLE_SETTINGS"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBleSettings:Lcom/android/bluetooth/ble/app/BleSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/bluetooth/ble/app/BleSettings;->getSettingInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->isInPermissionWhiteList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    const-string v0, "miui.permission.ACCESS_BLE_SETTINGS"

    const-string v1, "permission error: must have permission miui.permission.ACCESS_BLE_SETTINGS"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBleSettings:Lcom/android/bluetooth/ble/app/BleSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/ble/app/BleSettings;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isInPermissionWhiteList()Z
    .locals 6

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "pkgName":Ljava/lang/String;
    sget-object v0, Lcom/android/bluetooth/ble/app/MiuiBleAppPermissions;->WHITELIST_PACKAGE:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 130
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    .line 132
    .end local v3    # "pkg":Ljava/lang/String;
    :goto_1
    return v5

    .line 129
    .restart local v3    # "pkg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private registerAppForBleEvent(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/bluetooth/ble/app/BleSettings;->getBleEventSettingKey(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBleSettings:Lcom/android/bluetooth/ble/app/BleSettings;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/bluetooth/ble/app/BleSettings;->setSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private registerBleEventCallback(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .locals 1
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "callback"    # Lmiui/bluetooth/ble/IBleEventCallback;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mAppService:Lcom/android/bluetooth/ble/app/IAppService;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mAppService:Lcom/android/bluetooth/ble/app/IAppService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/bluetooth/ble/app/IAppService;->registerBleEventCallback(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v0

    .line 238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSettingInteger(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->isInPermissionWhiteList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    const-string v1, "miui.permission.ACCESS_BLE_SETTINGS"

    const-string v2, "permission error: must have permission miui.permission.ACCESS_BLE_SETTINGS"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBleSettings:Lcom/android/bluetooth/ble/app/BleSettings;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/bluetooth/ble/app/BleSettings;->setSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 158
    .local v0, "ret":Z
    if-nez v0, :cond_1

    .line 159
    sget-object v1, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting failed, key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_1
    return v0
.end method

.method private setSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->isInPermissionWhiteList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const-string v0, "miui.permission.ACCESS_BLE_SETTINGS"

    const-string v1, "permission error: must have permission miui.permission.ACCESS_BLE_SETTINGS"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBleSettings:Lcom/android/bluetooth/ble/app/BleSettings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/ble/app/BleSettings;->setSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private startScanDevice(Landroid/os/IBinder;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IScanDeviceCallback;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "clientId"    # Landroid/os/ParcelUuid;
    .param p3, "property"    # I
    .param p4, "callback"    # Lmiui/bluetooth/ble/IScanDeviceCallback;

    .prologue
    .line 194
    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBluetoothAdatper:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBluetoothAdatper:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    .line 195
    :cond_0
    sget-object v1, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Bluetooth is off!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v1, 0x0

    .line 220
    :goto_0
    return v1

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mScanCallbacks:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$WrapScanDeviceCallback;

    .line 200
    .local v0, "scanCallback":Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$WrapScanDeviceCallback;
    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {v0, p4}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$WrapScanDeviceCallback;->setCallback(Lmiui/bluetooth/ble/IScanDeviceCallback;)V

    .line 202
    const/4 v1, 0x1

    goto :goto_0

    .line 205
    :cond_2
    new-instance v0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$2;

    .end local v0    # "scanCallback":Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$WrapScanDeviceCallback;
    new-instance v4, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$ScanDeathRecipient;

    invoke-direct {v4, p0, p2}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$ScanDeathRecipient;-><init>(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Landroid/os/ParcelUuid;)V

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$2;-><init>(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;Lmiui/bluetooth/ble/IScanDeviceCallback;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;I)V

    .line 217
    .restart local v0    # "scanCallback":Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$WrapScanDeviceCallback;
    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mScanCallbacks:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {v0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$WrapScanDeviceCallback;->linkToDeath()V

    .line 220
    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBluetoothAdatper:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p3}, Lcom/android/bluetooth/ble/property/BlePropertyFactory;->getPropertyServiceUUIDs(I)[Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v1

    goto :goto_0
.end method

.method private stopScanDevice(Landroid/os/ParcelUuid;)V
    .locals 2
    .param p1, "clientId"    # Landroid/os/ParcelUuid;

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mScanCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$WrapScanDeviceCallback;

    .line 225
    .local v0, "scanCallback":Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$WrapScanDeviceCallback;
    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBluetoothAdatper:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 227
    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mScanCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-virtual {v0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$WrapScanDeviceCallback;->unlinkToDeath()V

    .line 232
    :cond_0
    return-void
.end method

.method private unregisterAppForBleEvent(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/bluetooth/ble/app/BleSettings;->getBleEventSettingKey(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBleSettings:Lcom/android/bluetooth/ble/app/BleSettings;

    invoke-virtual {v3, p1, v0}, Lcom/android/bluetooth/ble/app/BleSettings;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "registeredApp":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    const/4 v3, 0x1

    .line 284
    :goto_0
    return v3

    .line 281
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 282
    iget-object v3, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBleSettings:Lcom/android/bluetooth/ble/app/BleSettings;

    invoke-virtual {v3, p1, v0}, Lcom/android/bluetooth/ble/app/BleSettings;->deleteSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 284
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private unregisterBleEventCallback(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .locals 1
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "callback"    # Lmiui/bluetooth/ble/IBleEventCallback;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mAppService:Lcom/android/bluetooth/ble/app/IAppService;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mAppService:Lcom/android/bluetooth/ble/app/IAppService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/bluetooth/ble/app/IAppService;->unregisterBleEventCallback(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v0

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBinder:Landroid/os/Binder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 81
    new-instance v0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService$DeviceManagerBinder;-><init>(Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBinder:Landroid/os/Binder;

    .line 82
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBluetoothAdatper:Landroid/bluetooth/BluetoothAdapter;

    .line 84
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBluetoothAdatper:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bluetooth is not support on this device"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    new-instance v0, Lcom/android/bluetooth/ble/app/BleSettings;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/app/BleSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBleSettings:Lcom/android/bluetooth/ble/app/BleSettings;

    .line 90
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBleSettings:Lcom/android/bluetooth/ble/app/BleSettings;

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/app/BleSettings;->open()V

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/bluetooth/ble/app/MiuiBleAppService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mAppServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 94
    invoke-static {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->loadFromConfig(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 105
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mBleSettings:Lcom/android/bluetooth/ble/app/BleSettings;

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/app/BleSettings;->close()V

    .line 107
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->mAppServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/ble/app/MiBleDeviceManagerService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 108
    invoke-static {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->saveToConfig(Landroid/content/Context;)V

    .line 109
    return-void
.end method
