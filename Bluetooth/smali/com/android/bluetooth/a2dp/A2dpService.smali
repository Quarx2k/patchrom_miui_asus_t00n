.class public Lcom/android/bluetooth/a2dp/A2dpService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "A2dpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;
    }
.end annotation


# static fields
.field static final A2DP_SOURCE_SINK_UUIDS:[Landroid/os/ParcelUuid;

.field static final A2DP_SOURCE_UUID:[Landroid/os/ParcelUuid;

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "A2dpService"

.field private static sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;


# instance fields
.field private mAvrcp:Lcom/android/bluetooth/a2dp/Avrcp;

.field private mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-array v0, v3, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->A2DP_SOURCE_UUID:[Landroid/os/ParcelUuid;

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->A2DP_SOURCE_SINK_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 251
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/a2dp/A2dpService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpService;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized clearA2dpService()V
    .locals 2

    .prologue
    .line 124
    const-class v0, Lcom/android/bluetooth/a2dp/A2dpService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit v0

    return-void

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;
    .locals 4

    .prologue
    .line 94
    const-class v1, Lcom/android/bluetooth/a2dp/A2dpService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "A2dpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getA2DPService(): returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :goto_0
    monitor-exit v1

    return-object v0

    .line 99
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    if-nez v0, :cond_2

    .line 100
    const-string v0, "A2dpService"

    const-string v2, "getA2dpService(): service is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 101
    :cond_2
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    const-string v0, "A2dpService"

    const-string v2, "getA2dpService(): service is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized setA2dpService(Lcom/android/bluetooth/a2dp/A2dpService;)V
    .locals 4
    .param p0, "instance"    # Lcom/android/bluetooth/a2dp/A2dpService;

    .prologue
    .line 109
    const-class v1, Lcom/android/bluetooth/a2dp/A2dpService;

    monitor-enter v1

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const-string v0, "A2dpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setA2dpService(): set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sput-object p0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 114
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    if-nez v0, :cond_2

    .line 115
    const-string v0, "A2dpService"

    const-string v2, "setA2dpService(): service not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 116
    :cond_2
    :try_start_2
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpService;->sAd2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const-string v0, "A2dpService"

    const-string v2, "setA2dpService(): service is cleaning up"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public adjustAvrcpAbsoluteVolume(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/a2dp/Avrcp;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->adjustVolume(I)V

    .line 233
    return-void
.end method

.method protected cleanup()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->cleanup()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/a2dp/Avrcp;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/a2dp/Avrcp;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/Avrcp;->cleanup()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/a2dp/Avrcp;

    .line 87
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->clearA2dpService()V

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v4, v5}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-nez v4, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v2

    .line 134
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 135
    .local v1, "featureUuids":[Landroid/os/ParcelUuid;
    sget-object v4, Lcom/android/bluetooth/a2dp/A2dpService;->A2DP_SOURCE_UUID:[Landroid/os/ParcelUuid;

    invoke-static {v1, v4}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/bluetooth/a2dp/A2dpService;->A2DP_SOURCE_SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v1, v4}, Landroid/bluetooth/BluetoothUuid;->containsAllUuids([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 137
    const-string v3, "A2dpService"

    const-string v4, "Remote does not have A2dp Sink UUID"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v4, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 142
    .local v0, "connectionState":I
    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    .line 147
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v2, v3, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    move v2, v3

    .line 148
    goto :goto_0
.end method

.method disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 152
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 155
    .local v0, "connectionState":I
    if-eq v0, v4, :cond_0

    if-eq v0, v1, :cond_0

    .line 157
    const/4 v1, 0x0

    .line 161
    :goto_0
    return v1

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v2, v4, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
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
    .line 165
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 175
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 2
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastConnectedA2dpSepType(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 217
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothLastConnectedA2dpSepTypeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 222
    .local v0, "sepType":I
    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "A2dpService"

    return-object v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 196
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 201
    .local v0, "priority":I
    return v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;-><init>(Lcom/android/bluetooth/a2dp/A2dpService;)V

    return-object v0
.end method

.method declared-synchronized isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v0, "A2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isA2dpPlaying("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAvrcpAbsoluteVolumeSupported()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/a2dp/Avrcp;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/Avrcp;->isAbsoluteVolumeSupported()Z

    move-result v0

    return v0
.end method

.method public setAvrcpAbsoluteVolume(I)V
    .locals 1
    .param p1, "volume"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/a2dp/Avrcp;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->setAbsoluteVolume(I)V

    .line 237
    return-void
.end method

.method public setAvrcpAudioState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/a2dp/Avrcp;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->setA2dpAudioState(I)V

    .line 241
    return-void
.end method

.method public setLastConnectedA2dpSepType(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sepType"    # I

    .prologue
    .line 205
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v0, "A2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastConnectedA2dpSepType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothLastConnectedA2dpSepTypeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 180
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isConnectedSrc(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_0

    .line 185
    const-string v0, "A2dpService"

    const-string v1, "Peer Device is SRC Ignore AutoConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, 0x0

    .line 192
    :goto_0
    return v0

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 191
    const-string v0, "A2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected start()Z
    .locals 1

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->make(Landroid/content/Context;)Lcom/android/bluetooth/a2dp/Avrcp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/a2dp/Avrcp;

    .line 64
    invoke-static {p0, p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->make(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/content/Context;)Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 65
    invoke-static {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->setA2dpService(Lcom/android/bluetooth/a2dp/A2dpService;)V

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method protected stop()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachine:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->doQuit()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/a2dp/Avrcp;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAvrcp:Lcom/android/bluetooth/a2dp/Avrcp;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/Avrcp;->doQuit()V

    .line 76
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
