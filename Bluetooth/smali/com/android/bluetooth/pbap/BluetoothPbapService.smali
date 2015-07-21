.class public Lcom/android/bluetooth/pbap/BluetoothPbapService;
.super Landroid/app/Service;
.source "BluetoothPbapService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;
    }
.end annotation


# static fields
.field private static final ACCESS_AUTHORITY_CLASS:Ljava/lang/String; = "com.android.settings.bluetooth.BluetoothPermissionRequest"

.field private static final ACCESS_AUTHORITY_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field public static final AUTH_CANCELLED_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authcancelled"

.field public static final AUTH_CHALL_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authchall"

.field public static final AUTH_RESPONSE_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authresponse"

.field private static final AUTH_TIMEOUT:I = 0x3

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final DEBUG:Z = true

.field public static final EXTRA_SESSION_KEY:Ljava/lang/String; = "com.android.bluetooth.pbap.sessionkey"

.field public static final MSG_OBEX_AUTH_CHALL:I = 0x138b

.field public static final MSG_SERVERSESSION_CLOSE:I = 0x1388

.field public static final MSG_SESSION_DISCONNECTED:I = 0x138a

.field public static final MSG_SESSION_ESTABLISHED:I = 0x1389

.field private static final NOTIFICATION_ID_ACCESS:I = -0xf4241

.field private static final NOTIFICATION_ID_AUTH:I = -0xf4242

.field private static final START_LISTENER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapService"

.field public static final THIS_PACKAGE_NAME:Ljava/lang/String; = "com.android.bluetooth"

.field public static final USER_CONFIRM_TIMEOUT_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.userconfirmtimeout"

.field private static final USER_CONFIRM_TIMEOUT_VALUE:I = 0x7530

.field private static final USER_TIMEOUT:I = 0x2

.field public static final VERBOSE:Z

.field private static sLocalPhoneName:Ljava/lang/String;

.field private static sLocalPhoneNum:Ljava/lang/String;

.field private static sRemoteDeviceName:Ljava/lang/String;


# instance fields
.field private isWaitingAuthorization:Z

.field private mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

.field private final mBinder:Landroid/bluetooth/IBluetoothPbap$Stub;

.field private mConnSocket:Landroid/bluetooth/BluetoothSocket;

.field private mFullWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHasStarted:Z

.field private volatile mInterrupted:Z

.field private mPbapServer:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mServerSession:Ljavax/obex/ServerSession;

.field private mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private final mSessionStatusHandler:Landroid/os/Handler;

.field private mStartId:I

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 160
    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneNum:Ljava/lang/String;

    .line 162
    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    .line 164
    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 146
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    .line 148
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    .line 152
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 154
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 156
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 158
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 166
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 168
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHasStarted:Z

    .line 174
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mStartId:I

    .line 178
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->isWaitingAuthorization:Z

    .line 607
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    .line 759
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mBinder:Landroid/bluetooth/IBluetoothPbap$Stub;

    .line 186
    iput v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    .line 187
    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->startRfcommSocketListener()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/pbap/BluetoothPbapService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->removePbapNotification(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->notifyAuthCancelled()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->createPbapNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 70
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Ljavax/obex/ServerSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljavax/obex/ServerSession;)Ljavax/obex/ServerSession;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;
    .param p1, "x1"    # Ljavax/obex/ServerSession;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeConnectionSocket()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->initSocket()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/pbap/BluetoothPbapService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothSocket;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 70
    sput-object p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->acquirePbapWakeLock()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/bluetooth/pbap/BluetoothPbapService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->isWaitingAuthorization:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->releasePbapWakeLock()V

    return-void
.end method

.method private acquirePbapWakeLock()V
    .locals 3

    .prologue
    .line 731
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 732
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 733
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "StartingObexPbapTransaction"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 735
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 737
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 742
    .end local v0    # "pm":Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 740
    :cond_0
    const-string v1, "BluetoothPbapService"

    const-string v2, "Pbap:mFullWakeLock already acquired"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final declared-synchronized closeConnectionSocket()V
    .locals 4

    .prologue
    .line 413
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 415
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 416
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v1, "BluetoothPbapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close Connection Socket error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 413
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final declared-synchronized closeServerSocket()V
    .locals 4

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 404
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 405
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v1, "BluetoothPbapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close Server Socket error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 401
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final closeService()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 427
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mInterrupted:Z

    .line 428
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeServerSocket()V

    .line 430
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    if-eqz v1, :cond_0

    .line 432
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->shutdown()V

    .line 433
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->join()V

    .line 434
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_1

    .line 441
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    .line 442
    iput-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 445
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeConnectionSocket()V

    .line 447
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHasStarted:Z

    .line 448
    iget v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mStartId:I

    if-eq v1, v4, :cond_2

    iget v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mStartId:I

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopSelfResult(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 450
    iput v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mStartId:I

    .line 453
    :cond_2
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string v1, "BluetoothPbapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAcceptThread close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createPbapNotification(Ljava/lang/String;)V
    .locals 11
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 679
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 683
    .local v3, "nm":Landroid/app/NotificationManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 684
    .local v0, "clickIntent":Landroid/content/Intent;
    const-class v5, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;

    invoke-virtual {v0, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 685
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 686
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 691
    .local v1, "deleteIntent":Landroid/content/Intent;
    const-class v5, Lcom/android/bluetooth/pbap/BluetoothPbapReceiver;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 693
    const/4 v4, 0x0

    .line 694
    .local v4, "notification":Landroid/app/Notification;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 696
    .local v2, "name":Ljava/lang/String;
    const-string v5, "com.android.bluetooth.pbap.authchall"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 697
    const-string v5, "com.android.bluetooth.pbap.authcancelled"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    new-instance v4, Landroid/app/Notification;

    .end local v4    # "notification":Landroid/app/Notification;
    const v5, 0x1080080

    const v6, 0x7f040074

    invoke-virtual {p0, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 700
    .restart local v4    # "notification":Landroid/app/Notification;
    const v5, 0x7f040075

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f040076

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v9, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v4, p0, v5, v6, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 704
    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 705
    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 706
    iput v10, v4, Landroid/app/Notification;->defaults:I

    .line 707
    invoke-static {p0, v9, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 708
    const v5, -0xf4242

    invoke-virtual {v3, v5, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 710
    :cond_0
    return-void
.end method

.method public static getLocalPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 723
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocalPhoneNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public static getRemoteDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 727
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method private final initSocket()Z
    .locals 8

    .prologue
    .line 347
    const/4 v3, 0x0

    .line 348
    .local v3, "initSocketOK":Z
    const/16 v0, 0xa

    .line 351
    .local v0, "CREATE_RETRY_TIME":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v5, 0xa

    if-ge v2, v5, :cond_0

    iget-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mInterrupted:Z

    if-nez v5, :cond_0

    .line 352
    const/4 v3, 0x1

    .line 356
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v6, "OBEX Phonebook Access Server"

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-virtual {v7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/bluetooth/BluetoothAdapter;->listenUsingEncryptedRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_1
    if-nez v3, :cond_0

    .line 365
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v5, :cond_2

    .line 384
    :cond_0
    :goto_2
    iget-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mInterrupted:Z

    if-eqz v5, :cond_1

    .line 385
    const/4 v3, 0x0

    .line 387
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeServerSocket()V

    .line 390
    :cond_1
    if-eqz v3, :cond_4

    .line 396
    :goto_3
    return v3

    .line 359
    :catch_0
    move-exception v1

    .line 360
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "BluetoothPbapService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error create RfcommServerSocket "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v3, 0x0

    goto :goto_1

    .line 366
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    .line 367
    .local v4, "state":I
    const/16 v5, 0xb

    if-eq v4, v5, :cond_3

    const/16 v5, 0xc

    if-eq v4, v5, :cond_3

    .line 369
    const-string v5, "BluetoothPbapService"

    const-string v6, "initServerSocket failed as BT is (being) turned off"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 374
    :cond_3
    const-wide/16 v5, 0x12c

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 375
    :catch_1
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v5, "BluetoothPbapService"

    const-string v6, "socketAcceptThread thread was interrupted (3)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 394
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "state":I
    :cond_4
    const-string v5, "BluetoothPbapService"

    const-string v6, "Error to create listening socket after 10 try"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private notifyAuthCancelled()V
    .locals 3

    .prologue
    .line 512
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    monitor-enter v1

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setCancelled(Z)V

    .line 514
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 515
    monitor-exit v1

    .line 516
    return-void

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyAuthKeyInput(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 502
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    monitor-enter v1

    .line 503
    if-eqz p1, :cond_0

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setSessionKey(Ljava/lang/String;)V

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setChallenged(Z)V

    .line 507
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 508
    monitor-exit v1

    .line 509
    return-void

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x2

    .line 232
    const-string v9, "action"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "action":Ljava/lang/String;
    const-string v9, "BluetoothPbapService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "action: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v9, "android.bluetooth.adapter.extra.STATE"

    const/high16 v10, -0x80000000

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 238
    .local v7, "state":I
    const/4 v4, 0x1

    .line 239
    .local v4, "removeTimeoutMsg":Z
    const-string v9, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 240
    const/16 v9, 0xd

    if-ne v7, v9, :cond_3

    .line 242
    iget-object v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v9, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 243
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v8, "timeoutIntent":Landroid/content/Intent;
    const-string v9, "com.android.settings"

    const-string v10, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v9, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v8, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    const-string v9, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v8, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 251
    .end local v8    # "timeoutIntent":Landroid/content/Intent;
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V

    .line 311
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 312
    iget-object v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v9, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 314
    :cond_2
    :goto_1
    return-void

    .line 253
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 255
    :cond_4
    const-string v9, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->isWaitingAuthorization:Z

    if-eqz v9, :cond_7

    .line 257
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 259
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v9, :cond_5

    if-nez v2, :cond_6

    .line 260
    :cond_5
    const-string v9, "BluetoothPbapService"

    const-string v10, "Unexpected error!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 264
    :cond_6
    const-string v9, "BluetoothPbapService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACL disconnected for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 267
    new-instance v1, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, "cancelIntent":Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 269
    const-string v9, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v1, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;)V

    .line 272
    iput-boolean v13, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->isWaitingAuthorization:Z

    .line 273
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V

    goto :goto_0

    .line 275
    .end local v1    # "cancelIntent":Landroid/content/Intent;
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_7
    const-string v9, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 276
    const-string v9, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {p1, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 279
    .local v5, "requestType":I
    iget-boolean v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->isWaitingAuthorization:Z

    if-eqz v9, :cond_2

    if-ne v5, v12, :cond_2

    .line 285
    iput-boolean v13, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->isWaitingAuthorization:Z

    .line 287
    const-string v9, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    invoke-virtual {p1, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 291
    :try_start_0
    iget-object v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v9, :cond_8

    .line 292
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->startObexServerSession()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 296
    :catch_0
    move-exception v3

    .line 297
    .local v3, "ex":Ljava/io/IOException;
    const-string v9, "BluetoothPbapService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Caught the error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 294
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_8
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 300
    :cond_9
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V

    goto/16 :goto_0

    .line 302
    .end local v5    # "requestType":I
    :cond_a
    const-string v9, "com.android.bluetooth.pbap.authresponse"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 303
    const-string v9, "com.android.bluetooth.pbap.sessionkey"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 304
    .local v6, "sessionkey":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->notifyAuthKeyInput(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 305
    .end local v6    # "sessionkey":Ljava/lang/String;
    :cond_b
    const-string v9, "com.android.bluetooth.pbap.authcancelled"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 306
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->notifyAuthCancelled()V

    goto/16 :goto_0

    .line 308
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private releasePbapWakeLock()V
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 746
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 752
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 754
    :cond_1
    return-void
.end method

.method private removePbapNotification(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 713
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 715
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 716
    return-void
.end method

.method private setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 655
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(II)V

    .line 656
    return-void
.end method

.method private declared-synchronized setState(II)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "result"    # I

    .prologue
    .line 659
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    if-eq p1, v3, :cond_0

    .line 660
    const-string v3, "BluetoothPbapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pbap state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

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

    .line 662
    iget v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    .line 663
    .local v1, "prevState":I
    iput p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    .line 664
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 665
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.bluetooth.pbap.intent.PBAP_PREVIOUS_STATE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 666
    const-string v3, "android.bluetooth.pbap.intent.PBAP_STATE"

    iget v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 667
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 668
    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 669
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    .line 670
    .local v2, "s":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v2, :cond_0

    .line 671
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x6

    iget v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "prevState":I
    .end local v2    # "s":Lcom/android/bluetooth/btservice/AdapterService;
    :cond_0
    monitor-exit p0

    return-void

    .line 659
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private final startObexServerSession()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 459
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneNum:Ljava/lang/String;

    .line 461
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    .line 462
    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    const v2, 0x7f040079

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    .line 467
    :cond_0
    new-instance v2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    .line 468
    monitor-enter p0

    .line 469
    :try_start_0
    new-instance v2, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    .line 470
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setChallenged(Z)V

    .line 471
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setCancelled(Z)V

    .line 472
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    new-instance v1, Lcom/android/bluetooth/pbap/BluetoothPbapRfcommTransport;

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapRfcommTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 474
    .local v1, "transport":Lcom/android/bluetooth/pbap/BluetoothPbapRfcommTransport;
    new-instance v2, Ljavax/obex/ServerSession;

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-direct {v2, v1, v3, v4}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V

    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 475
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(I)V

    .line 479
    return-void

    .line 472
    .end local v1    # "transport":Lcom/android/bluetooth/pbap/BluetoothPbapRfcommTransport;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private startRfcommSocketListener()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;Lcom/android/bluetooth/pbap/BluetoothPbapService$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    .line 339
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    const-string v1, "BluetoothPbapAcceptThread"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->setName(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->start()V

    .line 342
    :cond_0
    return-void
.end method

.method private stopObexServerSession()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 484
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v0}, Ljavax/obex/ServerSession;->close()V

    .line 486
    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 489
    :cond_0
    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    .line 491
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeConnectionSocket()V

    .line 495
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->startRfcommSocketListener()V

    .line 498
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(I)V

    .line 499
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mBinder:Landroid/bluetooth/IBluetoothPbap$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 191
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 194
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mInterrupted:Z

    .line 195
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 197
    iget-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHasStarted:Z

    if-nez v1, :cond_0

    .line 198
    iput-boolean v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHasStarted:Z

    .line 200
    invoke-static {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->init(Landroid/content/Context;)V

    .line 201
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 202
    .local v0, "state":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    .end local v0    # "state":I
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 320
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 321
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(II)V

    .line 322
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V

    .line 323
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 326
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 213
    iput p3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mStartId:I

    .line 214
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 215
    const-string v0, "BluetoothPbapService"

    const-string v1, "Stopping BluetoothPbapService: device does not have BT or device is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V

    .line 227
    :cond_0
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 222
    :cond_1
    if-eqz p1, :cond_0

    .line 223
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->parseIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method
