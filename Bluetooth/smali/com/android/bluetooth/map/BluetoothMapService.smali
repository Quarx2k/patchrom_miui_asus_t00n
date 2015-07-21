.class public Lcom/android/bluetooth/map/BluetoothMapService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "BluetoothMapService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;,
        Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;,
        Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;,
        Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;
    }
.end annotation


# static fields
.field private static final ACCESS_AUTHORITY_CLASS:Ljava/lang/String; = "com.android.settings.bluetooth.BluetoothPermissionRequest"

.field private static final ACCESS_AUTHORITY_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field public static final AUTH_CHALL_ACTION:Ljava/lang/String; = "com.android.bluetooth.map.authchall"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final DEBUG:Z = true

.field private static final DISCONNECT_MAP:I = 0x3

.field public static final EXTRA_SESSION_KEY:Ljava/lang/String; = "com.android.bluetooth.map.sessionkey"

.field private static final MAP_UUIDS:[Landroid/os/ParcelUuid;

.field public static final MAS_INS_INFO:[I

.field public static final MAX_INSTANCES:I = 0x2

.field public static final MESSAGE_TYPE_EMAIL:I = 0x1

.field public static final MESSAGE_TYPE_MMS:I = 0x8

.field public static final MESSAGE_TYPE_SMS:I = 0x6

.field public static final MESSAGE_TYPE_SMS_CDMA:I = 0x4

.field public static final MESSAGE_TYPE_SMS_GSM:I = 0x2

.field public static final MESSAGE_TYPE_SMS_MMS:I = 0xe

.field public static final MSG_OBEX_AUTH_CHALL:I = 0x138b

.field public static final MSG_SERVERSESSION_CLOSE:I = 0x1388

.field public static final MSG_SESSION_DISCONNECTED:I = 0x138a

.field public static final MSG_SESSION_ESTABLISHED:I = 0x1389

.field private static final START_LISTENER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothMapService"

.field public static final THIS_PACKAGE_NAME:Ljava/lang/String; = "com.android.bluetooth"

.field public static final USER_CONFIRM_TIMEOUT_ACTION:Ljava/lang/String; = "com.android.bluetooth.map.userconfirmtimeout"

.field private static final USER_CONFIRM_TIMEOUT_VALUE:I = 0x7530

.field private static final USER_TIMEOUT:I = 0x2

.field public static final VERBOSE:Z = true

.field private static sRemoteDeviceName:Ljava/lang/String;


# instance fields
.field private isWaitingAuthorization:Z

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

.field private mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

.field private mConnSocket:Landroid/bluetooth/BluetoothSocket;

.field mConnectionManager:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;

.field private mIsEmailEnabled:Z

.field private mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mServerSession:Ljavax/obex/ServerSession;

.field private final mSessionStatusHandler:Landroid/os/Handler;

.field private mState:I

.field private removeTimeoutMsg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    .line 135
    new-array v0, v3, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->MAP_UUIDS:[Landroid/os/ParcelUuid;

    .line 150
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->MAS_INS_INFO:[I

    return-void

    :array_0
    .array-data 4
        0xe
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 113
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    .line 115
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 117
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 119
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 121
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 127
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->isWaitingAuthorization:Z

    .line 128
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->removeTimeoutMsg:Z

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsEmailEnabled:Z

    .line 149
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;

    .line 163
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMapService$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    .line 857
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMapService$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    .line 153
    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    .line 154
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;

    .line 156
    const-string v0, "BluetoothMapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothMapService: mIsEmailEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsEmailEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapAuthenticator;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMapAuthenticator;)Lcom/android/bluetooth/map/BluetoothMapAuthenticator;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p1, "x1"    # Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/map/BluetoothMapService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(I)V

    return-void
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 59
    sput-object p0, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->isWaitingAuthorization:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->closeService()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->isWaitingAuthorization:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->removeTimeoutMsg:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->removeTimeoutMsg:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsEmailEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMnsObexClient;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p1, "x1"    # Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    return-object p1
.end method

.method private final closeService()V
    .locals 2

    .prologue
    .line 159
    const-string v0, "BluetoothMapService"

    const-string v1, "closeService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->closeAll()V

    .line 161
    return-void
.end method

.method public static getRemoteDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method private setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 211
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(II)V

    .line 212
    return-void
.end method

.method private declared-synchronized setState(II)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "result"    # I

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    if-eq p1, v3, :cond_0

    .line 216
    const-string v3, "BluetoothMapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Map state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    .line 219
    .local v1, "prevState":I
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    const-string v3, "android.bluetooth.profile.extra.STATE"

    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 224
    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    .line 226
    .local v2, "s":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v2, :cond_0

    .line 227
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v4, 0x9

    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "prevState":I
    .end local v2    # "s":Lcom/android/bluetooth/btservice/AdapterService;
    :cond_0
    monitor-exit p0

    return-void

    .line 215
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public cleanup()Z
    .locals 2

    .prologue
    .line 364
    const-string v0, "BluetoothMapService"

    const-string v1, "cleanup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(II)V

    .line 366
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->closeService()V

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 238
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public disconnectMap(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "result":Z
    const-string v1, "BluetoothMapService"

    const-string v2, "disconnectMap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 258
    :cond_0
    :goto_0
    return v0

    .line 250
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->stopObexServerSessionAll()V

    .line 251
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(II)V

    .line 252
    const/4 v0, 0x1

    .line 253
    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
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
    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-enter p0

    .line 264
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_0
    monitor-exit p0

    .line 268
    return-object v0

    .line 267
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x2

    .line 295
    monitor-enter p0

    .line 296
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getState()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    monitor-exit p0

    .line 299
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 8
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
    .line 272
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v3, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 275
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-enter p0

    .line 276
    if-eqz v0, :cond_2

    .line 277
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 278
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 279
    .local v4, "featureUuids":[Landroid/os/ParcelUuid;
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapService;->MAP_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v4, v7}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 282
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 283
    .local v1, "connectionState":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v7, p1

    if-ge v5, v7, :cond_0

    .line 284
    aget v7, p1, v5

    if-ne v1, v7, :cond_1

    .line 285
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 290
    .end local v1    # "connectionState":I
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "featureUuids":[Landroid/os/ParcelUuid;
    .end local v5    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    .line 291
    return-object v3

    .line 290
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothMapPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 316
    .local v0, "priority":I
    return v0
.end method

.method public getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    return v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 2

    .prologue
    .line 321
    const-string v0, "BluetoothMapService"

    const-string v1, "Inside initBinder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;)V

    return-object v0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothMapPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 308
    const-string v0, "BluetoothMapService"

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

    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method protected start()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 327
    const-string v2, "BluetoothMapService"

    const-string v3, "start()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 329
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->init()V

    .line 338
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 340
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    .line 341
    const-string v2, "BluetoothMapService"

    const-string v3, "Local BT device is not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_1
    return v4

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothMapService"

    const-string v3, "Unable to register map receiver"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 343
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method protected stop()Z
    .locals 3

    .prologue
    .line 351
    const-string v1, "BluetoothMapService"

    const-string v2, "stop()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(II)V

    .line 359
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->closeService()V

    .line 360
    const/4 v1, 0x1

    return v1

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothMapService"

    const-string v2, "Unable to unregister map receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
